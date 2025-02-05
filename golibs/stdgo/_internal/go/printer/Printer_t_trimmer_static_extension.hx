package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_trimmer_asInterface) class T_trimmer_static_extension {
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _m = (0 : stdgo.GoInt);
        var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        for (__key__ => __value__ in _data) {
            _b = __value__;
            _n = __key__;
            if (_b == ((11 : stdgo.GoUInt8))) {
                _b = (9 : stdgo.GoUInt8);
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._state;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    {
                        final __value__ = _b;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                            (@:checkr _p ?? throw "null pointer dereference")._space = ((@:checkr _p ?? throw "null pointer dereference")._space.__append__(_b));
                        } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            @:check2r _p._resetSpace();
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write(stdgo._internal.go.printer.Printer__anewline._aNewline);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((@:checkr _p ?? throw "null pointer dereference")._space);
                                _err = @:tmpset0 __tmp__._1;
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._state = (1 : stdgo.GoInt);
                            _m = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((@:checkr _p ?? throw "null pointer dereference")._space);
                                _err = @:tmpset0 __tmp__._1;
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._state = (2 : stdgo.GoInt);
                            _m = _n;
                        };
                    };
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    if (_b == ((255 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                            _err = @:tmpset0 __tmp__._1;
                        };
                        @:check2r _p._resetSpace();
                    };
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    {
                        final __value__ = _b;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = @:tmpset0 __tmp__._1;
                            };
                            @:check2r _p._resetSpace();
                            (@:checkr _p ?? throw "null pointer dereference")._space = ((@:checkr _p ?? throw "null pointer dereference")._space.__append__(_b));
                        } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = @:tmpset0 __tmp__._1;
                            };
                            @:check2r _p._resetSpace();
                            if (_err == null) {
                                {
                                    var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write(stdgo._internal.go.printer.Printer__anewline._aNewline);
                                    _err = @:tmpset0 __tmp__._1;
                                };
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = @:tmpset0 __tmp__._1;
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._state = (1 : stdgo.GoInt);
                            _m = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                    };
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        _n = (_data.length);
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._state;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                {
                    var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                @:check2r _p._resetSpace();
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _resetSpace( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._state = (0 : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._space = ((@:checkr _p ?? throw "null pointer dereference")._space.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
