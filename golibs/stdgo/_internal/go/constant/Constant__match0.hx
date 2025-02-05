package stdgo._internal.go.constant;
function _match0(_x:stdgo._internal.go.constant.Constant_value.Value, _y:stdgo._internal.go.constant.Constant_value.Value):{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } {
        var _0 = (null : stdgo._internal.go.constant.Constant_value.Value), _1 = (null : stdgo._internal.go.constant.Constant_value.Value);
        {
            final __type__ = _y;
            if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                        var _x1:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__i64toi._i64toi(_x1)), _1 : _y };
                            _0 = __tmp__._0;
                            _1 = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                        var _x1:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__i64tor._i64tor(_x1)), _1 : _y };
                            _0 = __tmp__._0;
                            _1 = __tmp__._1;
                            __tmp__;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                        var _x1:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__itor._itor(_x1?.__copy__())), _1 : _y };
                            _0 = __tmp__._0;
                            _1 = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                {
                    final __type__ = _x;
                    if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                        var _x1:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__i64tof._i64tof(_x1)), _1 : _y };
                            _0 = __tmp__._0;
                            _1 = __tmp__._1;
                            __tmp__;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                        var _x1:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__itof._itof(_x1?.__copy__())), _1 : _y };
                            _0 = __tmp__._0;
                            _1 = __tmp__._1;
                            __tmp__;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                        var _x1:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__rtof._rtof(_x1?.__copy__())), _1 : _y };
                            _0 = __tmp__._0;
                            _1 = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.constant.Constant__vtoc._vtoc(_x)), _1 : _y };
                    _0 = __tmp__._0;
                    _1 = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.go.constant.Constant_value.Value; var _1 : stdgo._internal.go.constant.Constant_value.Value; } = { _0 : _x, _1 : _x };
            _0 = __tmp__._0;
            _1 = __tmp__._1;
            __tmp__;
        };
    }
