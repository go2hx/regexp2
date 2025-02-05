package stdgo._internal.go.ast;
function newObj(_kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        return (stdgo.Go.setRef(({ kind : _kind, name : _name?.__copy__() } : stdgo._internal.go.ast.Ast_object.Object)) : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
    }
