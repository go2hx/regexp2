package stdgo._internal.go.ast;
function _walkStmtList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        for (__0 => _x in _list) {
            stdgo._internal.go.ast.Ast_walk.walk(_v, _x);
        };
    }
