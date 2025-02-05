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
function _scanOctal(_line:stdgo.GoString, _idx:stdgo.Pointer<stdgo.GoInt>):stdgo.GoUInt8 {
        var _c = (3 : stdgo.GoInt);
        {
            var _diff = ((_line.length) - _idx.value : stdgo.GoInt);
            if ((_c > _diff : Bool)) {
                _c = _diff;
            };
        };
        var _i = (0 : stdgo.GoInt);
        var _d = ((_line[(_idx.value : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
        while (((_c > (0 : stdgo.GoInt) : Bool) && (_d <= (7 : stdgo.GoInt) : Bool) : Bool)) {
            _i = (_i * ((8 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
            _c--;
            _idx.value++;
            if ((_idx.value < (_line.length) : Bool)) {
                _d = ((_line[(_idx.value : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
            };
        };
        _idx.value--;
        _i = (_i & ((255 : stdgo.GoInt)) : stdgo.GoInt);
        return (_i : stdgo.GoUInt8);
    }
