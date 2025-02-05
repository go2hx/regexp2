package stdgo._internal.go.ast;
function _filterSpec(_spec:stdgo._internal.go.ast.Ast_spec.Spec, _f:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                (@:checkr _s ?? throw "null pointer dereference").names = stdgo._internal.go.ast.Ast__filteridentlist._filterIdentList((@:checkr _s ?? throw "null pointer dereference").names, _f);
                (@:checkr _s ?? throw "null pointer dereference").values = stdgo._internal.go.ast.Ast__filterexprlist._filterExprList((@:checkr _s ?? throw "null pointer dereference").values, _f, _export);
                if ((((@:checkr _s ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    if (_export) {
                        stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw "null pointer dereference").type, _f, _export);
                    };
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                if (_f((@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__())) {
                    if (_export) {
                        stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw "null pointer dereference").type, _f, _export);
                    };
                    return true;
                };
                if (!_export) {
                    return stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _s ?? throw "null pointer dereference").type, _f, _export);
                };
            };
        };
        return false;
    }
