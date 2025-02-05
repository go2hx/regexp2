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
function _benchmark(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _re:stdgo.GoString, _n:stdgo.GoInt):Void {
        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(_re?.__copy__(), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _t = _internal.github_dot_com.dlclark.regexp2.Regexp2__maketext._makeText(_n);
        @:check2r _b.resetTimer();
        @:check2r _b.setBytes((_n : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var __tmp__ = @:check2r _r.matchRunes(_t), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_m) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("match!" : stdgo.GoString)));
                    } else if (_err != null) {
                        @:check2r _b.fatalf(("Err %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
