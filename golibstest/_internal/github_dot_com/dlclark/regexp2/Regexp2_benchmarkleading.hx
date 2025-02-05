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
function benchmarkLeading(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("[a-q][^u-z]{13}x" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _inp = _internal.github_dot_com.dlclark.regexp2.Regexp2__maketext._makeText((1000000 : stdgo.GoInt));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var __tmp__ = @:check2r _r.matchRunes(_inp), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (!_m) {
                        @:check2r _b.errorf(("Expected match" : stdgo.GoString));
                    } else if (_err != null) {
                        @:check2r _b.errorf(("Error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
