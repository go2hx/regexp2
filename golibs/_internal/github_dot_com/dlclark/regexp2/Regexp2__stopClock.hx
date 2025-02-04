package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _stopClock():Void {
        @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
        if (_internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._running) {
            @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._clockEnd._write((0i64 : _internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime));
        };
        @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
        var _isRunning = (true : Bool);
        while (_isRunning) {
            stdgo._internal.time.Time_sleep.sleep((_internal.github_dot_com.dlclark.regexp2.Regexp2__clockPeriod._clockPeriod / (2i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration));
            @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.lock();
            _isRunning = _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._running;
            @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._mu.unlock();
        };
    }
