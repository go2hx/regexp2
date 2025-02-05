package stdgo._internal.go.constant;
function makeUint64(_x:stdgo.GoUInt64):stdgo._internal.go.constant.Constant_value.Value {
        if ((_x < (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
            return stdgo.Go.asInterface(((_x : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_intval.T_intVal(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().setUint64(_x)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal));
    }
