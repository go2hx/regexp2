package stdgo._internal.go.build.constraint;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.OrExpr_asInterface) class OrExpr_static_extension {
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = _x;
        return ((stdgo._internal.go.build.constraint.Constraint__orarg._orArg((@:checkr _x ?? throw "null pointer dereference").x) + (" || " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.go.build.constraint.Constraint__orarg._orArg((@:checkr _x ?? throw "null pointer dereference").y)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function eval( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>, _ok:stdgo.GoString -> Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = _x;
        var _xok = ((@:checkr _x ?? throw "null pointer dereference").x.eval(_ok) : Bool);
        var _yok = ((@:checkr _x ?? throw "null pointer dereference").y.eval(_ok) : Bool);
        return (_xok || _yok : Bool);
    }
    @:keep
    @:tdfield
    static public function _isExpr( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_orexpr.OrExpr> = _x;
    }
}
