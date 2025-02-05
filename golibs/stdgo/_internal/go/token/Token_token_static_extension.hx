package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.Token_asInterface) class Token_static_extension {
    @:keep
    @:tdfield
    static public function isKeyword( _tok:stdgo._internal.go.token.Token_token.Token):Bool {
        @:recv var _tok:stdgo._internal.go.token.Token_token.Token = _tok;
        return (((60 : stdgo._internal.go.token.Token_token.Token) < _tok : Bool) && (_tok < (86 : stdgo._internal.go.token.Token_token.Token) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function isOperator( _tok:stdgo._internal.go.token.Token_token.Token):Bool {
        @:recv var _tok:stdgo._internal.go.token.Token_token.Token = _tok;
        return (((((11 : stdgo._internal.go.token.Token_token.Token) < _tok : Bool) && (_tok < (59 : stdgo._internal.go.token.Token_token.Token) : Bool) : Bool)) || (_tok == (88 : stdgo._internal.go.token.Token_token.Token)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isLiteral( _tok:stdgo._internal.go.token.Token_token.Token):Bool {
        @:recv var _tok:stdgo._internal.go.token.Token_token.Token = _tok;
        return (((3 : stdgo._internal.go.token.Token_token.Token) < _tok : Bool) && (_tok < (10 : stdgo._internal.go.token.Token_token.Token) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function precedence( _op:stdgo._internal.go.token.Token_token.Token):stdgo.GoInt {
        @:recv var _op:stdgo._internal.go.token.Token_token.Token = _op;
        {
            final __value__ = _op;
            if (__value__ == ((35 : stdgo._internal.go.token.Token_token.Token))) {
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((34 : stdgo._internal.go.token.Token_token.Token))) {
                return (2 : stdgo.GoInt);
            } else if (__value__ == ((39 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((44 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((40 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((45 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((41 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((46 : stdgo._internal.go.token.Token_token.Token))) {
                return (3 : stdgo.GoInt);
            } else if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((13 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((18 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                return (4 : stdgo.GoInt);
            } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((15 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((16 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((20 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((21 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((17 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                return (5 : stdgo.GoInt);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function string( _tok:stdgo._internal.go.token.Token_token.Token):stdgo.GoString {
        @:recv var _tok:stdgo._internal.go.token.Token_token.Token = _tok;
        var _s = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((((0 : stdgo._internal.go.token.Token_token.Token) <= _tok : Bool) && (_tok < (stdgo._internal.go.token.Token__tokens._tokens.length : stdgo._internal.go.token.Token_token.Token) : Bool) : Bool)) {
            _s = stdgo._internal.go.token.Token__tokens._tokens[(_tok : stdgo.GoInt)]?.__copy__();
        };
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _s = ((("token(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_tok : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
}
