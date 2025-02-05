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
function testRepeatingGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(data?)+" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var __tmp__ = @:check2r _re.findStringMatch(("datadat" : stdgo.GoString)), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
        };
        var _g = @:check2r _m.groupByNumber((1 : stdgo.GoInt));
        if ((_g == null || (_g : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected group" : stdgo.GoString));
        };
        {
            var __0 = (2 : stdgo.GoInt), __1 = ((@:checkr _g ?? throw "null pointer dereference").captures.length : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("wanted cap count %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __0 = ((@:check2 (@:checkr _g ?? throw "null pointer dereference").captures[(1 : stdgo.GoInt)].string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((@:check2 (@:checkr _g ?? throw "null pointer dereference").capture.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected last capture of the group to be embedded" : stdgo.GoString));
            };
        };
        {
            var __0 = (("data" : stdgo.GoString) : stdgo.GoString), __1 = ((@:check2 (@:checkr _g ?? throw "null pointer dereference").captures[(0 : stdgo.GoInt)].string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected cap 0 to be %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __0 = (("dat" : stdgo.GoString) : stdgo.GoString), __1 = ((@:check2 (@:checkr _g ?? throw "null pointer dereference").captures[(1 : stdgo.GoInt)].string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected cap 1 to be %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
