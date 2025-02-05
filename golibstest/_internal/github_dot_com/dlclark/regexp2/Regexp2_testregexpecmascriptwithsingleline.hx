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
function testRegexpECMAScriptWithSingleline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("." : stdgo.GoString), (16 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("\n" : stdgo.GoString)), _isMatch:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (!_isMatch) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected match" : stdgo.GoString)));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("." : stdgo.GoString), (272 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("\n" : stdgo.GoString)), _isMatch:Bool = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            if (!_isMatch) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected match" : stdgo.GoString)));
            };
        };
    }
