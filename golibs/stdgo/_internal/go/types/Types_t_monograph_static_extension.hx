package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_monoGraph_asInterface) class T_monoGraph_static_extension {
    @:keep
    @:tdfield
    static public function _addEdge( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _dst:stdgo.GoInt, _src:stdgo.GoInt, _weight:stdgo.GoInt, _pos:stdgo._internal.go.token.Token_pos.Pos, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._edges = ((@:checkr _w ?? throw "null pointer dereference")._edges.__append__(({ _dst : _dst, _src : _src, _weight : _weight, _pos : _pos, _typ : _typ } : stdgo._internal.go.types.Types_t_monoedge.T_monoEdge)));
    }
    @:keep
    @:tdfield
    static public function _typeParamVertex( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        {
            var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._canon != null && (@:checkr _w ?? throw "null pointer dereference")._canon.exists(_tpar) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._canon[_tpar], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false }), _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _tpar = _x;
            };
        };
        var _obj = @:check2r _tpar.obj();
        {
            var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._nameIdx != null && (@:checkr _w ?? throw "null pointer dereference")._nameIdx.exists(_obj) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _idx;
            };
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._nameIdx == null) {
            (@:checkr _w ?? throw "null pointer dereference")._nameIdx = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>);
        };
        var _idx = ((@:checkr _w ?? throw "null pointer dereference")._vertices.length : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference")._vertices = ((@:checkr _w ?? throw "null pointer dereference")._vertices.__append__(({ _obj : _obj } : stdgo._internal.go.types.Types_t_monovertex.T_monoVertex)));
        (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj] = _idx;
        return _idx;
    }
    @:keep
    @:tdfield
    static public function _localNamedVertex( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _named:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        var _obj = @:check2r _named.obj();
        if (@:check2r _obj.pkg() != (_pkg)) {
            return (-1 : stdgo.GoInt);
        };
        var _root = @:check2r _pkg.scope();
        if (@:check2r _obj.parent() == (_root)) {
            return (-1 : stdgo.GoInt);
        };
        {
            var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._nameIdx != null && (@:checkr _w ?? throw "null pointer dereference")._nameIdx.exists(_obj) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _idx:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _idx;
            };
        };
        var _idx = (-1 : stdgo.GoInt);
        {
            var _scope = @:check2r _obj.parent();
            while (_scope != (_root)) {
                for (__8 => _elem in (@:checkr _scope ?? throw "null pointer dereference")._elems) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_elem) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>), _1 : false };
                        }, _elem = __tmp__._0, _ok = __tmp__._1;
                        if (((_ok && !@:check2r _elem.isAlias() : Bool) && (stdgo._internal.go.types.Types__cmppos._cmpPos(@:check2r _elem.pos(), @:check2r _obj.pos()) < (0 : stdgo.GoInt) : Bool) : Bool)) {
                            {
                                var __tmp__ = try {
                                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _elem.type()) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                                } catch(_) {
                                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                                }, _tpar = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    if ((_idx < (0 : stdgo.GoInt) : Bool)) {
                                        _idx = ((@:checkr _w ?? throw "null pointer dereference")._vertices.length);
                                        (@:checkr _w ?? throw "null pointer dereference")._vertices = ((@:checkr _w ?? throw "null pointer dereference")._vertices.__append__(({ _obj : _obj } : stdgo._internal.go.types.Types_t_monovertex.T_monoVertex)));
                                    };
                                    @:check2r _w._addEdge(_idx, @:check2r _w._typeParamVertex(_tpar), (1 : stdgo.GoInt), @:check2r _obj.pos(), stdgo.Go.asInterface(_tpar));
                                };
                            };
                        };
                    };
                };
                _scope = @:check2r _scope.parent();
            };
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._nameIdx == null) {
            (@:checkr _w ?? throw "null pointer dereference")._nameIdx = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, stdgo.GoInt>);
        };
        (@:checkr _w ?? throw "null pointer dereference")._nameIdx[_obj] = _idx;
        return _idx;
    }
    @:keep
    @:tdfield
    static public function _assign( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _targ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        if (@:check2r @:check2r _tpar.obj().pkg() != (_pkg)) {
            return;
        };
        var _flow = (function(_src:stdgo.GoInt, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
            var _weight = (1 : stdgo.GoInt);
            if (stdgo.Go.toInterface(_typ) == (stdgo.Go.toInterface(_targ))) {
                _weight = (0 : stdgo.GoInt);
            };
            @:check2r _w._addEdge(@:check2r _w._typeParamVertex(_tpar), _src, _weight, _pos, _targ);
        } : (stdgo.GoInt, stdgo._internal.go.types.Types_type_.Type_) -> Void);
        var _do:stdgo._internal.go.types.Types_type_.Type_ -> Void = null;
        _do = function(_typ:stdgo._internal.go.types.Types_type_.Type_):Void {
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value;
                    stdgo._internal.go.types.Types__assert._assert(@:check2r @:check2r _typ.obj().pkg() == (_pkg));
                    _flow(@:check2r _w._typeParamVertex(_typ), stdgo.Go.asInterface(_typ));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                    {
                        var _src = (@:check2r _w._localNamedVertex(_pkg, @:check2r _typ.origin()) : stdgo.GoInt);
                        if ((_src >= (0 : stdgo.GoInt) : Bool)) {
                            _flow(_src, stdgo.Go.asInterface(_typ));
                        };
                    };
                    var _targs = @:check2r _typ.typeArgs();
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < @:check2r _targs.len() : Bool)) {
                            _do(@:check2r _targs.at(_i));
                            _i++;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                    _do(@:check2r _typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                    _do(@:check2r _typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                    _do(@:check2r _typ.key());
                    _do(@:check2r _typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                    _do(@:check2r _typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                    _do(@:check2r _typ.elem());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < @:check2r _typ.numMethods() : Bool)) {
                            _do(@:check2r @:check2r _typ.method(_i).type());
                            _i++;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                    var _tuple = function(_tup:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < @:check2r _tup.len() : Bool)) {
                                _do(@:check2r @:check2r _tup.at(_i).type());
                                _i++;
                            };
                        };
                    };
                    _tuple(@:check2r _typ.params());
                    _tuple(@:check2r _typ.results());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _typ:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < @:check2r _typ.numFields() : Bool)) {
                            _do(@:check2r @:check2r _typ.field(_i).type());
                            _i++;
                        };
                    };
                } else {
                    var _typ:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    throw stdgo.Go.toInterface(("unexpected type" : stdgo.GoString));
                };
            };
        };
        _do(_targ);
    }
    @:keep
    @:tdfield
    static public function _recordInstance( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _xlist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        for (_i => _tpar in _tparams) {
            var _pos = (_pos : stdgo._internal.go.token.Token_pos.Pos);
            if ((_i < (_xlist.length) : Bool)) {
                _pos = _xlist[(_i : stdgo.GoInt)].pos();
            };
            @:check2r _w._assign(_pkg, _pos, _tpar, _targs[(_i : stdgo.GoInt)]);
        };
    }
    @:keep
    @:tdfield
    static public function _recordCanon( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph>, _mpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_monograph.T_monoGraph> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._canon == null) {
            (@:checkr _w ?? throw "null pointer dereference")._canon = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        (@:checkr _w ?? throw "null pointer dereference")._canon[_mpar] = _tpar;
    }
}
