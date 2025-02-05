package stdgo._internal.go.ast;
function _filterParamList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        if ((_fields == null || (_fields : Dynamic).__nil__)) {
            return false;
        };
        var _b:Bool = false;
        for (__0 => _f in (@:checkr _fields ?? throw "null pointer dereference").list) {
            if (stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _f ?? throw "null pointer dereference").type, _filter, _export)) {
                _b = true;
            };
        };
        return _b;
    }
