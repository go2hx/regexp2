package stdgo._internal.go.ast;
function _filterFile(_src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _j = (0 : stdgo.GoInt);
        for (__0 => _d in (@:checkr _src ?? throw "null pointer dereference").decls) {
            if (stdgo._internal.go.ast.Ast__filterdecl._filterDecl(_d, _f, _export)) {
                (@:checkr _src ?? throw "null pointer dereference").decls[(_j : stdgo.GoInt)] = _d;
                _j++;
            };
        };
        (@:checkr _src ?? throw "null pointer dereference").decls = ((@:checkr _src ?? throw "null pointer dereference").decls.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        return (_j > (0 : stdgo.GoInt) : Bool);
    }
