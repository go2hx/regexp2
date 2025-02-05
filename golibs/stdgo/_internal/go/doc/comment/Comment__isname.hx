package stdgo._internal.go.doc.comment;
function _isName(_s:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.go.doc.comment.Comment__ident._ident(_s?.__copy__()), _t:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        if ((!_ok || (_t != _s) : Bool)) {
            return false;
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
        return stdgo._internal.unicode.Unicode_isupper.isUpper(_r);
    }
