package stdgo._internal.go.ast;
function _resolve(_scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):Bool {
        while ((_scope != null && ((_scope : Dynamic).__nil__ == null || !(_scope : Dynamic).__nil__))) {
            {
                var _obj = @:check2r _scope.lookup((@:checkr _ident ?? throw "null pointer dereference").name.__copy__());
                if ((_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__))) {
                    (@:checkr _ident ?? throw "null pointer dereference").obj = _obj;
                    return true;
                };
            };
            _scope = (@:checkr _scope ?? throw "null pointer dereference").outer;
        };
        return false;
    }
