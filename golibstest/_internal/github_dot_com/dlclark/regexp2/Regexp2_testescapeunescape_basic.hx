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
function testEscapeUnescape_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s1 = (("#$^*+(){}<>\\|. " : stdgo.GoString) : stdgo.GoString);
        var _s2 = (_internal.github_dot_com.dlclark.regexp2.Regexp2_escape.escape(_s1?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_unescape.unescape(_s2?.__copy__()), _s3:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected error during unescape: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __0 = (("\\#\\$\\^\\*\\+\\(\\)\\{\\}<>\\\\\\|\\.\\ " : stdgo.GoString) : stdgo.GoString), __1 = (_s2?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __0 = (_s1?.__copy__() : stdgo.GoString), __1 = (_s3?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
