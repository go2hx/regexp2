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
function testECMADecimalLookahead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\1(A)" : stdgo.GoString), (256 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var __tmp__ = @:check2r _re.findStringMatch(("AA" : stdgo.GoString)), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _c = (@:check2r _m.groupCount() : stdgo.GoInt);
            if (_c != ((2 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("Group count !=2 (%d)" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
        {
            var _s = ((@:check2r @:check2r _m.groupByNumber((0 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("A" : stdgo.GoString))) {
                @:check2r _t.fatalf(("Group0 != \'A\' (\'%s\')" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
        {
            var _s = ((@:check2r @:check2r _m.groupByNumber((1 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (("A" : stdgo.GoString))) {
                @:check2r _t.fatalf(("Group1 != \'A\' (\'%s\')" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
