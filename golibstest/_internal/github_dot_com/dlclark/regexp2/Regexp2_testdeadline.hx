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
function testDeadline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _delay in (new stdgo.Slice<stdgo._internal.time.Time_duration.Duration>(4, 4, ...[(_internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod / (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), _internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod, (_internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (5i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration), (_internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod * (10i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>)) {
            var _delay = (_delay : stdgo._internal.time.Time_duration.Duration);
            @:check2r _t.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_delay)))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                @:check2r _t.parallel();
                var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
                var _d = (_internal.github_dot_com.dlclark.regexp2.Regexp2__makedeadline._makeDeadline(_delay) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
                if (_d._reached()) {
                    @:check2r _t.fatalf(("deadline (%v) unexpectedly expired immediately" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_delay)));
                };
                stdgo._internal.time.Time_sleep.sleep((_delay / (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
                if (_d._reached()) {
                    @:check2r _t.fatalf(("deadline (%v) expired too soon (after %v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_delay)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()))));
                };
                stdgo._internal.time.Time_sleep.sleep(((_delay / (2i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) + ((2i64 : stdgo._internal.time.Time_duration.Duration) * _internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration));
                if (!_d._reached()) {
                    @:check2r _t.fatalf(("deadline (%v) did not expire within %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_delay)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.time.Time_since.since(_start?.__copy__()))));
                };
            });
        };
    }
