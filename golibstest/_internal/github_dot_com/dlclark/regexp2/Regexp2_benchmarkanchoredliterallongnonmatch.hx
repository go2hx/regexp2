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
function benchmarkAnchoredLiteralLongNonMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _data = (("abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        var _x = (new stdgo.Slice<stdgo.GoInt32>(((32768 : stdgo.GoInt) * (_data.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (32768 : stdgo.GoInt) : Bool)) {
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (_data.length) : Bool)) {
                        _x[((_i * (_data.length) : stdgo.GoInt) + _j : stdgo.GoInt)] = (_data[(_j : stdgo.GoInt)] : stdgo.GoInt32);
                        _j++;
                    };
                };
                _i++;
            };
        };
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^zbc(d|e)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                {
                    var __tmp__ = @:check2r _re.matchRunes(_x), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_m || (_err != null) : Bool)) {
                        @:check2r _b.fatalf(("unexpected match or error! %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
