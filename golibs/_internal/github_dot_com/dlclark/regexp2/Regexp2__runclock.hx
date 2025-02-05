package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _runClock():Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
            {
                final __f__ = @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            while ((@:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._current._read() <= @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._clockEnd._read() : Bool)) {
                @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
                stdgo._internal.time.Time_sleep.sleep(_internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod);
                @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
                var _newTime = (_internal.github_dot_com.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks(stdgo._internal.time.Time_since.since(_internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._start?.__copy__())) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
                @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._current._write(_newTime);
            };
            _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._running = false;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
