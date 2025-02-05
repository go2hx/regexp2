package stdgo._internal.go.ast;
function _filterSpecList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        var _j = (0 : stdgo.GoInt);
        for (__0 => _s in _list) {
            if (stdgo._internal.go.ast.Ast__filterspec._filterSpec(_s, _f, _export)) {
                _list[(_j : stdgo.GoInt)] = _s;
                _j++;
            };
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
    }
