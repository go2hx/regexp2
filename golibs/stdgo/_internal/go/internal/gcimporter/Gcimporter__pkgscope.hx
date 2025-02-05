package stdgo._internal.go.internal.gcimporter;
function _pkgScope(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        if ((_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__))) {
            return @:check2r _pkg.scope();
        };
        return stdgo._internal.go.types.Types_universe.universe;
    }
