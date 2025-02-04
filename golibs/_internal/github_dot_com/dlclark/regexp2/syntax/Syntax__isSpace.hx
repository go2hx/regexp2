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
function _isSpace(_ch:stdgo.GoInt32):Bool {
        return (((_ch <= (32 : stdgo.GoInt32) : Bool) && (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax___category.__category[(_ch : stdgo.GoInt)] == (2 : stdgo.GoUInt8)) : Bool));
    }
