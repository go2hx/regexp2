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
function testReplaceFunc_Groups(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("test(?<sub>ing)?" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var _count = (0 : stdgo.GoInt);
        var __tmp__ = @:check2r _re.replaceFunc(("This testing is another test testingly junk" : stdgo.GoString), function(_m:_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match):stdgo.GoString {
            _count++;
            if ((@:check2 _m.groupByName(("sub" : stdgo.GoString)).capture.length_ > (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.strconv.Strconv_itoa.itoa((_count * (-1 : stdgo.GoInt) : stdgo.GoInt))?.__copy__();
            };
            return stdgo._internal.strconv.Strconv_itoa.itoa(_count)?.__copy__();
        }, (-1 : stdgo.GoInt), (-1 : stdgo.GoInt)), _str:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0 = (("This -1 is another 2 -3ly junk" : stdgo.GoString) : stdgo.GoString), __1 = (_str?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("Replace failed, wanted %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
