package stdgo._internal.go.types;
function _validatedImportPath(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_path?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("empty string" : stdgo.GoString)) };
        };
        {};
        for (__0 => _r in _s) {
            if (((!stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                return { _0 : _s?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid character %#U" : stdgo.GoString), stdgo.Go.toInterface(_r)) };
            };
        };
        return { _0 : _s?.__copy__(), _1 : (null : stdgo.Error) };
    }
