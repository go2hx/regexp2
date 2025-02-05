package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function _containsEnder(_line:stdgo.GoString, _ender:stdgo.GoUInt8, _allowFirst:Bool):Bool {
        var _index = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_line?.__copy__(), _ender) : stdgo.GoInt);
        if ((_index > (0 : stdgo.GoInt) : Bool)) {
            return true;
        } else if (((_index == (0 : stdgo.GoInt)) && _allowFirst : Bool)) {
            return true;
        };
        return false;
    }
