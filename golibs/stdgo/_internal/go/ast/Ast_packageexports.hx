package stdgo._internal.go.ast;
function packageExports(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>):Bool {
        return stdgo._internal.go.ast.Ast__filterpackage._filterPackage(_pkg, stdgo._internal.go.ast.Ast__exportfilter._exportFilter, true);
    }
