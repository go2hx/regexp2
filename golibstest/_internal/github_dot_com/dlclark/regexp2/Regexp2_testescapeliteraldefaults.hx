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
function testEscapeLiteralDefaults(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("a\\_test" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Expected compile fail" : stdgo.GoString)));
        };
        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("a\\_test" : stdgo.GoString), (512 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _r.matchString(("a_test" : stdgo.GoString)), _m:Bool = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (!_m) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected match" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = @:check2r _r.matchString(("a\\_test" : stdgo.GoString)), _m:Bool = __tmp__._0, __2:stdgo.Error = __tmp__._1;
            if (_m) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected no match" : stdgo.GoString)));
            };
        };
    }
