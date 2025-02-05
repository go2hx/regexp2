package stdgo._internal.go.constant;
function _makeComplex(_re:stdgo._internal.go.constant.Constant_value.Value, _im:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        if (((_re.kind() == (0 : stdgo._internal.go.constant.Constant_kind.Kind)) || (_im.kind() == (0 : stdgo._internal.go.constant.Constant_kind.Kind)) : Bool)) {
            return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal() : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal));
        };
        return stdgo.Go.asInterface((new stdgo._internal.go.constant.Constant_t_complexval.T_complexVal(_re, _im) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal));
    }
