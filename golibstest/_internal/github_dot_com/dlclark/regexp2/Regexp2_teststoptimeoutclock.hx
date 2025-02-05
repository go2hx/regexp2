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
function testStopTimeoutClock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("." : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        (@:checkr _r ?? throw "null pointer dereference").matchTimeout = (10000000000i64 : stdgo._internal.time.Time_duration.Duration);
        @:check2r _r.matchString(("a" : stdgo.GoString));
        var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_stoptimeoutclock.stopTimeoutClock();
        var _stop = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
        {
            var __0 = (_internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), __1 = (_stop.sub(_start?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
var _got = __1, _want = __0;
            if ((_want < _got : Bool)) {
                @:check2r _t.errorf(("Expected duration less than %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
            };
        };
        {
            var __0 = (false : Bool), __1 = (_internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._running : Bool);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.errorf(("Expected isRunning to be %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
