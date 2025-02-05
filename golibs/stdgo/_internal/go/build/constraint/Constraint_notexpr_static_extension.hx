package stdgo._internal.go.build.constraint;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.NotExpr_asInterface) class NotExpr_static_extension {
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = _x;
        var _s = (((@:checkr _x ?? throw "null pointer dereference").x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            final __type__ = (@:checkr _x ?? throw "null pointer dereference").x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>))) {
                _s = ((("(" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return (("!" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function eval( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>, _ok:stdgo.GoString -> Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = _x;
        return !(@:checkr _x ?? throw "null pointer dereference").x.eval(_ok);
    }
    @:keep
    @:tdfield
    static public function _isExpr( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_notexpr.NotExpr> = _x;
    }
}
