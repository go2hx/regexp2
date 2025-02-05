package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.Regexp2_t_fastclock_static_extension.T_fastclock_static_extension) class T_fastclock {
    public var _current : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime = ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime);
    public var _clockEnd : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime = ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _start : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _running : Bool = false;
    public function new(?_current:_internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime, ?_clockEnd:_internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_start:stdgo._internal.time.Time_time.Time, ?_running:Bool) {
        if (_current != null) this._current = _current;
        if (_clockEnd != null) this._clockEnd = _clockEnd;
        if (_mu != null) this._mu = _mu;
        if (_start != null) this._start = _start;
        if (_running != null) this._running = _running;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fastclock(_current, _clockEnd, _mu, _start, _running);
    }
}
