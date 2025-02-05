package stdgo._internal.go.types;
function convertibleTo(v:stdgo._internal.go.types.Types_type_.Type_, t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        var _x = ({ _mode : (7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode), _typ : v } : stdgo._internal.go.types.Types_t_operand.T_operand);
        return @:check2 _x._convertibleTo(null, t, (null : stdgo.Pointer<stdgo.GoString>));
    }
