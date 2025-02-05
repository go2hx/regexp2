package stdgo._internal.go.types;
function _goVal(_val:stdgo._internal.go.constant.Constant_value.Value):stdgo.AnyInterface {
        if (_val == null) {
            return (null : stdgo.AnyInterface);
        };
        {
            final __value__ = _val.kind();
            if (__value__ == ((3 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_int64val.int64Val(_val), _x:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.toInterface(_x);
                    };
                };
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_uint64val.uint64Val(_val), _x:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.toInterface(_x);
                    };
                };
            } else if (__value__ == ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(_val), _x:stdgo.GoFloat64 = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        return stdgo.Go.toInterface(_x);
                    };
                };
            } else if (__value__ == ((2 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                return stdgo.Go.toInterface(stdgo._internal.go.constant.Constant_stringval.stringVal(_val));
            };
        };
        return (null : stdgo.AnyInterface);
    }
