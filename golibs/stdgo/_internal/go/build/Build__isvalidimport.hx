package stdgo._internal.go.build;
function _isValidImport(_s:stdgo.GoString):Bool {
        {};
        for (__0 => _r in _s) {
            if (((!stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                return false;
            };
        };
        return _s != ((stdgo.Go.str() : stdgo.GoString));
    }
