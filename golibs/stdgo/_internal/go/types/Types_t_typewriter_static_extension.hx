package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_typeWriter_asInterface) class T_typeWriter_static_extension {
    @:keep
    @:tdfield
    static public function _signature( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _sig:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (@:check2r @:check2r _sig.typeParams().len() != ((0 : stdgo.GoInt))) {
                if (((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__))) {
                    stdgo._internal.go.types.Types__assert._assert(((@:checkr _w ?? throw "null pointer dereference")._tparams == null || ((@:checkr _w ?? throw "null pointer dereference")._tparams : Dynamic).__nil__));
                    (@:checkr _w ?? throw "null pointer dereference")._tparams = @:check2r _sig.typeParams();
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                (@:checkr _w ?? throw "null pointer dereference")._tparams = null;
                            };
                            a();
                        }) });
                    };
                };
                @:check2r _w._tParamList(@:check2r @:check2r _sig.typeParams()._list());
            };
            @:check2r _w._tuple((@:checkr _sig ?? throw "null pointer dereference")._params, (@:checkr _sig ?? throw "null pointer dereference")._variadic);
            var _n = (@:check2r (@:checkr _sig ?? throw "null pointer dereference")._results.len() : stdgo.GoInt);
            if (_n == ((0 : stdgo.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            @:check2r _w._byte((32 : stdgo.GoUInt8));
            if (((_n == (1 : stdgo.GoInt)) && ((((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__)) || ((@:checkr (@:checkr (@:checkr _sig ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._object._name == (stdgo.Go.str() : stdgo.GoString)) : Bool)) : Bool)) {
                @:check2r _w._typ((@:checkr (@:checkr (@:checkr _sig ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._object._typ);
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            @:check2r _w._tuple((@:checkr _sig ?? throw "null pointer dereference")._results, false);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tuple( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _tup:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        @:check2r _w._byte((40 : stdgo.GoUInt8));
        if ((_tup != null && ((_tup : Dynamic).__nil__ == null || !(_tup : Dynamic).__nil__))) {
            for (_i => _v in (@:checkr _tup ?? throw "null pointer dereference")._vars) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _w._byte((44 : stdgo.GoUInt8));
                };
                if (((((@:checkr _w ?? throw "null pointer dereference")._ctxt == null || ((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__) && (@:checkr _v ?? throw "null pointer dereference")._object._name != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && (@:checkr _w ?? throw "null pointer dereference")._paramNames : Bool)) {
                    @:check2r _w._string((@:checkr _v ?? throw "null pointer dereference")._object._name?.__copy__());
                    @:check2r _w._byte((32 : stdgo.GoUInt8));
                };
                var _typ = ((@:checkr _v ?? throw "null pointer dereference")._object._typ : stdgo._internal.go.types.Types_type_.Type_);
                if ((_variadic && (_i == (((@:checkr _tup ?? throw "null pointer dereference")._vars.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                        }, _s = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            @:check2r _w._string(("..." : stdgo.GoString));
                            _typ = (@:checkr _s ?? throw "null pointer dereference")._elem;
                        } else {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                                }, _t = __tmp__._0, __0 = __tmp__._1;
                                if (((_t == null || (_t : Dynamic).__nil__) || ((@:checkr _t ?? throw "null pointer dereference")._kind != (17 : stdgo._internal.go.types.Types_basickind.BasicKind)) : Bool)) {
                                    @:check2r _w._error(("expected string type" : stdgo.GoString));
                                    continue;
                                };
                            };
                            @:check2r _w._typ(_typ);
                            @:check2r _w._string(("..." : stdgo.GoString));
                            continue;
                        };
                    };
                };
                @:check2r _w._typ(_typ);
            };
        };
        @:check2r _w._byte((41 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _typeName( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        @:check2r _w._string(stdgo._internal.go.types.Types__packageprefix._packagePrefix((@:checkr _obj ?? throw "null pointer dereference")._object._pkg, (@:checkr _w ?? throw "null pointer dereference")._qf)?.__copy__());
        @:check2r _w._string((@:checkr _obj ?? throw "null pointer dereference")._object._name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _tParamList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        @:check2r _w._byte((91 : stdgo.GoUInt8));
        var _prev:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        for (_i => _tpar in _list) {
            if ((_tpar == null || (_tpar : Dynamic).__nil__)) {
                @:check2r _w._error(("nil type parameter" : stdgo.GoString));
                continue;
            };
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                if (stdgo.Go.toInterface((@:checkr _tpar ?? throw "null pointer dereference")._bound) != (stdgo.Go.toInterface(_prev))) {
                    @:check2r _w._byte((32 : stdgo.GoUInt8));
                    @:check2r _w._typ(_prev);
                };
                @:check2r _w._byte((44 : stdgo.GoUInt8));
            };
            _prev = (@:checkr _tpar ?? throw "null pointer dereference")._bound;
            @:check2r _w._typ(stdgo.Go.asInterface(_tpar));
        };
        if (_prev != null) {
            @:check2r _w._byte((32 : stdgo.GoUInt8));
            @:check2r _w._typ(_prev);
        };
        @:check2r _w._byte((93 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _typeList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _list:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        @:check2r _w._byte((91 : stdgo.GoUInt8));
        for (_i => _typ in _list) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _w._byte((44 : stdgo.GoUInt8));
            };
            @:check2r _w._typ(_typ);
        };
        @:check2r _w._byte((93 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _typeSet( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        stdgo._internal.go.types.Types__assert._assert(((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__)));
        var _first = (true : Bool);
        for (__0 => _m in (@:checkr _s ?? throw "null pointer dereference")._methods) {
            if (!_first) {
                @:check2r _w._byte((59 : stdgo.GoUInt8));
            };
            _first = false;
            @:check2r _w._string((@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__());
            @:check2r _w._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._terms._isAll()) {} else if ((@:checkr _s ?? throw "null pointer dereference")._terms._isEmpty()) {
            @:check2r _w._string(((@:checkr _s ?? throw "null pointer dereference")._terms.string() : stdgo.GoString)?.__copy__());
        } else {
            var _termHashes:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            for (__1 => _term in (@:checkr _s ?? throw "null pointer dereference")._terms) {
                var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                if ((@:checkr _term ?? throw "null pointer dereference")._tilde) {
                    @:check2 _buf.writeByte((126 : stdgo.GoUInt8));
                };
                @:check2r stdgo._internal.go.types.Types__newtypehasher._newTypeHasher((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (@:checkr _w ?? throw "null pointer dereference")._ctxt)._typ((@:checkr _term ?? throw "null pointer dereference")._typ);
                _termHashes = (_termHashes.__append__((@:check2 _buf.string() : stdgo.GoString)?.__copy__()));
            };
            stdgo._internal.sort.Sort_strings.strings(_termHashes);
            if (!_first) {
                @:check2r _w._byte((59 : stdgo.GoUInt8));
            };
            @:check2r _w._string(stdgo._internal.strings.Strings_join.join(_termHashes, ("|" : stdgo.GoString))?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _typ( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((@:checkr _w ?? throw "null pointer dereference")._seen[_typ] ?? false)) {
                @:check2r _w._error((("cycle to " : stdgo.GoString) + stdgo._internal.go.types.Types__gotypename._goTypeName(_typ)?.__copy__() : stdgo.GoString)?.__copy__());
                return;
            };
            (@:checkr _w ?? throw "null pointer dereference")._seen[_typ] = true;
            {
                var _a0 = (@:checkr _w ?? throw "null pointer dereference")._seen;
                var _a1 = _typ;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.remove(_a1) });
            };
            {
                final __type__ = _typ;
                {
                    var __bool__ = true;
                    while (__bool__) {
                        __bool__ = false;
                        if (__type__ == null) {
                            var _t:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                            @:check2r _w._error(("nil" : stdgo.GoString));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                            if (stdgo._internal.go.token.Token_isexported.isExported((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__())) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r (@:checkr stdgo._internal.go.types.Types_unsafe.unsafe ?? throw "null pointer dereference")._scope.lookup((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__())) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : false };
                                    }, _obj = __tmp__._0, __0 = __tmp__._1;
                                    if ((_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__))) {
                                        @:check2r _w._typeName(_obj);
                                        break;
                                    };
                                };
                            };
                            @:check2r _w._string((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__());
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                            @:check2r _w._byte((91 : stdgo.GoUInt8));
                            @:check2r _w._string(stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _t ?? throw "null pointer dereference")._len, (10 : stdgo.GoInt))?.__copy__());
                            @:check2r _w._byte((93 : stdgo.GoUInt8));
                            @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                            @:check2r _w._string(("[]" : stdgo.GoString));
                            @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                            @:check2r _w._string(("struct{" : stdgo.GoString));
                            for (_i => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    @:check2r _w._byte((59 : stdgo.GoUInt8));
                                };
                                var _pkgAnnotate = (false : Bool);
                                if ((((@:checkr _w ?? throw "null pointer dereference")._qf == null && (@:checkr _w ?? throw "null pointer dereference")._pkgInfo : Bool) && !stdgo._internal.go.token.Token_isexported.isExported((@:checkr _f ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool)) {
                                    _pkgAnnotate = true;
                                    (@:checkr _w ?? throw "null pointer dereference")._pkgInfo = false;
                                };
                                if (!(@:checkr _f ?? throw "null pointer dereference")._embedded) {
                                    @:check2r _w._string((@:checkr _f ?? throw "null pointer dereference")._object._name?.__copy__());
                                    @:check2r _w._byte((32 : stdgo.GoUInt8));
                                };
                                @:check2r _w._typ((@:checkr _f ?? throw "null pointer dereference")._object._typ);
                                if (_pkgAnnotate) {
                                    @:check2r _w._string((" /* package " : stdgo.GoString));
                                    @:check2r _w._string(@:check2r (@:checkr _f ?? throw "null pointer dereference")._object._pkg.path()?.__copy__());
                                    @:check2r _w._string((" */ " : stdgo.GoString));
                                };
                                {
                                    var _tag = (@:check2r _t.tag(_i)?.__copy__() : stdgo.GoString);
                                    if (_tag != ((stdgo.Go.str() : stdgo.GoString))) {
                                        @:check2r _w._byte((32 : stdgo.GoUInt8));
                                        @:check2r _w._string(stdgo._internal.strconv.Strconv_quote.quote(_tag?.__copy__())?.__copy__());
                                    };
                                };
                            };
                            @:check2r _w._byte((125 : stdgo.GoUInt8));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                            @:check2r _w._byte((42 : stdgo.GoUInt8));
                            @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._base);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value;
                            @:check2r _w._tuple(_t, false);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                            @:check2r _w._string(("func" : stdgo.GoString));
                            @:check2r _w._signature(_t);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value;
                            if (@:check2r _t.len() == ((0 : stdgo.GoInt))) {
                                @:check2r _w._error(("empty union" : stdgo.GoString));
                                break;
                            };
                            for (_i => _t in (@:checkr _t ?? throw "null pointer dereference")._terms) {
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    @:check2r _w._string((" | " : stdgo.GoString));
                                };
                                if ((@:checkr _t ?? throw "null pointer dereference")._tilde) {
                                    @:check2r _w._byte((126 : stdgo.GoUInt8));
                                };
                                @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._typ);
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                            if (((@:checkr _w ?? throw "null pointer dereference")._ctxt == null || ((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__)) {
                                if (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)) == (stdgo.Go.toInterface(stdgo._internal.go.types.Types__universeany._universeAny.type()))) {
                                    @:check2r _w._string(("any" : stdgo.GoString));
                                    break;
                                };
                                if (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)) == (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__universecomparable._universeComparable.type()) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) ?? throw "null pointer dereference")._underlying))) {
                                    @:check2r _w._string(("interface{comparable}" : stdgo.GoString));
                                    break;
                                };
                            };
                            if ((@:checkr _t ?? throw "null pointer dereference")._implicit) {
                                if ((((@:checkr _t ?? throw "null pointer dereference")._methods.length == (0 : stdgo.GoInt)) && ((@:checkr _t ?? throw "null pointer dereference")._embeddeds.length == (1 : stdgo.GoInt)) : Bool)) {
                                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._embeddeds[(0 : stdgo.GoInt)]);
                                    break;
                                };
                                @:check2r _w._string(("/* implicit */ " : stdgo.GoString));
                            };
                            @:check2r _w._string(("interface{" : stdgo.GoString));
                            var _first = (true : Bool);
                            if (((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__))) {
                                @:check2r _w._typeSet(@:check2r _t._typeSet());
                            } else {
                                for (__16 => _m in (@:checkr _t ?? throw "null pointer dereference")._methods) {
                                    if (!_first) {
                                        @:check2r _w._byte((59 : stdgo.GoUInt8));
                                    };
                                    _first = false;
                                    @:check2r _w._string((@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__());
                                    @:check2r _w._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>));
                                };
                                for (__25 => _typ in (@:checkr _t ?? throw "null pointer dereference")._embeddeds) {
                                    if (!_first) {
                                        @:check2r _w._byte((59 : stdgo.GoUInt8));
                                    };
                                    _first = false;
                                    @:check2r _w._typ(_typ);
                                };
                            };
                            @:check2r _w._byte((125 : stdgo.GoUInt8));
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                            @:check2r _w._string(("map[" : stdgo.GoString));
                            @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._key);
                            @:check2r _w._byte((93 : stdgo.GoUInt8));
                            @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                            var _s:stdgo.GoString = ("" : stdgo.GoString);
                            var _parens:Bool = false;
                            {
                                final __value__ = (@:checkr _t ?? throw "null pointer dereference")._dir;
                                if (__value__ == ((0 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                                    _s = ("chan " : stdgo.GoString);
                                    {
                                        var __tmp__ = try {
                                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                                        } catch(_) {
                                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                                        }, _c = __tmp__._0, __0 = __tmp__._1;
                                        if (((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__)) && ((@:checkr _c ?? throw "null pointer dereference")._dir == (2 : stdgo._internal.go.types.Types_chandir.ChanDir)) : Bool)) {
                                            _parens = true;
                                        };
                                    };
                                } else if (__value__ == ((1 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                                    _s = ("chan<- " : stdgo.GoString);
                                } else if (__value__ == ((2 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                                    _s = ("<-chan " : stdgo.GoString);
                                } else {
                                    @:check2r _w._error(("unknown channel direction" : stdgo.GoString));
                                };
                            };
                            @:check2r _w._string(_s?.__copy__());
                            if (_parens) {
                                @:check2r _w._byte((40 : stdgo.GoUInt8));
                            };
                            @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                            if (_parens) {
                                @:check2r _w._byte((41 : stdgo.GoUInt8));
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                            if (((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__))) {
                                @:check2r _w._string(stdgo._internal.strconv.Strconv_itoa.itoa(@:check2r (@:checkr _w ?? throw "null pointer dereference")._ctxt._getID(stdgo.Go.asInterface(_t)))?.__copy__());
                            };
                            @:check2r _w._typeName((@:checkr _t ?? throw "null pointer dereference")._obj);
                            if (((@:checkr _t ?? throw "null pointer dereference")._inst != null && (((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__))) {
                                @:check2r _w._typeList(@:check2r (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs._list());
                            } else if ((((@:checkr _w ?? throw "null pointer dereference")._ctxt == null || ((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__) && (@:check2r @:check2r _t.typeParams().len() != (0 : stdgo.GoInt)) : Bool)) {
                                @:check2r _w._tParamList(@:check2r @:check2r _t.typeParams()._list());
                            };
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                            var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value;
                            if (((@:checkr _t ?? throw "null pointer dereference")._obj == null || ((@:checkr _t ?? throw "null pointer dereference")._obj : Dynamic).__nil__)) {
                                @:check2r _w._error(("unnamed type parameter" : stdgo.GoString));
                                break;
                            };
                            {
                                var _i = (stdgo._internal.go.types.Types__tparamindex._tparamIndex(@:check2r (@:checkr _w ?? throw "null pointer dereference")._tparams._list(), _t) : stdgo.GoInt);
                                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                    @:check2r _w._string(stdgo._internal.fmt.Fmt_sprintf.sprintf(("$%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__());
                                } else {
                                    @:check2r _w._string((@:checkr (@:checkr _t ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__());
                                    if (((@:checkr _w ?? throw "null pointer dereference")._tpSubscripts || ((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__)) : Bool)) {
                                        @:check2r _w._string(stdgo._internal.go.types.Types__subscript._subscript((@:checkr _t ?? throw "null pointer dereference")._id)?.__copy__());
                                    };
                                    if ((((@:checkr _w ?? throw "null pointer dereference")._ctxt == null || ((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__) && (@:check2r stdgo._internal.go.types.Types_universe.universe.lookup((@:checkr (@:checkr _t ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__()) != null) : Bool)) {
                                        @:check2r _w._string(("/* type parameter */" : stdgo.GoString));
                                    };
                                };
                            };
                        } else {
                            var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            @:check2r _w._string((_t.string() : stdgo.GoString)?.__copy__());
                        };
                        break;
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _error( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _msg:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__))) {
            throw stdgo.Go.toInterface(_msg);
        };
        @:check2r (@:checkr _w ?? throw "null pointer dereference")._buf.writeString(((("<" : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _string( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _s:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        @:check2r (@:checkr _w ?? throw "null pointer dereference")._buf.writeString(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _byte( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter>, _b:stdgo.GoUInt8):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_typewriter.T_typeWriter> = _w;
        if (((@:checkr _w ?? throw "null pointer dereference")._ctxt != null && (((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr _w ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__))) {
            if (_b == ((32 : stdgo.GoUInt8))) {
                _b = (35 : stdgo.GoUInt8);
            };
            @:check2r (@:checkr _w ?? throw "null pointer dereference")._buf.writeByte(_b);
            return;
        };
        @:check2r (@:checkr _w ?? throw "null pointer dereference")._buf.writeByte(_b);
        if (((_b == (44 : stdgo.GoUInt8)) || (_b == (59 : stdgo.GoUInt8)) : Bool)) {
            @:check2r (@:checkr _w ?? throw "null pointer dereference")._buf.writeByte((32 : stdgo.GoUInt8));
        };
    }
}
