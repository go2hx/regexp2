package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Info_asInterface) class Info_static_extension {
    @:keep
    @:tdfield
    static public function objectOf( _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>, _id:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.types.Types_object.Object {
        @:recv var _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info> = _info;
        {
            var _obj = ((@:checkr _info ?? throw "null pointer dereference").defs[_id] ?? (null : stdgo._internal.go.types.Types_object.Object) : stdgo._internal.go.types.Types_object.Object);
            if (_obj != null) {
                return _obj;
            };
        };
        return ((@:checkr _info ?? throw "null pointer dereference").uses[_id] ?? (null : stdgo._internal.go.types.Types_object.Object));
    }
    @:keep
    @:tdfield
    static public function typeOf( _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>, _e:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info> = _info;
        {
            var __tmp__ = ((@:checkr _info ?? throw "null pointer dereference").types != null && (@:checkr _info ?? throw "null pointer dereference").types.exists(_e) ? { _0 : (@:checkr _info ?? throw "null pointer dereference").types[_e], _1 : true } : { _0 : ({} : stdgo._internal.go.types.Types_typeandvalue.TypeAndValue), _1 : false }), _t:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _t.type;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
            }, _id = __tmp__._0, __0 = __tmp__._1;
            if ((_id != null && ((_id : Dynamic).__nil__ == null || !(_id : Dynamic).__nil__))) {
                {
                    var _obj = (@:check2r _info.objectOf(_id) : stdgo._internal.go.types.Types_object.Object);
                    if (_obj != null) {
                        return _obj.type();
                    };
                };
            };
        };
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
    @:keep
    @:tdfield
    static public function _recordTypes( _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):Bool {
        @:recv var _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info> = _info;
        return (@:checkr _info ?? throw "null pointer dereference").types != null;
    }
}
