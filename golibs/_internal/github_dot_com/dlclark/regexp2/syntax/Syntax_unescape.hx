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
function unescape(_input:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _idx = (stdgo._internal.strings.Strings_indexRune.indexRune(_input?.__copy__(), (92 : stdgo.GoInt32)) : stdgo.GoInt);
        if (_idx == ((-1 : stdgo.GoInt))) {
            return { _0 : _input?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf = stdgo._internal.bytes.Bytes_newBufferString.newBufferString((_input.__slice__(0, _idx) : stdgo.GoString)?.__copy__());
        var _p = (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_parser.T_parser() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_parser.T_parser);
        @:check2 _p._setPattern((_input.__slice__((_idx + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
        while (true) {
            if (@:check2 _p._rightMost()) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : @:check2 _p._getErr((("illegal \\ at end of pattern" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ErrorCode.ErrorCode)) };
            };
            var __tmp__ = @:check2 _p._scanCharEscape(), _r:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
            @:check2r _buf.writeRune(_r);
            if (@:check2 _p._rightMost()) {
                return { _0 : (@:check2r _buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
            _r = @:check2 _p._moveRightGetChar();
            while (_r != ((92 : stdgo.GoInt32))) {
                @:check2r _buf.writeRune(_r);
                if (@:check2 _p._rightMost()) {
                    return { _0 : (@:check2r _buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                };
                _r = @:check2 _p._moveRightGetChar();
            };
        };
    }
