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
function _hexDigit(_ch:stdgo.GoInt32):stdgo.GoInt {
        {
            var _d = ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt);
            if ((_d <= (9u32 : stdgo.GoUInt) : Bool)) {
                return (_d : stdgo.GoInt);
            };
        };
        {
            var _d = ((_ch - (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        {
            var _d = ((_ch - (65 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
