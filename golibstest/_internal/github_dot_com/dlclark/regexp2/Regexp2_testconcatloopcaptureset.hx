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
function testConcatLoopCaptureSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(A|B)*CD" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __0 = (1 : stdgo.GoInt), __1 = ((@:checkr (@:checkr _re ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets.length : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("wanted %v sets, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __0 = (("[AB]" : stdgo.GoString) : stdgo.GoString), __1 = (((@:checkr (@:checkr (@:checkr _re ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("wanted set 0 %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
