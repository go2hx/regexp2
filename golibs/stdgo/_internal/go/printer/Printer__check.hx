package stdgo._internal.go.printer;
function _check(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode):Void {
        var _cc = (new stdgo.Chan<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                stdgo._internal.go.printer.Printer__runcheck._runcheck(_t, _source?.__copy__(), _golden?.__copy__(), _mode);
                _cc.__send__((0 : stdgo.GoInt));
            };
            a();
        }));
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_duration.Duration)) != null && stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_duration.Duration)).__get__();
                        {
                            @:check2r _t.errorf(("%s: running too slowly" : stdgo.GoString), stdgo.Go.toInterface(_source));
                        };
                    };
                } else if (_cc != null && _cc.__isGet__()) {
                    __select__ = false;
                    {
                        _cc.__get__();
                        {};
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
