package stdgo._internal.go.types;
function newNamed(_obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>, _underlying:stdgo._internal.go.types.Types_type_.Type_, _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_underlying) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, __0 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(("underlying type must not be *Named" : stdgo.GoString));
            };
        };
        return @:check2r (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._newNamed(_obj, _underlying, _methods);
    }
