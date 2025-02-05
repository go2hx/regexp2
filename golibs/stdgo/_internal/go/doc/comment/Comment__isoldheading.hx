package stdgo._internal.go.doc.comment;
function _isOldHeading(_line:stdgo.GoString, _all:stdgo.Slice<stdgo.GoString>, _off:stdgo.GoInt):Bool {
        if ((((((_off <= (0 : stdgo.GoInt) : Bool) || _all[(_off - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((_off + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_all.length) : Bool) : Bool) || _all[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (stdgo._internal.go.doc.comment.Comment__leadingspace._leadingSpace(_all[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return false;
        };
        _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_line?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
        if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || !stdgo._internal.unicode.Unicode_isupper.isUpper(_r) : Bool)) {
            return false;
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_line?.__copy__());
            _r = @:tmpset0 __tmp__._0;
        };
        if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_r) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
            return false;
        };
        if (stdgo._internal.strings.Strings_containsany.containsAny(_line?.__copy__(), (";:!?+*/=[]{}_^°&§~%#@<\">\\" : stdgo.GoString))) {
            return false;
        };
        {
            var _b = (_line?.__copy__() : stdgo.GoString);
            while (true) {
                var _ok:Bool = false;
                {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_b?.__copy__(), ("\'" : stdgo.GoString));
                        _b = @:tmpset0 __tmp__._1?.__copy__();
                        _ok = @:tmpset0 __tmp__._2;
                    };
                    if (!_ok) {
                        break;
                    };
                };
                if (((_b != ("s" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_b?.__copy__(), ("s " : stdgo.GoString)) : Bool)) {
                    return false;
                };
            };
        };
        {
            var _b = (_line?.__copy__() : stdgo.GoString);
            while (true) {
                var _ok:Bool = false;
                {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_b?.__copy__(), ("." : stdgo.GoString));
                        _b = @:tmpset0 __tmp__._1?.__copy__();
                        _ok = @:tmpset0 __tmp__._2;
                    };
                    if (!_ok) {
                        break;
                    };
                };
                if (((_b == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_b?.__copy__(), (" " : stdgo.GoString)) : Bool)) {
                    return false;
                };
            };
        };
        return true;
    }
