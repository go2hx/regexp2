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
function testControlBracketGroups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(cat)(\\c[*)(dog)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _inp = ((stdgo.Go.str("asdlkcat", 27, "dogiwod") : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var __0 = (4 : stdgo.GoInt), __1 = ((@:checkr _re ?? throw "null pointer dereference")._capsize : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("Capsize wrong, want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        var __tmp__ = @:check2r _re.findStringMatch(_inp?.__copy__()), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        if ((_m == null || (_m : Dynamic).__nil__)) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected match" : stdgo.GoString)));
        };
        var _g = @:check2r _m.groups();
        var _want = (new stdgo.Slice<stdgo.GoString>(4, 4, ...[(stdgo.Go.str("cat", 27, "dog") : stdgo.GoString)?.__copy__(), ("cat" : stdgo.GoString), (stdgo.Go.str(27) : stdgo.GoString)?.__copy__(), ("dog" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_g.length) : Bool)) {
                if (_want[(_i : stdgo.GoInt)] != ((@:check2 _g[(_i : stdgo.GoInt)].string() : stdgo.GoString))) {
                    @:check2r _t.fatalf(("Bad group num %v, want %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want[(_i : stdgo.GoInt)]), stdgo.Go.toInterface((@:check2 _g[(_i : stdgo.GoInt)].string() : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
