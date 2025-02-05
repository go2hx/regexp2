package stdgo._internal.go.ast;
function _filterPackage(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _hasDecls = (false : Bool);
        for (__0 => _src in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            if (stdgo._internal.go.ast.Ast__filterfile._filterFile(_src, _f, _export)) {
                _hasDecls = true;
            };
        };
        return _hasDecls;
    }
