package stdgo._internal.go.types;
function _packagePrefix(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        if ((_pkg == null || (_pkg : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        if (_qf != null) {
            _s = _qf(_pkg)?.__copy__();
        } else {
            _s = @:check2r _pkg.path()?.__copy__();
        };
        if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            _s = (_s + (("." : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
