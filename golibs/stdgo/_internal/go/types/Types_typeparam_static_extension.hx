package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeParam_asInterface) class TypeParam_static_extension {
    @:keep
    @:tdfield
    static public function _underIs( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return @:check2r @:check2r @:check2r _t._iface()._typeSet()._underIs(_f);
    }
    @:keep
    @:tdfield
    static public function _is( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _f:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> -> Bool):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return @:check2r @:check2r @:check2r _t._iface()._typeSet()._is(_f);
    }
    @:keep
    @:tdfield
    static public function _iface( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        var _bound = ((@:checkr _t ?? throw "null pointer dereference")._bound : stdgo._internal.go.types.Types_type_.Type_);
        var _ityp:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
        {
            final __type__ = stdgo._internal.go.types.Types__under._under(_bound);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _u:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                if (_u == (stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])) {
                    return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _u:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_bound)) {
                    return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
                };
                _ityp = _u;
            };
        };
        if ((_ityp == null || (_ityp : Dynamic).__nil__)) {
            _ityp = stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType((null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(1, 1, ...[_bound]) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>));
            (@:checkr _ityp ?? throw "null pointer dereference")._implicit = true;
            (@:checkr _t ?? throw "null pointer dereference")._bound = stdgo.Go.asInterface(_ityp);
        };
        if (((@:checkr _ityp ?? throw "null pointer dereference")._tset == null || ((@:checkr _ityp ?? throw "null pointer dereference")._tset : Dynamic).__nil__)) {
            var _pos = ((@:checkr (@:checkr _t ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos : stdgo._internal.go.token.Token_pos.Pos);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_bound) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, _n = __tmp__._0, __24 = __tmp__._1;
                if ((_n != null && ((_n : Dynamic).__nil__ == null || !(_n : Dynamic).__nil__))) {
                    _pos = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos;
                };
            };
            stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet((@:checkr _t ?? throw "null pointer dereference")._check, _pos, _ityp);
        };
        return _ityp;
    }
    @:keep
    @:tdfield
    static public function _cleanup( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        @:check2r _t._iface();
        (@:checkr _t ?? throw "null pointer dereference")._check = null;
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return stdgo.Go.asInterface(@:check2r _t._iface());
    }
    @:keep
    @:tdfield
    static public function setConstraint( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>, _bound:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        if (_bound == null) {
            throw stdgo.Go.toInterface(("nil constraint" : stdgo.GoString));
        };
        (@:checkr _t ?? throw "null pointer dereference")._bound = _bound;
        @:check2r _t._iface();
    }
    @:keep
    @:tdfield
    static public function constraint( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return (@:checkr _t ?? throw "null pointer dereference")._bound;
    }
    @:keep
    @:tdfield
    static public function index( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return (@:checkr _t ?? throw "null pointer dereference")._index;
    }
    @:keep
    @:tdfield
    static public function obj( _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = _t;
        return (@:checkr _t ?? throw "null pointer dereference")._obj;
    }
}
