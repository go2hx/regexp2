package stdgo._internal.go.build.constraint;
function _isValidTag(_word:stdgo.GoString):Bool {
        if (_word == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        for (__0 => _c in _word) {
            if ((((!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_c) : Bool) && _c != ((95 : stdgo.GoInt32)) : Bool) && (_c != (46 : stdgo.GoInt32)) : Bool)) {
                return false;
            };
        };
        return true;
    }
