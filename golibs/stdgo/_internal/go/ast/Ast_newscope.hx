package stdgo._internal.go.ast;
function newScope(_outer:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> {
        {};
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_scope.Scope(_outer, (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>>)) : stdgo._internal.go.ast.Ast_scope.Scope)) : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    }
