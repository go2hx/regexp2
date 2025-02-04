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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
    @:keep
    @:tdfield
    static public function string( _e:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ErrorCode.ErrorCode):stdgo.GoString {
        @:recv var _e:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ErrorCode.ErrorCode = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
