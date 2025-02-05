package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.BmPrefix_asInterface) class BmPrefix_static_extension {
    @:keep
    @:tdfield
    static public function _matchPattern( _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _text:stdgo.Slice<stdgo.GoInt32>, _index:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        if ((((_text.length) - _index : stdgo.GoInt) < ((@:checkr _b ?? throw "null pointer dereference")._pattern.length) : Bool)) {
            return false;
        };
        if ((@:checkr _b ?? throw "null pointer dereference")._caseInsensitive) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _b ?? throw "null pointer dereference")._pattern.length) : Bool)) {
                    if (stdgo._internal.unicode.Unicode_tolower.toLower(_text[(_index + _i : stdgo.GoInt)]) != ((@:checkr _b ?? throw "null pointer dereference")._pattern[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                    _i++;
                };
            };
            return true;
        } else {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _b ?? throw "null pointer dereference")._pattern.length) : Bool)) {
                    if (_text[(_index + _i : stdgo.GoInt)] != ((@:checkr _b ?? throw "null pointer dereference")._pattern[(_i : stdgo.GoInt)])) {
                        return false;
                    };
                    _i++;
                };
            };
            return true;
        };
    }
    @:keep
    @:tdfield
    static public function isMatch( _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _text:stdgo.Slice<stdgo.GoInt32>, _index:stdgo.GoInt, _beglimit:stdgo.GoInt, _endlimit:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        if (!(@:checkr _b ?? throw "null pointer dereference")._rightToLeft) {
            if (((_index < _beglimit : Bool) || ((_endlimit - _index : stdgo.GoInt) < ((@:checkr _b ?? throw "null pointer dereference")._pattern.length) : Bool) : Bool)) {
                return false;
            };
            return @:check2r _b._matchPattern(_text, _index);
        } else {
            if (((_index > _endlimit : Bool) || ((_index - _beglimit : stdgo.GoInt) < ((@:checkr _b ?? throw "null pointer dereference")._pattern.length) : Bool) : Bool)) {
                return false;
            };
            return @:check2r _b._matchPattern(_text, (_index - ((@:checkr _b ?? throw "null pointer dereference")._pattern.length) : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function scan( _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _text:stdgo.Slice<stdgo.GoInt32>, _index:stdgo.GoInt, _beglimit:stdgo.GoInt, _endlimit:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt), __3:stdgo.GoInt = (0 : stdgo.GoInt), __4:stdgo.GoInt = (0 : stdgo.GoInt), __5:stdgo.GoInt = (0 : stdgo.GoInt), __6:stdgo.GoInt = (0 : stdgo.GoInt), __7:stdgo.GoInt = (0 : stdgo.GoInt), __8:stdgo.GoInt32 = (0 : stdgo.GoInt32), __9:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
var _unicodeLookup = __9, _chTest = __8, _advance = __7, _bump = __6, _endmatch = __5, _startmatch = __4, _match = __3, _test2 = __2, _test = __1, _defadv = __0;
        if (!(@:checkr _b ?? throw "null pointer dereference")._rightToLeft) {
            _defadv = ((@:checkr _b ?? throw "null pointer dereference")._pattern.length);
            _startmatch = (((@:checkr _b ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            _endmatch = (0 : stdgo.GoInt);
            _test = ((_index + _defadv : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
            _bump = (1 : stdgo.GoInt);
        } else {
            _defadv = -((@:checkr _b ?? throw "null pointer dereference")._pattern.length);
            _startmatch = (0 : stdgo.GoInt);
            _endmatch = (-_defadv - (1 : stdgo.GoInt) : stdgo.GoInt);
            _test = (_index + _defadv : stdgo.GoInt);
            _bump = (-1 : stdgo.GoInt);
        };
        var _chMatch = ((@:checkr _b ?? throw "null pointer dereference")._pattern[(_startmatch : stdgo.GoInt)] : stdgo.GoInt32);
        while (true) {
            if (((_test >= _endlimit : Bool) || (_test < _beglimit : Bool) : Bool)) {
                return (-1 : stdgo.GoInt);
            };
            _chTest = _text[(_test : stdgo.GoInt)];
            if ((@:checkr _b ?? throw "null pointer dereference")._caseInsensitive) {
                _chTest = stdgo._internal.unicode.Unicode_tolower.toLower(_chTest);
            };
            if (_chTest != (_chMatch)) {
                if ((_chTest < (128 : stdgo.GoInt32) : Bool)) {
                    _advance = (@:checkr _b ?? throw "null pointer dereference")._negativeASCII[(_chTest : stdgo.GoInt)];
                } else if (((_chTest < (65535 : stdgo.GoInt32) : Bool) && (((@:checkr _b ?? throw "null pointer dereference")._negativeUnicode.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _unicodeLookup = (@:checkr _b ?? throw "null pointer dereference")._negativeUnicode[((_chTest >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt)];
                    if (((_unicodeLookup.length) > (0 : stdgo.GoInt) : Bool)) {
                        _advance = _unicodeLookup[((_chTest & (255 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    } else {
                        _advance = _defadv;
                    };
                } else {
                    _advance = _defadv;
                };
                _test = (_test + (_advance) : stdgo.GoInt);
            } else {
                _test2 = _test;
                _match = _startmatch;
                while (true) {
                    if (_match == (_endmatch)) {
                        if ((@:checkr _b ?? throw "null pointer dereference")._rightToLeft) {
                            return (_test2 + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            return _test2;
                        };
                    };
                    _match = (_match - (_bump) : stdgo.GoInt);
                    _test2 = (_test2 - (_bump) : stdgo.GoInt);
                    _chTest = _text[(_test2 : stdgo.GoInt)];
                    if ((@:checkr _b ?? throw "null pointer dereference")._caseInsensitive) {
                        _chTest = stdgo._internal.unicode.Unicode_tolower.toLower(_chTest);
                    };
                    if (_chTest != ((@:checkr _b ?? throw "null pointer dereference")._pattern[(_match : stdgo.GoInt)])) {
                        _advance = (@:checkr _b ?? throw "null pointer dereference")._positive[(_match : stdgo.GoInt)];
                        if ((_chTest < (128 : stdgo.GoInt32) : Bool)) {
                            _test2 = (((_match - _startmatch : stdgo.GoInt)) + (@:checkr _b ?? throw "null pointer dereference")._negativeASCII[(_chTest : stdgo.GoInt)] : stdgo.GoInt);
                        } else if (((_chTest < (65535 : stdgo.GoInt32) : Bool) && (((@:checkr _b ?? throw "null pointer dereference")._negativeUnicode.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                            _unicodeLookup = (@:checkr _b ?? throw "null pointer dereference")._negativeUnicode[((_chTest >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt)];
                            if (((_unicodeLookup.length) > (0 : stdgo.GoInt) : Bool)) {
                                _test2 = (((_match - _startmatch : stdgo.GoInt)) + _unicodeLookup[((_chTest & (255 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoInt);
                            } else {
                                _test = (_test + (_advance) : stdgo.GoInt);
                                break;
                            };
                        } else {
                            _test = (_test + (_advance) : stdgo.GoInt);
                            break;
                        };
                        if ((@:checkr _b ?? throw "null pointer dereference")._rightToLeft) {
                            if ((_test2 < _advance : Bool)) {
                                _advance = _test2;
                            };
                        } else if ((_test2 > _advance : Bool)) {
                            _advance = _test2;
                        };
                        _test = (_test + (_advance) : stdgo.GoInt);
                        break;
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function dump( _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _indent:stdgo.GoString):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%sBM Pattern: %s\n%sPositive: " : stdgo.GoString), stdgo.Go.toInterface(_indent), stdgo.Go.toInterface(((@:checkr _b ?? throw "null pointer dereference")._pattern : stdgo.GoString)), stdgo.Go.toInterface(_indent));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _b ?? throw "null pointer dereference")._positive.length) : Bool)) {
                @:check2r _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _b ?? throw "null pointer dereference")._positive[(_i : stdgo.GoInt)]).__copy__());
@:check2r _buf.writeRune((32 : stdgo.GoInt32));
                _i++;
            };
        };
        @:check2r _buf.writeRune((10 : stdgo.GoInt32));
        if ((@:checkr _b ?? throw "null pointer dereference")._negativeASCII != null) {
            @:check2r _buf.writeString(_indent?.__copy__());
            @:check2r _buf.writeString(("Negative table\n" : stdgo.GoString));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _b ?? throw "null pointer dereference")._negativeASCII.length) : Bool)) {
                    if ((@:checkr _b ?? throw "null pointer dereference")._negativeASCII[(_i : stdgo.GoInt)] != (((@:checkr _b ?? throw "null pointer dereference")._pattern.length))) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%s  %s %s\n" : stdgo.GoString), stdgo.Go.toInterface(_indent), stdgo.Go.toInterface(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_escape.escape(((_i : stdgo.GoInt32) : stdgo.GoString).__copy__())), stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _b ?? throw "null pointer dereference")._negativeASCII[(_i : stdgo.GoInt)])));
                    };
                    _i++;
                };
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        return ((@:checkr _b ?? throw "null pointer dereference")._pattern : stdgo.GoString)?.__copy__();
    }
}
