package stdgo._internal.go.constant;
function _makeInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo._internal.go.constant.Constant_value.Value {
        if (@:check2r _x.isInt64()) {
            return stdgo.Go.asInterface((@:check2r _x.int64() : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_intval.T_intVal(_x) : stdgo._internal.go.constant.Constant_t_intval.T_intVal));
    }
