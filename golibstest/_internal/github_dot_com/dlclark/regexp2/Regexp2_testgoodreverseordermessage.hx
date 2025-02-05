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
function testGoodReverseOrderMessage(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("[h-c]" : stdgo.GoString), (256 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected error" : stdgo.GoString)));
        };
        var _expected = (("error parsing regexp: [h-c] range in reverse order in `[h-c]`" : stdgo.GoString) : stdgo.GoString);
        if (_err.error() != (_expected)) {
            @:check2r _t.fatalf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_err.error()));
        };
    }
