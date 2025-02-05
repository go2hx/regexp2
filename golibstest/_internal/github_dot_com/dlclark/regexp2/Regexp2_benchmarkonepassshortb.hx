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
function benchmarkOnePassShortB(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _x = (("abcddddddeeeededd" : stdgo.GoString) : stdgo.GoString);
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^.bc(?:d|e)*$" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var __tmp__ = @:check2r _re.matchString(_x.__copy__()), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((!_m || (_err != null) : Bool)) {
                        @:check2r _b.fatalf(("no match or error! %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
