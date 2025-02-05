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
function _unEscapeGroup(_val:stdgo.GoString):stdgo.GoString {
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_val.length) : Bool)) {
                var _ch = (_val[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_ch <= (31 : stdgo.GoUInt8) : Bool) || (_ch >= (127 : stdgo.GoUInt8) : Bool) : Bool)) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("\\x%.2x" : stdgo.GoString), stdgo.Go.toInterface(_ch));
                } else {
                    @:check2r _buf.writeByte(_ch);
                };
                _i++;
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
