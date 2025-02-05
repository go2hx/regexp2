package stdgo._internal.go.types;
function _allBasic(_t:stdgo._internal.go.types.Types_type_.Type_, _info:stdgo._internal.go.types.Types_basicinfo.BasicInfo):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
            }, _tpar = __tmp__._0, __0 = __tmp__._1;
            if ((_tpar != null && ((_tpar : Dynamic).__nil__ == null || !(_tpar : Dynamic).__nil__))) {
                return @:check2r _tpar._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                    return ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && stdgo._internal.go.types.Types__isbasic._isBasic((@:checkr _t ?? throw "null pointer dereference")._typ, _info) : Bool);
                });
            };
        };
        return stdgo._internal.go.types.Types__isbasic._isBasic(_t, _info);
    }
