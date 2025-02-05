package stdgo._internal.go.types;
function _underIs(_typ:stdgo._internal.go.types.Types_type_.Type_, _f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _tpar = __tmp__._0, __0 = __tmp__._1;
            if ((_tpar != null && ((_tpar : Dynamic).__nil__ == null || !(_tpar : Dynamic).__nil__))) {
                return @:check2r _tpar._underIs(_f);
            };
        };
        return _f(stdgo._internal.go.types.Types__under._under(_typ));
    }
