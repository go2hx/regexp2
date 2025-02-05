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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496_static_extension.T_benchmarkShortSearch___localname___benchmark_9496_static_extension) class T_benchmarkShortSearch___localname___benchmark_9496 {
    public var _name : stdgo.GoString = "";
    public var _parallel : Bool = false;
    public var _timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _increase : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public function new(?_name:stdgo.GoString, ?_parallel:Bool, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_increase:stdgo._internal.time.Time_duration.Duration) {
        if (_name != null) this._name = _name;
        if (_parallel != null) this._parallel = _parallel;
        if (_timeout != null) this._timeout = _timeout;
        if (_increase != null) this._increase = _increase;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkShortSearch___localname___benchmark_9496(_name, _parallel, _timeout, _increase);
    }
}
