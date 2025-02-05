package stdgo._internal.go.printer;
function _normalizedNumber(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> {
        if ((((@:checkr _lit ?? throw "null pointer dereference").kind != ((5 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _lit ?? throw "null pointer dereference").kind != ((6 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _lit ?? throw "null pointer dereference").kind != (7 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
            return _lit;
        };
        if ((((@:checkr _lit ?? throw "null pointer dereference").value.length) < (2 : stdgo.GoInt) : Bool)) {
            return _lit;
        };
        var _x = ((@:checkr _lit ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (_x.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString);
                    if (__value__ == (("0X" : stdgo.GoString))) {
                        _x = (("0x" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        {
                            var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_x?.__copy__(), (80 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("p" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                            };
                        };
                        break;
                    } else if (__value__ == (("0x" : stdgo.GoString))) {
                        var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_x?.__copy__(), (80 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_i == ((-1 : stdgo.GoInt))) {
                            return _lit;
                        };
                        _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("p" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0O" : stdgo.GoString))) {
                        _x = (("0o" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0o" : stdgo.GoString))) {
                        return _lit;
                        break;
                    } else if (__value__ == (("0B" : stdgo.GoString))) {
                        _x = (("0b" : stdgo.GoString) + (_x.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                        break;
                    } else if (__value__ == (("0b" : stdgo.GoString))) {
                        return _lit;
                        break;
                    } else {
                        {
                            var _i = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_x?.__copy__(), (69 : stdgo.GoUInt8)) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                _x = (((_x.__slice__(0, _i) : stdgo.GoString) + ("e" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_x.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                break;
                            };
                        };
                        if (((_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (105 : stdgo.GoUInt8)) && !stdgo._internal.strings.Strings_containsany.containsAny(_x?.__copy__(), (".e" : stdgo.GoString)) : Bool)) {
                            _x = stdgo._internal.strings.Strings_trimleft.trimLeft(_x?.__copy__(), ("0_" : stdgo.GoString))?.__copy__();
                            if (_x == (("i" : stdgo.GoString))) {
                                _x = ("0i" : stdgo.GoString);
                            };
                        };
                    };
                };
                break;
            };
        };
        return (stdgo.Go.setRef(({ valuePos : (@:checkr _lit ?? throw "null pointer dereference").valuePos, kind : (@:checkr _lit ?? throw "null pointer dereference").kind, value : _x?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    }
