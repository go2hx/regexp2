package stdgo._internal.go.types;
function sizesFor(_compiler:stdgo.GoString, _arch:stdgo.GoString):stdgo._internal.go.types.Types_sizes.Sizes {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>>);
        {
            final __value__ = _compiler;
            if (__value__ == (("gc" : stdgo.GoString))) {
                _m = stdgo._internal.go.types.Types__gcarchsizes._gcArchSizes;
            } else if (__value__ == (("gccgo" : stdgo.GoString))) {
                _m = stdgo._internal.go.types.Types__gccgoarchsizes._gccgoArchSizes;
            } else {
                return (null : stdgo._internal.go.types.Types_sizes.Sizes);
            };
        };
        var __tmp__ = (_m != null && _m.exists(_arch?.__copy__()) ? { _0 : _m[_arch?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>), _1 : false }), _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return (null : stdgo._internal.go.types.Types_sizes.Sizes);
        };
        return stdgo.Go.asInterface(_s);
    }
