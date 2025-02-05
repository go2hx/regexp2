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
function benchmarkParserPrefixLongLen(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\r{100001}T+" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _inp = (((stdgo._internal.strings.Strings_repeat.repeat(("testing" : stdgo.GoString), (10000 : stdgo.GoInt)) + stdgo._internal.strings.Strings_repeat.repeat(("\r" : stdgo.GoString), (100000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("TTTT" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var __tmp__ = @:check2r _re.matchString(_inp.__copy__()), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _b.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    } else if (_m) {
                        @:check2r _b.fatalf(("Expected no match" : stdgo.GoString));
                    };
                };
                _i++;
            };
        };
    }
