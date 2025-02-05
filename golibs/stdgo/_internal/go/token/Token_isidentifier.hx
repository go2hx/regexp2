package stdgo._internal.go.token;
function isIdentifier(_name:stdgo.GoString):Bool {
        if (((_name == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.go.token.Token_iskeyword.isKeyword(_name?.__copy__()) : Bool)) {
            return false;
        };
        for (_i => _c in _name) {
            if (((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && _c != ((95 : stdgo.GoInt32)) : Bool) && (((_i == (0 : stdgo.GoInt)) || !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool)) : Bool)) {
                return false;
            };
        };
        return true;
    }
