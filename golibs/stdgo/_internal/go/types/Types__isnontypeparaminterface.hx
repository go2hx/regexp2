package stdgo._internal.go.types;
function _isNonTypeParamInterface(_t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        return (!stdgo._internal.go.types.Types__istypeparam._isTypeParam(_t) && stdgo._internal.go.types.Types_isinterface.isInterface(_t) : Bool);
    }
