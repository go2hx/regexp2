package stdgo._internal.go.token;
function lookup(_ident:stdgo.GoString):stdgo._internal.go.token.Token_token.Token {
        {
            var __tmp__ = (stdgo._internal.go.token.Token__keywords._keywords != null && stdgo._internal.go.token.Token__keywords._keywords.exists(_ident?.__copy__()) ? { _0 : stdgo._internal.go.token.Token__keywords._keywords[_ident?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _1 : false }), _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _is_keyword:Bool = __tmp__._1;
            if (_is_keyword) {
                return _tok;
            };
        };
        return (4 : stdgo._internal.go.token.Token_token.Token);
    }
