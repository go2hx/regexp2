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
function _hexDigit(_ch:stdgo.GoUInt8):stdgo.GoInt {
        {
            var _d = ((_ch - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
            if ((_d <= (9u32 : stdgo.GoUInt) : Bool)) {
                return (_d : stdgo.GoInt);
            };
        };
        {
            var _d = ((_ch - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        {
            var _d = ((_ch - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
