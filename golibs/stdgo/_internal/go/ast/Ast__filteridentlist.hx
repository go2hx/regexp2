package stdgo._internal.go.ast;
function _filterIdentList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _f:stdgo._internal.go.ast.Ast_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        var _j = (0 : stdgo.GoInt);
        for (__0 => _x in _list) {
            if (_f((@:checkr _x ?? throw "null pointer dereference").name?.__copy__())) {
                _list[(_j : stdgo.GoInt)] = _x;
                _j++;
            };
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    }
