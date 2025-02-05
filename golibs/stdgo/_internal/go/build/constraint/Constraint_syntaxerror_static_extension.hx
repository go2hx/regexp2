package stdgo._internal.go.build.constraint;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err?.__copy__();
    }
}
