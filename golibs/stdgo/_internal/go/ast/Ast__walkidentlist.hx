package stdgo._internal.go.ast;
function _walkIdentList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void {
        for (__0 => _x in _list) {
            stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_x));
        };
    }
