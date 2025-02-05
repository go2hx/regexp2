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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension) class Regexp {
    public var matchTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _pattern : stdgo.GoString = "";
    public var _options : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
    public var _caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _capnames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _capslist : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _capsize : stdgo.GoInt = 0;
    public var _code : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>);
    public var _muRun : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex> = (null : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
    public var _runner : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>> = (null : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>>);
    public function new(?matchTimeout:stdgo._internal.time.Time_duration.Duration, ?_pattern:stdgo.GoString, ?_options:_internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_capslist:stdgo.Slice<stdgo.GoString>, ?_capsize:stdgo.GoInt, ?_code:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>, ?_muRun:stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>, ?_runner:stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>>) {
        if (matchTimeout != null) this.matchTimeout = matchTimeout;
        if (_pattern != null) this._pattern = _pattern;
        if (_options != null) this._options = _options;
        if (_caps != null) this._caps = _caps;
        if (_capnames != null) this._capnames = _capnames;
        if (_capslist != null) this._capslist = _capslist;
        if (_capsize != null) this._capsize = _capsize;
        if (_code != null) this._code = _code;
        if (_muRun != null) this._muRun = _muRun;
        if (_runner != null) this._runner = _runner;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Regexp(matchTimeout, _pattern, _options, _caps, _capnames, _capslist, _capsize, _code, _muRun, _runner);
    }
}
