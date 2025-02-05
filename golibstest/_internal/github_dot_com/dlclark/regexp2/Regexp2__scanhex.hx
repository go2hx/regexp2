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
function _scanHex(_line:stdgo.GoString, _idx:stdgo.Pointer<stdgo.GoInt>):stdgo.GoUInt8 {
        if ((_idx.value >= ((_line.length) - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("not enough hex chars in %v at %v" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(_idx.value)));
        };
        _idx.value++;
        var _d1 = (_internal.github_dot_com.dlclark.regexp2.Regexp2__hexdigit._hexDigit(_line[(_idx.value : stdgo.GoInt)]) : stdgo.GoInt);
        _idx.value++;
        var _d2 = (_internal.github_dot_com.dlclark.regexp2.Regexp2__hexdigit._hexDigit(_line[(_idx.value : stdgo.GoInt)]) : stdgo.GoInt);
        if (((_d1 < (0 : stdgo.GoInt) : Bool) || (_d2 < (0 : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bad hex chars" : stdgo.GoString));
        };
        return (((_d1 * (16 : stdgo.GoInt) : stdgo.GoInt) + _d2 : stdgo.GoInt) : stdgo.GoUInt8);
    }
