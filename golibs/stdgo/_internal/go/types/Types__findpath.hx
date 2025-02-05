package stdgo._internal.go.types;
function _findPath(_objMap:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>>, _from:stdgo._internal.go.types.Types_object.Object, _to:stdgo._internal.go.types.Types_object.Object, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_object.Object, Bool>):stdgo.Slice<stdgo._internal.go.types.Types_object.Object> {
        if ((_seen[_from] ?? false)) {
            return (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        };
        _seen[_from] = true;
        for (_d => _ in (@:checkr (_objMap[_from] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_declinfo.T_declInfo>)) ?? throw "null pointer dereference")._deps) {
            if (stdgo.Go.toInterface(_d) == (stdgo.Go.toInterface(_to))) {
                return (new stdgo.Slice<stdgo._internal.go.types.Types_object.Object>(1, 1, ...[_d]) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
            };
            {
                var p = stdgo._internal.go.types.Types__findpath._findPath(_objMap, _d, _to, _seen);
                if (p != null) {
                    return (p.__append__(_d));
                };
            };
        };
        return (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
    }
