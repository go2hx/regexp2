package github_dot_com.dlclark.regexp2;
final defaultClockPeriod : stdgo._internal.time.Time_duration.Duration = _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultclockperiod.defaultClockPeriod;
final none : RegexOptions = _internal.github_dot_com.dlclark.regexp2.Regexp2_none.none;
final ignoreCase : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_ignorecase.ignoreCase;
final multiline : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_multiline.multiline;
final explicitCapture : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_explicitcapture.explicitCapture;
final compiled : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_compiled.compiled;
final singleline : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_singleline.singleline;
final ignorePatternWhitespace : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_ignorepatternwhitespace.ignorePatternWhitespace;
final rightToLeft : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_righttoleft.rightToLeft;
final debug : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_debug.debug;
final eCMAScript : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_ecmascript.eCMAScript;
final rE2 : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_re2.rE2;
final unicode : haxe.UInt64 = _internal.github_dot_com.dlclark.regexp2.Regexp2_unicode.unicode;
var defaultMatchTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
private function get_defaultMatchTimeout():stdgo._internal.time.Time_duration.Duration return _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout;
private function set_defaultMatchTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
    _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout = v;
    return v;
}
var defaultUnmarshalOptions(get, set) : RegexOptions;
private function get_defaultUnmarshalOptions():RegexOptions return _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions;
private function set_defaultUnmarshalOptions(v:RegexOptions):RegexOptions {
    _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions = v;
    return v;
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.T_fastclock_static_extension) abstract T_fastclock(_internal.github_dot_com.dlclark.regexp2.Regexp2_t_fastclock.T_fastclock) from _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fastclock.T_fastclock to _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fastclock.T_fastclock {
    public var _current(get, set) : T_atomicTime;
    function get__current():T_atomicTime return this._current;
    function set__current(v:T_atomicTime):T_atomicTime {
        this._current = v;
        return v;
    }
    public var _clockEnd(get, set) : T_atomicTime;
    function get__clockEnd():T_atomicTime return this._clockEnd;
    function set__clockEnd(v:T_atomicTime):T_atomicTime {
        this._clockEnd = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _start(get, set) : stdgo._internal.time.Time_time.Time;
    function get__start():stdgo._internal.time.Time_time.Time return this._start;
    function set__start(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this._start = v;
        return v;
    }
    public var _running(get, set) : Bool;
    function get__running():Bool return this._running;
    function set__running(v:Bool):Bool {
        this._running = v;
        return v;
    }
    public function new(?_current:T_atomicTime, ?_clockEnd:T_atomicTime, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_start:stdgo._internal.time.Time_time.Time, ?_running:Bool) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fastclock.T_fastclock(_current, _clockEnd, _mu, _start, _running);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.T_atomicTime_static_extension) abstract T_atomicTime(_internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime) from _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime to _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime {
    public var _v(get, set) : haxe.Int64;
    function get__v():haxe.Int64 return this._v;
    function set__v(v:haxe.Int64):haxe.Int64 {
        this._v = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_v:haxe.Int64) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime((_v : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.Match_static_extension) abstract Match(_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match) from _internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match to _internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match {
    public var group(get, set) : Group;
    function get_group():Group return this.group;
    function set_group(v:Group):Group {
        this.group = v;
        return v;
    }
    public var _regex(get, set) : Regexp;
    function get__regex():Regexp return this._regex;
    function set__regex(v:Regexp):Regexp {
        this._regex = (v : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return v;
    }
    public var _otherGroups(get, set) : Array<Group>;
    function get__otherGroups():Array<Group> return [for (i in this._otherGroups) i];
    function set__otherGroups(v:Array<Group>):Array<Group> {
        this._otherGroups = ([for (i in v) i] : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>);
        return v;
    }
    public var _textpos(get, set) : StdTypes.Int;
    function get__textpos():StdTypes.Int return this._textpos;
    function set__textpos(v:StdTypes.Int):StdTypes.Int {
        this._textpos = (v : stdgo.GoInt);
        return v;
    }
    public var _textstart(get, set) : StdTypes.Int;
    function get__textstart():StdTypes.Int return this._textstart;
    function set__textstart(v:StdTypes.Int):StdTypes.Int {
        this._textstart = (v : stdgo.GoInt);
        return v;
    }
    public var _capcount(get, set) : StdTypes.Int;
    function get__capcount():StdTypes.Int return this._capcount;
    function set__capcount(v:StdTypes.Int):StdTypes.Int {
        this._capcount = (v : stdgo.GoInt);
        return v;
    }
    public var _caps(get, set) : Array<StdTypes.Int>;
    function get__caps():Array<StdTypes.Int> return [for (i in this._caps) i];
    function set__caps(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._caps = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _sparseCaps(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get__sparseCaps():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this._sparseCaps;
    function set__sparseCaps(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this._sparseCaps = (v : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        return v;
    }
    public var _matches(get, set) : Array<Array<StdTypes.Int>>;
    function get__matches():Array<Array<StdTypes.Int>> return [for (i in this._matches) [for (i in i) i]];
    function set__matches(v:Array<Array<StdTypes.Int>>):Array<Array<StdTypes.Int>> {
        this._matches = ([for (i in v) ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        return v;
    }
    public var _matchcount(get, set) : Array<StdTypes.Int>;
    function get__matchcount():Array<StdTypes.Int> return [for (i in this._matchcount) i];
    function set__matchcount(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._matchcount = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _balancing(get, set) : Bool;
    function get__balancing():Bool return this._balancing;
    function set__balancing(v:Bool):Bool {
        this._balancing = v;
        return v;
    }
    public function new(?group:Group, ?_regex:Regexp, ?_otherGroups:Array<Group>, ?_textpos:StdTypes.Int, ?_textstart:StdTypes.Int, ?_capcount:StdTypes.Int, ?_caps:Array<StdTypes.Int>, ?_sparseCaps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_matches:Array<Array<StdTypes.Int>>, ?_matchcount:Array<StdTypes.Int>, ?_balancing:Bool) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match(
group,
(_regex : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>),
([for (i in _otherGroups) i] : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>),
(_textpos : stdgo.GoInt),
(_textstart : stdgo.GoInt),
(_capcount : stdgo.GoInt),
([for (i in _caps) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
(_sparseCaps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>),
([for (i in _matches) ([for (i in i) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>)] : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>),
([for (i in _matchcount) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
_balancing);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.Group_static_extension) abstract Group(_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group) from _internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group to _internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group {
    public var capture(get, set) : Capture;
    function get_capture():Capture return this.capture;
    function set_capture(v:Capture):Capture {
        this.capture = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var captures(get, set) : Array<Capture>;
    function get_captures():Array<Capture> return [for (i in this.captures) i];
    function set_captures(v:Array<Capture>):Array<Capture> {
        this.captures = ([for (i in v) i] : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>);
        return v;
    }
    public function new(?capture:Capture, ?name:String, ?captures:Array<Capture>) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group(capture, (name : stdgo.GoString), ([for (i in captures) i] : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.Capture_static_extension) abstract Capture(_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture) from _internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture to _internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture {
    public var _text(get, set) : Array<StdTypes.Int>;
    function get__text():Array<StdTypes.Int> return [for (i in this._text) i];
    function set__text(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._text = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public var length_(get, set) : StdTypes.Int;
    function get_length_():StdTypes.Int return this.length_;
    function set_length_(v:StdTypes.Int):StdTypes.Int {
        this.length_ = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_text:Array<StdTypes.Int>, ?index:StdTypes.Int, ?length_:StdTypes.Int) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture(([for (i in _text) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>), (index : stdgo.GoInt), (length_ : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.Regexp_static_extension) abstract Regexp(_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp) from _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp to _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp {
    public var matchTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_matchTimeout():stdgo._internal.time.Time_duration.Duration return this.matchTimeout;
    function set_matchTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.matchTimeout = v;
        return v;
    }
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _options(get, set) : RegexOptions;
    function get__options():RegexOptions return this._options;
    function set__options(v:RegexOptions):RegexOptions {
        this._options = v;
        return v;
    }
    public var _caps(get, set) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>;
    function get__caps():stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> return this._caps;
    function set__caps(v:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>):stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> {
        this._caps = (v : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        return v;
    }
    public var _capnames(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>;
    function get__capnames():stdgo.GoMap<stdgo.GoString, stdgo.GoInt> return this._capnames;
    function set__capnames(v:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.GoMap<stdgo.GoString, stdgo.GoInt> {
        this._capnames = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        return v;
    }
    public var _capslist(get, set) : Array<String>;
    function get__capslist():Array<String> return [for (i in this._capslist) i];
    function set__capslist(v:Array<String>):Array<String> {
        this._capslist = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _capsize(get, set) : StdTypes.Int;
    function get__capsize():StdTypes.Int return this._capsize;
    function set__capsize(v:StdTypes.Int):StdTypes.Int {
        this._capsize = (v : stdgo.GoInt);
        return v;
    }
    public var _code(get, set) : github_dot_com.dlclark.regexp2.syntax.Syntax.Code;
    function get__code():github_dot_com.dlclark.regexp2.syntax.Syntax.Code return this._code;
    function set__code(v:github_dot_com.dlclark.regexp2.syntax.Syntax.Code):github_dot_com.dlclark.regexp2.syntax.Syntax.Code {
        this._code = (v : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>);
        return v;
    }
    public var _muRun(get, set) : stdgo._internal.sync.Sync_mutex.Mutex;
    function get__muRun():stdgo._internal.sync.Sync_mutex.Mutex return this._muRun;
    function set__muRun(v:stdgo._internal.sync.Sync_mutex.Mutex):stdgo._internal.sync.Sync_mutex.Mutex {
        this._muRun = (v : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>);
        return v;
    }
    public var _runner(get, set) : Array<T_runner>;
    function get__runner():Array<T_runner> return [for (i in this._runner) i];
    function set__runner(v:Array<T_runner>):Array<T_runner> {
        this._runner = ([for (i in v) (i : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>)] : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>>);
        return v;
    }
    public function new(?matchTimeout:stdgo._internal.time.Time_duration.Duration, ?_pattern:String, ?_options:RegexOptions, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_capslist:Array<String>, ?_capsize:StdTypes.Int, ?_code:github_dot_com.dlclark.regexp2.syntax.Syntax.Code, ?_muRun:stdgo._internal.sync.Sync_mutex.Mutex, ?_runner:Array<T_runner>) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp(matchTimeout, (_pattern : stdgo.GoString), _options, (_caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), (_capnames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), ([for (i in _capslist) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_capsize : stdgo.GoInt), (_code : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>), (_muRun : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), ([for (i in _runner) (i : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>)] : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(github_dot_com.dlclark.regexp2.Regexp2.T_runner_static_extension) abstract T_runner(_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner) from _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner to _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner {
    public var _re(get, set) : Regexp;
    function get__re():Regexp return this._re;
    function set__re(v:Regexp):Regexp {
        this._re = (v : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return v;
    }
    public var _code(get, set) : github_dot_com.dlclark.regexp2.syntax.Syntax.Code;
    function get__code():github_dot_com.dlclark.regexp2.syntax.Syntax.Code return this._code;
    function set__code(v:github_dot_com.dlclark.regexp2.syntax.Syntax.Code):github_dot_com.dlclark.regexp2.syntax.Syntax.Code {
        this._code = (v : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>);
        return v;
    }
    public var _runtextstart(get, set) : StdTypes.Int;
    function get__runtextstart():StdTypes.Int return this._runtextstart;
    function set__runtextstart(v:StdTypes.Int):StdTypes.Int {
        this._runtextstart = (v : stdgo.GoInt);
        return v;
    }
    public var _runtext(get, set) : Array<StdTypes.Int>;
    function get__runtext():Array<StdTypes.Int> return [for (i in this._runtext) i];
    function set__runtext(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._runtext = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _runtextpos(get, set) : StdTypes.Int;
    function get__runtextpos():StdTypes.Int return this._runtextpos;
    function set__runtextpos(v:StdTypes.Int):StdTypes.Int {
        this._runtextpos = (v : stdgo.GoInt);
        return v;
    }
    public var _runtextend(get, set) : StdTypes.Int;
    function get__runtextend():StdTypes.Int return this._runtextend;
    function set__runtextend(v:StdTypes.Int):StdTypes.Int {
        this._runtextend = (v : stdgo.GoInt);
        return v;
    }
    public var _runtrack(get, set) : Array<StdTypes.Int>;
    function get__runtrack():Array<StdTypes.Int> return [for (i in this._runtrack) i];
    function set__runtrack(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._runtrack = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _runtrackpos(get, set) : StdTypes.Int;
    function get__runtrackpos():StdTypes.Int return this._runtrackpos;
    function set__runtrackpos(v:StdTypes.Int):StdTypes.Int {
        this._runtrackpos = (v : stdgo.GoInt);
        return v;
    }
    public var _runstack(get, set) : Array<StdTypes.Int>;
    function get__runstack():Array<StdTypes.Int> return [for (i in this._runstack) i];
    function set__runstack(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._runstack = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _runstackpos(get, set) : StdTypes.Int;
    function get__runstackpos():StdTypes.Int return this._runstackpos;
    function set__runstackpos(v:StdTypes.Int):StdTypes.Int {
        this._runstackpos = (v : stdgo.GoInt);
        return v;
    }
    public var _runcrawl(get, set) : Array<StdTypes.Int>;
    function get__runcrawl():Array<StdTypes.Int> return [for (i in this._runcrawl) i];
    function set__runcrawl(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._runcrawl = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _runcrawlpos(get, set) : StdTypes.Int;
    function get__runcrawlpos():StdTypes.Int return this._runcrawlpos;
    function set__runcrawlpos(v:StdTypes.Int):StdTypes.Int {
        this._runcrawlpos = (v : stdgo.GoInt);
        return v;
    }
    public var _runtrackcount(get, set) : StdTypes.Int;
    function get__runtrackcount():StdTypes.Int return this._runtrackcount;
    function set__runtrackcount(v:StdTypes.Int):StdTypes.Int {
        this._runtrackcount = (v : stdgo.GoInt);
        return v;
    }
    public var _runmatch(get, set) : Match;
    function get__runmatch():Match return this._runmatch;
    function set__runmatch(v:Match):Match {
        this._runmatch = (v : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        return v;
    }
    public var _ignoreTimeout(get, set) : Bool;
    function get__ignoreTimeout():Bool return this._ignoreTimeout;
    function set__ignoreTimeout(v:Bool):Bool {
        this._ignoreTimeout = v;
        return v;
    }
    public var _timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get__timeout():stdgo._internal.time.Time_duration.Duration return this._timeout;
    function set__timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this._timeout = v;
        return v;
    }
    public var _deadline(get, set) : T_fasttime;
    function get__deadline():T_fasttime return this._deadline;
    function set__deadline(v:T_fasttime):T_fasttime {
        this._deadline = v;
        return v;
    }
    public var _operator(get, set) : github_dot_com.dlclark.regexp2.syntax.Syntax.InstOp;
    function get__operator():github_dot_com.dlclark.regexp2.syntax.Syntax.InstOp return this._operator;
    function set__operator(v:github_dot_com.dlclark.regexp2.syntax.Syntax.InstOp):github_dot_com.dlclark.regexp2.syntax.Syntax.InstOp {
        this._operator = v;
        return v;
    }
    public var _codepos(get, set) : StdTypes.Int;
    function get__codepos():StdTypes.Int return this._codepos;
    function set__codepos(v:StdTypes.Int):StdTypes.Int {
        this._codepos = (v : stdgo.GoInt);
        return v;
    }
    public var _rightToLeft(get, set) : Bool;
    function get__rightToLeft():Bool return this._rightToLeft;
    function set__rightToLeft(v:Bool):Bool {
        this._rightToLeft = v;
        return v;
    }
    public var _caseInsensitive(get, set) : Bool;
    function get__caseInsensitive():Bool return this._caseInsensitive;
    function set__caseInsensitive(v:Bool):Bool {
        this._caseInsensitive = v;
        return v;
    }
    public function new(?_re:Regexp, ?_code:github_dot_com.dlclark.regexp2.syntax.Syntax.Code, ?_runtextstart:StdTypes.Int, ?_runtext:Array<StdTypes.Int>, ?_runtextpos:StdTypes.Int, ?_runtextend:StdTypes.Int, ?_runtrack:Array<StdTypes.Int>, ?_runtrackpos:StdTypes.Int, ?_runstack:Array<StdTypes.Int>, ?_runstackpos:StdTypes.Int, ?_runcrawl:Array<StdTypes.Int>, ?_runcrawlpos:StdTypes.Int, ?_runtrackcount:StdTypes.Int, ?_runmatch:Match, ?_ignoreTimeout:Bool, ?_timeout:stdgo._internal.time.Time_duration.Duration, ?_deadline:T_fasttime, ?_operator:github_dot_com.dlclark.regexp2.syntax.Syntax.InstOp, ?_codepos:StdTypes.Int, ?_rightToLeft:Bool, ?_caseInsensitive:Bool) this = new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner(
(_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>),
(_code : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>),
(_runtextstart : stdgo.GoInt),
([for (i in _runtext) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>),
(_runtextpos : stdgo.GoInt),
(_runtextend : stdgo.GoInt),
([for (i in _runtrack) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
(_runtrackpos : stdgo.GoInt),
([for (i in _runstack) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
(_runstackpos : stdgo.GoInt),
([for (i in _runcrawl) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
(_runcrawlpos : stdgo.GoInt),
(_runtrackcount : stdgo.GoInt),
(_runmatch : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>),
_ignoreTimeout,
_timeout,
_deadline,
_operator,
(_codepos : stdgo.GoInt),
_rightToLeft,
_caseInsensitive);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_fasttime = _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime;
typedef RegexOptions = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions;
typedef MatchEvaluator = _internal.github_dot_com.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator;
typedef T_fastclockPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fastclockpointer.T_fastclockPointer;
class T_fastclock_static_extension {

}
typedef T_atomicTimePointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictimepointer.T_atomicTimePointer;
class T_atomicTime_static_extension {
    static public function _write(_t:T_atomicTime, _v:T_fasttime):Void {
        final _t = (_t : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime_static_extension.T_atomicTime_static_extension._write(_t, _v);
    }
    static public function _read(_t:T_atomicTime):T_fasttime {
        final _t = (_t : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime.T_atomicTime>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_atomictime_static_extension.T_atomicTime_static_extension._read(_t);
    }
}
typedef MatchPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_matchpointer.MatchPointer;
class Match_static_extension {
    static public function _dump(_m:Match):String {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._dump(_m);
    }
    static public function _groupValueAppendToBuf(_m:Match, _groupnum:StdTypes.Int, _buf:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _groupnum = (_groupnum : stdgo.GoInt);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._groupValueAppendToBuf(_m, _groupnum, _buf);
    }
    static public function _populateOtherGroups(_m:Match):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._populateOtherGroups(_m);
    }
    static public function groups(_m:Match):Array<Group> {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        return [for (i in _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension.groups(_m)) i];
    }
    static public function groupByNumber(_m:Match, _num:StdTypes.Int):Group {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _num = (_num : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension.groupByNumber(_m, _num);
    }
    static public function groupByName(_m:Match, _name:String):Group {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _name = (_name : stdgo.GoString);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension.groupByName(_m, _name);
    }
    static public function groupCount(_m:Match):StdTypes.Int {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension.groupCount(_m);
    }
    static public function _removeMatch(_m:Match, _c:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _c = (_c : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._removeMatch(_m, _c);
    }
    static public function _balanceMatch(_m:Match, _c:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _c = (_c : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._balanceMatch(_m, _c);
    }
    static public function _addMatch(_m:Match, _c:StdTypes.Int, _start:StdTypes.Int, _l:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _c = (_c : stdgo.GoInt);
        final _start = (_start : stdgo.GoInt);
        final _l = (_l : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._addMatch(_m, _c, _start, _l);
    }
    static public function _matchLength(_m:Match, _cap:StdTypes.Int):StdTypes.Int {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _cap = (_cap : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._matchLength(_m, _cap);
    }
    static public function _matchIndex(_m:Match, _cap:StdTypes.Int):StdTypes.Int {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _cap = (_cap : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._matchIndex(_m, _cap);
    }
    static public function _isMatched(_m:Match, _cap:StdTypes.Int):Bool {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _cap = (_cap : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._isMatched(_m, _cap);
    }
    static public function _tidy(_m:Match, _textpos:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _textpos = (_textpos : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._tidy(_m, _textpos);
    }
    static public function _reset(_m:Match, _text:Array<StdTypes.Int>, _textstart:StdTypes.Int):Void {
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        final _text = ([for (i in _text) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _textstart = (_textstart : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension._reset(_m, _text, _textstart);
    }
    public static function string(__self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match):String {
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension.string(__self__);
    }
    public static function runes(__self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match):Array<StdTypes.Int> {
        return [for (i in _internal.github_dot_com.dlclark.regexp2.Regexp2_match_static_extension.Match_static_extension.runes(__self__)) i];
    }
}
typedef GroupPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_grouppointer.GroupPointer;
class Group_static_extension {
    public static function string(__self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group):String {
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_group_static_extension.Group_static_extension.string(__self__);
    }
    public static function runes(__self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group):Array<StdTypes.Int> {
        return [for (i in _internal.github_dot_com.dlclark.regexp2.Regexp2_group_static_extension.Group_static_extension.runes(__self__)) i];
    }
}
typedef CapturePointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_capturepointer.CapturePointer;
class Capture_static_extension {
    static public function runes(_c:Capture):Array<StdTypes.Int> {
        final _c = (_c : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>);
        return [for (i in _internal.github_dot_com.dlclark.regexp2.Regexp2_capture_static_extension.Capture_static_extension.runes(_c)) i];
    }
    static public function string(_c:Capture):String {
        final _c = (_c : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_capture_static_extension.Capture_static_extension.string(_c);
    }
}
typedef RegexpPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexppointer.RegexpPointer;
class Regexp_static_extension {
    static public function _putRunner(_re:Regexp, _r:T_runner):Void {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension._putRunner(_re, _r);
    }
    static public function _getRunner(_re:Regexp):T_runner {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension._getRunner(_re);
    }
    static public function _run(_re:Regexp, _quick:Bool, _textstart:StdTypes.Int, _input:Array<StdTypes.Int>):stdgo.Tuple<Match, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _textstart = (_textstart : stdgo.GoInt);
        final _input = ([for (i in _input) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension._run(_re, _quick, _textstart, _input);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalText(_re:Regexp, _text:Array<std.UInt>):stdgo.Error {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.unmarshalText(_re, _text);
    }
    static public function marshalText(_re:Regexp):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.marshalText(_re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function groupNumberFromName(_re:Regexp, _name:String):StdTypes.Int {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _name = (_name : stdgo.GoString);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.groupNumberFromName(_re, _name);
    }
    static public function groupNameFromNumber(_re:Regexp, _i:StdTypes.Int):String {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _i = (_i : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.groupNameFromNumber(_re, _i);
    }
    static public function getGroupNumbers(_re:Regexp):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return [for (i in _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.getGroupNumbers(_re)) i];
    }
    static public function getGroupNames(_re:Regexp):Array<String> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return [for (i in _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.getGroupNames(_re)) i];
    }
    static public function matchRunes(_re:Regexp, _r:Array<StdTypes.Int>):stdgo.Tuple<Bool, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.matchRunes(_re, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getRunesAndStart(_re:Regexp, _s:String, _startAt:StdTypes.Int):stdgo.Tuple<Array<StdTypes.Int>, StdTypes.Int> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _startAt = (_startAt : stdgo.GoInt);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension._getRunesAndStart(_re, _s, _startAt);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function matchString(_re:Regexp, _s:String):stdgo.Tuple<Bool, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.matchString(_re, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function findNextMatch(_re:Regexp, _m:Match):stdgo.Tuple<Match, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _m = (_m : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.findNextMatch(_re, _m);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function findRunesMatchStartingAt(_re:Regexp, _r:Array<StdTypes.Int>, _startAt:StdTypes.Int):stdgo.Tuple<Match, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _startAt = (_startAt : stdgo.GoInt);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.findRunesMatchStartingAt(_re, _r, _startAt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function findStringMatchStartingAt(_re:Regexp, _s:String, _startAt:StdTypes.Int):stdgo.Tuple<Match, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _startAt = (_startAt : stdgo.GoInt);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.findStringMatchStartingAt(_re, _s, _startAt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function findRunesMatch(_re:Regexp, _r:Array<StdTypes.Int>):stdgo.Tuple<Match, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _r = ([for (i in _r) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.findRunesMatch(_re, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function findStringMatch(_re:Regexp, _s:String):stdgo.Tuple<Match, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.findStringMatch(_re, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replaceFunc(_re:Regexp, _input:String, _evaluator:MatchEvaluator, _startAt:StdTypes.Int, _count:StdTypes.Int):stdgo.Tuple<String, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _input = (_input : stdgo.GoString);
        final _startAt = (_startAt : stdgo.GoInt);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.replaceFunc(_re, _input, _evaluator, _startAt, _count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_re:Regexp, _input:String, _replacement:String, _startAt:StdTypes.Int, _count:StdTypes.Int):stdgo.Tuple<String, stdgo.Error> {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        final _input = (_input : stdgo.GoString);
        final _replacement = (_replacement : stdgo.GoString);
        final _startAt = (_startAt : stdgo.GoInt);
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.replace(_re, _input, _replacement, _startAt, _count);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function debug(_re:Regexp):Bool {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.debug(_re);
    }
    static public function rightToLeft(_re:Regexp):Bool {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.rightToLeft(_re);
    }
    static public function string(_re:Regexp):String {
        final _re = (_re : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp_static_extension.Regexp_static_extension.string(_re);
    }
}
typedef T_runnerPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runnerpointer.T_runnerPointer;
class T_runner_static_extension {
    static public function _initTrackCount(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._initTrackCount(_r);
    }
    static public function _checkTimeout(_r:T_runner):stdgo.Error {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._checkTimeout(_r);
    }
    static public function _startTimeoutWatch(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._startTimeoutWatch(_r);
    }
    static public function _isECMABoundary(_r:T_runner, _index:StdTypes.Int, _startpos:StdTypes.Int, _endpos:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _index = (_index : stdgo.GoInt);
        final _startpos = (_startpos : stdgo.GoInt);
        final _endpos = (_endpos : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._isECMABoundary(_r, _index, _startpos, _endpos);
    }
    static public function _isBoundary(_r:T_runner, _index:StdTypes.Int, _startpos:StdTypes.Int, _endpos:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _index = (_index : stdgo.GoInt);
        final _startpos = (_startpos : stdgo.GoInt);
        final _endpos = (_endpos : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._isBoundary(_r, _index, _startpos, _endpos);
    }
    static public function _textposDescription(_r:T_runner):String {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._textposDescription(_r);
    }
    static public function _stackDescription(_r:T_runner, _a:Array<StdTypes.Int>, _index:StdTypes.Int):String {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _a = ([for (i in _a) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        final _index = (_index : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackDescription(_r, _a, _index);
    }
    static public function _dumpState(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._dumpState(_r);
    }
    static public function _uncapture(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._uncapture(_r);
    }
    static public function _transferCapture(_r:T_runner, _capnum:StdTypes.Int, _uncapnum:StdTypes.Int, _start:StdTypes.Int, _end:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _capnum = (_capnum : stdgo.GoInt);
        final _uncapnum = (_uncapnum : stdgo.GoInt);
        final _start = (_start : stdgo.GoInt);
        final _end = (_end : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._transferCapture(_r, _capnum, _uncapnum, _start, _end);
    }
    static public function _capture(_r:T_runner, _capnum:StdTypes.Int, _start:StdTypes.Int, _end:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _capnum = (_capnum : stdgo.GoInt);
        final _start = (_start : stdgo.GoInt);
        final _end = (_end : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._capture(_r, _capnum, _start, _end);
    }
    static public function _tidyMatch(_r:T_runner, _quick:Bool):Match {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._tidyMatch(_r, _quick);
    }
    static public function _initMatch(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._initMatch(_r);
    }
    static public function _findFirstChar(_r:T_runner):Bool {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._findFirstChar(_r);
    }
    static public function _charAt(_r:T_runner, _j:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _j = (_j : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._charAt(_r, _j);
    }
    static public function _backwardnext(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._backwardnext(_r);
    }
    static public function _refmatch(_r:T_runner, _index:StdTypes.Int, _len:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _index = (_index : stdgo.GoInt);
        final _len = (_len : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._refmatch(_r, _index, _len);
    }
    static public function _runematch(_r:T_runner, _str:Array<StdTypes.Int>):Bool {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _str = ([for (i in _str) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._runematch(_r, _str);
    }
    static public function _forwardcharnext(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._forwardcharnext(_r);
    }
    static public function _forwardchars(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._forwardchars(_r);
    }
    static public function _bump(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._bump(_r);
    }
    static public function _rightchars(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._rightchars(_r);
    }
    static public function _leftchars(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._leftchars(_r);
    }
    static public function _operand(_r:T_runner, _i:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _i = (_i : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._operand(_r, _i);
    }
    static public function _stackPeekN(_r:T_runner, _i:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _i = (_i : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackPeekN(_r, _i);
    }
    static public function _stackPeek(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackPeek(_r);
    }
    static public function _stackPopN(_r:T_runner, _framesize:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _framesize = (_framesize : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackPopN(_r, _framesize);
    }
    static public function _stackPop(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackPop(_r);
    }
    static public function _stackPush2(_r:T_runner, i1:StdTypes.Int, i2:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        final i2 = (i2 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackPush2(_r, i1, i2);
    }
    static public function _stackPush(_r:T_runner, i1:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._stackPush(_r, i1);
    }
    static public function _trackPeekN(_r:T_runner, _i:StdTypes.Int):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _i = (_i : stdgo.GoInt);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPeekN(_r, _i);
    }
    static public function _trackPeek(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPeek(_r);
    }
    static public function _trackPopN(_r:T_runner, _framesize:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _framesize = (_framesize : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPopN(_r, _framesize);
    }
    static public function _trackPop(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPop(_r);
    }
    static public function _setOperator(_r:T_runner, _op:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _op = (_op : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._setOperator(_r, _op);
    }
    static public function _backtrack(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._backtrack(_r);
    }
    static public function _trackPushNeg2(_r:T_runner, i1:StdTypes.Int, i2:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        final i2 = (i2 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPushNeg2(_r, i1, i2);
    }
    static public function _trackPushNeg1(_r:T_runner, i1:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPushNeg1(_r, i1);
    }
    static public function _trackPush3(_r:T_runner, i1:StdTypes.Int, i2:StdTypes.Int, i3:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        final i2 = (i2 : stdgo.GoInt);
        final i3 = (i3 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPush3(_r, i1, i2, i3);
    }
    static public function _trackPush2(_r:T_runner, i1:StdTypes.Int, i2:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        final i2 = (i2 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPush2(_r, i1, i2);
    }
    static public function _trackPush1(_r:T_runner, i1:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final i1 = (i1 : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPush1(_r, i1);
    }
    static public function _trackPush(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackPush(_r);
    }
    static public function _trackpos(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackpos(_r);
    }
    static public function _textPos(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._textPos(_r);
    }
    static public function _textstart(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._textstart(_r);
    }
    static public function _trackto(_r:T_runner, _newpos:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _newpos = (_newpos : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._trackto(_r, _newpos);
    }
    static public function _textto(_r:T_runner, _newpos:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _newpos = (_newpos : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._textto(_r, _newpos);
    }
    static public function _goTo(_r:T_runner, _newpos:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _newpos = (_newpos : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._goTo(_r, _newpos);
    }
    static public function _advance(_r:T_runner, _i:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _i = (_i : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._advance(_r, _i);
    }
    static public function _crawlpos(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._crawlpos(_r);
    }
    static public function _popcrawl(_r:T_runner):StdTypes.Int {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._popcrawl(_r);
    }
    static public function _crawl(_r:T_runner, _i:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _i = (_i : stdgo.GoInt);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._crawl(_r, _i);
    }
    static public function _ensureStorage(_r:T_runner):Void {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._ensureStorage(_r);
    }
    static public function _execute(_r:T_runner):stdgo.Error {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._execute(_r);
    }
    static public function _scan(_r:T_runner, _rt:Array<StdTypes.Int>, _textstart:StdTypes.Int, _quick:Bool, _timeout:stdgo._internal.time.Time_duration.Duration):stdgo.Tuple<Match, stdgo.Error> {
        final _r = (_r : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        final _rt = ([for (i in _rt) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        final _textstart = (_textstart : stdgo.GoInt);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner_static_extension.T_runner_static_extension._scan(_r, _rt, _textstart, _quick, _timeout);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_fasttimePointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttimepointer.T_fasttimePointer;
class T_fasttime_static_extension {
    static public function _reached(_t:T_fasttime):Bool {
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime_static_extension.T_fasttime_static_extension._reached(_t);
    }
}
typedef RegexOptionsPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptionspointer.RegexOptionsPointer;
class RegexOptions_static_extension {

}
typedef MatchEvaluatorPointer = _internal.github_dot_com.dlclark.regexp2.Regexp2_matchevaluatorpointer.MatchEvaluatorPointer;
class MatchEvaluator_static_extension {

}
/**
    * 
    * Package regexp2 is a regexp package that has an interface similar to Go's framework regexp engine but uses a
    * more feature full regex engine behind the scenes.
    * 
    * It doesn't have constant time guarantees, but it allows backtracking and is compatible with Perl5 and .NET.
    * You'll likely be better off with the RE2 engine from the regexp package and should only use this if you
    * need to write very complex patterns or require compatibility with .NET.
    * 
**/
class Regexp2 {
    /**
        * Compile parses a regular expression and returns, if successful,
        * a Regexp object that can be used to match against text.
    **/
    static public inline function compile(_expr:String, _opt:RegexOptions):stdgo.Tuple<Regexp, stdgo.Error> {
        final _expr = (_expr : stdgo.GoString);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_expr, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MustCompile is like Compile but panics if the expression cannot be parsed.
        * It simplifies safe initialization of global variables holding compiled regular
        * expressions.
    **/
    static public inline function mustCompile(_str:String, _opt:RegexOptions):Regexp {
        final _str = (_str : stdgo.GoString);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(_str, _opt);
    }
    /**
        * Escape adds backslashes to any special characters in the input string
    **/
    static public inline function escape(_input:String):String {
        final _input = (_input : stdgo.GoString);
        return _internal.github_dot_com.dlclark.regexp2.Regexp2_escape.escape(_input);
    }
    /**
        * Unescape removes any backslashes from previously-escaped special characters in the input string
    **/
    static public inline function unescape(_input:String):stdgo.Tuple<String, stdgo.Error> {
        final _input = (_input : stdgo.GoString);
        return {
            final obj = _internal.github_dot_com.dlclark.regexp2.Regexp2_unescape.unescape(_input);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * SetTimeoutPeriod is a debug function that sets the frequency of the timeout goroutine's sleep cycle.
        * Defaults to 100ms. The only benefit of setting this lower is that the 1 background goroutine that manages
        * timeouts may exit slightly sooner after all the timeouts have expired. See Github issue #63
    **/
    static public inline function setTimeoutCheckPeriod(_d:stdgo._internal.time.Time_duration.Duration):Void {
        _internal.github_dot_com.dlclark.regexp2.Regexp2_settimeoutcheckperiod.setTimeoutCheckPeriod(_d);
    }
    /**
        * StopTimeoutClock should only be used in unit tests to prevent the timeout clock goroutine
        * from appearing like a leaking goroutine
    **/
    static public inline function stopTimeoutClock():Void {
        _internal.github_dot_com.dlclark.regexp2.Regexp2_stoptimeoutclock.stopTimeoutClock();
    }
}
