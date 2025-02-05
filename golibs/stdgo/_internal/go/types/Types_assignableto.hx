package stdgo._internal.go.types;
function assignableTo(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var _x = ({ _mode : (7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode), _typ : v } : stdgo._internal.go.types.Types_t_operand.T_operand);
        var __tmp__ = @:check2 _x._assignableTo(null, t, (null : stdgo.Pointer<stdgo.GoString>)), _ok:Bool = __tmp__._0, __0:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._1;
        return _ok;
    }
