package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function _print( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _x:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        if (!stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _x?.__copy__())) {
            @:check2r _p._printf(("nil" : stdgo.GoString));
            return;
        };
        {
            final __value__ = _x.kind();
            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                @:check2r _p._print(_x.elem()?.__copy__());
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                @:check2r _p._printf(("%s (len = %d) {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()), stdgo.Go.toInterface(_x.len()));
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                    @:check2r _p._printf(("\n" : stdgo.GoString));
                    for (__24 => _key in _x.mapKeys()) {
                        @:check2r _p._print(_key?.__copy__());
                        @:check2r _p._printf((": " : stdgo.GoString));
                        @:check2r _p._print(_x.mapIndex(_key?.__copy__())?.__copy__());
                        @:check2r _p._printf(("\n" : stdgo.GoString));
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                };
                @:check2r _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                @:check2r _p._printf(("*" : stdgo.GoString));
                var _ptr = (_x.interface_() : stdgo.AnyInterface);
                {
                    var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._ptrmap != null && (@:checkr _p ?? throw "null pointer dereference")._ptrmap.exists(_ptr) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._ptrmap[_ptr], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _line:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                    if (_exists) {
                        @:check2r _p._printf(("(obj @ %d)" : stdgo.GoString), stdgo.Go.toInterface(_line));
                    } else {
                        (@:checkr _p ?? throw "null pointer dereference")._ptrmap[_ptr] = (@:checkr _p ?? throw "null pointer dereference")._line;
                        @:check2r _p._print(_x.elem()?.__copy__());
                    };
                };
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                @:check2r _p._printf(("%s {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()));
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                    @:check2r _p._printf(("\n" : stdgo.GoString));
                    {
                        var __0 = (0 : stdgo.GoInt), __1 = (_x.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            @:check2r _p._printf(("%d: " : stdgo.GoString), stdgo.Go.toInterface(_i));
@:check2r _p._print(_x.index(_i).__copy__());
@:check2r _p._printf(("\n" : stdgo.GoString));
                            _i++;
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                };
                @:check2r _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_x.interface_() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
                    }, _s = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        @:check2r _p._printf(("%#q" : stdgo.GoString), stdgo.Go.toInterface(_s));
                        return;
                    };
                };
                @:check2r _p._printf(("%s (len = %d) {" : stdgo.GoString), stdgo.Go.toInterface(_x.type()), stdgo.Go.toInterface(_x.len()));
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                    @:check2r _p._printf(("\n" : stdgo.GoString));
                    {
                        var __0 = (0 : stdgo.GoInt), __1 = (_x.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            @:check2r _p._printf(("%d: " : stdgo.GoString), stdgo.Go.toInterface(_i));
@:check2r _p._print(_x.index(_i).__copy__());
@:check2r _p._printf(("\n" : stdgo.GoString));
                            _i++;
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                };
                @:check2r _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = (_x.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                @:check2r _p._printf(("%s {" : stdgo.GoString), stdgo.Go.toInterface(_t));
                (@:checkr _p ?? throw "null pointer dereference")._indent++;
                var _first = (true : Bool);
                {
                    var __0 = (0 : stdgo.GoInt), __1 = (_t.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    while ((_i < _n : Bool)) {
                        {
                            var _name = (_t.field(_i).name.__copy__() : stdgo.GoString);
                            if (stdgo._internal.go.ast.Ast_isexported.isExported(_name.__copy__())) {
                                var _value = (_x.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                                if ((((@:checkr _p ?? throw "null pointer dereference")._filter == null) || (@:checkr _p ?? throw "null pointer dereference")._filter(_name.__copy__(), _value.__copy__()) : Bool)) {
                                    if (_first) {
                                        @:check2r _p._printf(("\n" : stdgo.GoString));
                                        _first = false;
                                    };
                                    @:check2r _p._printf(("%s: " : stdgo.GoString), stdgo.Go.toInterface(_name));
                                    @:check2r _p._print(_value.__copy__());
                                    @:check2r _p._printf(("\n" : stdgo.GoString));
                                };
                            };
                        };
                        _i++;
                    };
                };
                (@:checkr _p ?? throw "null pointer dereference")._indent--;
                @:check2r _p._printf(("}" : stdgo.GoString));
            } else {
                var _v = (_x.interface_() : stdgo.AnyInterface);
                {
                    final __type__ = _v;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                        var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                        @:check2r _p._printf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_v));
                        return;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_pos.Pos))) {
                        var _v:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value;
                        if (((@:checkr _p ?? throw "null pointer dereference")._fset != null && (((@:checkr _p ?? throw "null pointer dereference")._fset : Dynamic).__nil__ == null || !((@:checkr _p ?? throw "null pointer dereference")._fset : Dynamic).__nil__))) {
                            @:check2r _p._printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r (@:checkr _p ?? throw "null pointer dereference")._fset.position(_v))));
                            return;
                        };
                    };
                };
                @:check2r _p._printf(("%v" : stdgo.GoString), _v);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _printf( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_p), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.ast.Ast_t_localerror.T_localError(_err) : stdgo._internal.go.ast.Ast_t_localerror.T_localError)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        for (_i => _b in _data) {
            if (_b == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_n, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _n = (_n + (_m) : stdgo.GoInt);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                (@:checkr _p ?? throw "null pointer dereference")._line++;
            } else if ((@:checkr _p ?? throw "null pointer dereference")._last == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _p ?? throw "null pointer dereference")._output, ("%6d  " : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._line));
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
                {
                    var _j = ((@:checkr _p ?? throw "null pointer dereference")._indent : stdgo.GoInt);
                    while ((_j > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write(stdgo._internal.go.ast.Ast__indent._indent);
                            _err = @:tmpset0 __tmp__._1;
                        };
if (_err != null) {
                            return { _0 : _n, _1 : _err };
                        };
                        _j--;
                    };
                };
            };
            (@:checkr _p ?? throw "null pointer dereference")._last = _b;
        };
        if (((_data.length) > _n : Bool)) {
            {
                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _m = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_m) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : _err };
    }
}
