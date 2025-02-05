package stdgo._internal.go.constant;
function _cmpZero(_x:stdgo.GoInt, _op:stdgo._internal.go.token.Token_token.Token):Bool {
        {
            final __value__ = _op;
            if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token))) {
                return _x == ((0 : stdgo.GoInt));
            } else if (__value__ == ((44 : stdgo._internal.go.token.Token_token.Token))) {
                return _x != ((0 : stdgo.GoInt));
            } else if (__value__ == ((40 : stdgo._internal.go.token.Token_token.Token))) {
                return (_x < (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((45 : stdgo._internal.go.token.Token_token.Token))) {
                return (_x <= (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((41 : stdgo._internal.go.token.Token_token.Token))) {
                return (_x > (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == ((46 : stdgo._internal.go.token.Token_token.Token))) {
                return (_x >= (0 : stdgo.GoInt) : Bool);
            };
        };
        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid comparison %v %s 0" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_op))));
    }
