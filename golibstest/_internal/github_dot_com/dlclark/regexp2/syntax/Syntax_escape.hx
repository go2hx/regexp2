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
function escape(_input:stdgo.GoString):stdgo.GoString {
        var _b = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        for (__0 => _r in _input) {
            _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__escape._escape(_b, _r, false);
        };
        return (@:check2r _b.string() : stdgo.GoString)?.__copy__();
    }
