package stdgo._internal.go.printer;
function _runcheck(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _source:stdgo.GoString, _golden:stdgo.GoString, _mode:stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode):Void {
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_source?.__copy__()), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        var __tmp__ = stdgo._internal.go.printer.Printer__format._format(_src, _mode), _res:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        if (stdgo._internal.go.printer.Printer__update._update.value) {
            {
                var _err = (stdgo._internal.os.Os_writefile.writeFile(_golden?.__copy__(), _res, (420u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.error(stdgo.Go.toInterface(_err));
                };
            };
            return;
        };
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_golden?.__copy__()), _gld:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
            return;
        };
        {
            var _err = (stdgo._internal.go.printer.Printer__checkequal._checkEqual(_source?.__copy__(), _golden?.__copy__(), _res, _gld) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
                return;
            };
        };
        if ((_mode & (8u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode))) {
            {
                var __tmp__ = stdgo._internal.go.printer.Printer__format._format(_gld, _mode);
                _res = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
                return;
            };
            {
                var _err = (stdgo._internal.go.printer.Printer__checkequal._checkEqual(_golden?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("format(%s)" : stdgo.GoString), stdgo.Go.toInterface(_golden))?.__copy__(), _gld, _res) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("golden is not idempotent: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
