package stdgo._internal.go.types;
function _hasBreakList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, _label:stdgo.GoString, _implicit:Bool):Bool {
        for (__0 => _s in _list) {
            if (stdgo._internal.go.types.Types__hasbreak._hasBreak(_s, _label?.__copy__(), _implicit)) {
                return true;
            };
        };
        return false;
    }
