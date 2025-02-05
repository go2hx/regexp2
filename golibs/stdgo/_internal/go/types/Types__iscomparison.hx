package stdgo._internal.go.types;
function _isComparison(_op:stdgo._internal.go.token.Token_token.Token):Bool {
        {
            final __value__ = _op;
            if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((44 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((40 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((45 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((41 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((46 : stdgo._internal.go.token.Token_token.Token))) {
                return true;
            };
        };
        return false;
    }
