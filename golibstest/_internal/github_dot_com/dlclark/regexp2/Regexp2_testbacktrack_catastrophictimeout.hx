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
function testBacktrack_CatastrophicTimeout(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("(.+)*\\?" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        @:check2r _t.logf(("code dump: %v" : stdgo.GoString), stdgo.Go.toInterface(@:check2r (@:checkr _r ?? throw "null pointer dereference")._code.dump()));
        {};
        {};
        var _lateAllowance = (_internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod + (500000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
        for (__8 => _timeout in (new stdgo.Slice<stdgo._internal.time.Time_duration.Duration>(7, 7, ...[(-1000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration), (1000000i64 : stdgo._internal.time.Time_duration.Duration), (10000000i64 : stdgo._internal.time.Time_duration.Duration), (100000000i64 : stdgo._internal.time.Time_duration.Duration), (500000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)]).__setNumber64__() : stdgo.Slice<stdgo._internal.time.Time_duration.Duration>)) {
            @:check2r _t.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface(_timeout)))?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                (@:checkr _r ?? throw "null pointer dereference").matchTimeout = _timeout;
                var _start = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
                var __tmp__ = @:check2r _r.findStringMatch(("Do you think you found the problem string!" : stdgo.GoString)), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _elapsed = (stdgo._internal.time.Time_since.since(_start?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                if (_err == null) {
                    @:check2r _t.errorf(("expected timeout err" : stdgo.GoString));
                };
                if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("Expected no match" : stdgo.GoString));
                };
                @:check2r _t.logf(("timeed out after %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_elapsed)));
                if ((_elapsed < (_timeout - (10000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    @:check2r _t.errorf(("Match timed out too quickly (%v instead of expected %v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_elapsed)), stdgo.Go.toInterface(stdgo.Go.asInterface((_timeout - (10000000i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration))));
                };
                if ((_elapsed > (_timeout + _lateAllowance : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    @:check2r _t.errorf(("Match timed out too late (%v instead of expected %v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_elapsed)), stdgo.Go.toInterface(stdgo.Go.asInterface((_timeout + _lateAllowance : stdgo._internal.time.Time_duration.Duration))));
                };
            });
        };
    }
