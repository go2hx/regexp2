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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function _putRunner( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        @:check2r (@:checkr _re ?? throw "null pointer dereference")._muRun.lock();
        (@:checkr _r ?? throw "null pointer dereference")._runtext = (null : stdgo.Slice<stdgo.GoInt32>);
        if (((@:checkr _r ?? throw "null pointer dereference")._runmatch != null && (((@:checkr _r ?? throw "null pointer dereference")._runmatch : Dynamic).__nil__ == null || !((@:checkr _r ?? throw "null pointer dereference")._runmatch : Dynamic).__nil__))) {
            (@:checkr (@:checkr _r ?? throw "null pointer dereference")._runmatch ?? throw "null pointer dereference").group.capture._text = (null : stdgo.Slice<stdgo.GoInt32>);
        };
        (@:checkr _re ?? throw "null pointer dereference")._runner = ((@:checkr _re ?? throw "null pointer dereference")._runner.__append__(_r));
        @:check2r (@:checkr _re ?? throw "null pointer dereference")._muRun.unlock();
    }
    @:keep
    @:tdfield
    static public function _getRunner( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        @:check2r (@:checkr _re ?? throw "null pointer dereference")._muRun.lock();
        {
            var _n = ((@:checkr _re ?? throw "null pointer dereference")._runner.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var _z = (@:checkr _re ?? throw "null pointer dereference")._runner[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (@:checkr _re ?? throw "null pointer dereference")._runner = ((@:checkr _re ?? throw "null pointer dereference")._runner.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>>);
                @:check2r (@:checkr _re ?? throw "null pointer dereference")._muRun.unlock();
                return _z;
            };
        };
        @:check2r (@:checkr _re ?? throw "null pointer dereference")._muRun.unlock();
        var _z = (stdgo.Go.setRef(({ _re : _re, _code : (@:checkr _re ?? throw "null pointer dereference")._code } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>);
        return _z;
    }
    @:keep
    @:tdfield
    static public function _run( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _quick:Bool, _textstart:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _runner = @:check2r _re._getRunner();
            {
                var _a0 = _runner;
                final __f__ = @:check2r _re._putRunner;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if ((_textstart < (0 : stdgo.GoInt) : Bool)) {
                if (@:check2r _re.rightToLeft()) {
                    _textstart = (_input.length);
                } else {
                    _textstart = (0 : stdgo.GoInt);
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } = @:check2r _runner._scan(_input, _textstart, _quick, (@:checkr _re ?? throw "null pointer dereference").matchTimeout);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
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
                return { _0 : (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile((_text : stdgo.GoString)?.__copy__(), _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions), _newRE:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = (_newRE : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp)?.__copy__();
            var x = (_re : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp);
            x.matchTimeout = __tmp__?.matchTimeout;
            x._pattern = __tmp__?._pattern;
            x._options = __tmp__?._options;
            x._caps = __tmp__?._caps;
            x._capnames = __tmp__?._capnames;
            x._capslist = __tmp__?._capslist;
            x._capsize = __tmp__?._capsize;
            x._code = __tmp__?._code;
            x._muRun = __tmp__?._muRun;
            x._runner = __tmp__?._runner;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return { _0 : ((@:check2r _re.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function groupNumberFromName( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _name:stdgo.GoString):stdgo.GoInt {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        if ((@:checkr _re ?? throw "null pointer dereference")._capnames != null) {
            {
                var __tmp__ = ((@:checkr _re ?? throw "null pointer dereference")._capnames != null && (@:checkr _re ?? throw "null pointer dereference")._capnames.exists(_name?.__copy__()) ? { _0 : (@:checkr _re ?? throw "null pointer dereference")._capnames[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _k:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _k;
                };
            };
            return (-1 : stdgo.GoInt);
        };
        var _result = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_name.length) : Bool)) {
                var _ch = (_name[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_ch > (57 : stdgo.GoUInt8) : Bool) || (_ch < (48 : stdgo.GoUInt8) : Bool) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
_result = (_result * ((10 : stdgo.GoInt)) : stdgo.GoInt);
_result = (_result + (((_ch - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
                _i++;
            };
        };
        if (((_result >= (0 : stdgo.GoInt) : Bool) && (_result < (@:checkr _re ?? throw "null pointer dereference")._capsize : Bool) : Bool)) {
            return _result;
        };
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function groupNameFromNumber( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        if ((@:checkr _re ?? throw "null pointer dereference")._capslist == null) {
            if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (@:checkr _re ?? throw "null pointer dereference")._capsize : Bool) : Bool)) {
                return stdgo._internal.strconv.Strconv_itoa.itoa(_i)?.__copy__();
            };
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        if ((@:checkr _re ?? throw "null pointer dereference")._caps != null) {
            var _ok:Bool = false;
            {
                {
                    var __tmp__ = ((@:checkr _re ?? throw "null pointer dereference")._caps != null && (@:checkr _re ?? throw "null pointer dereference")._caps.exists(_i) ? { _0 : (@:checkr _re ?? throw "null pointer dereference")._caps[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false });
                    _i = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            };
        };
        if (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < ((@:checkr _re ?? throw "null pointer dereference")._capslist.length) : Bool) : Bool)) {
            return (@:checkr _re ?? throw "null pointer dereference")._capslist[(_i : stdgo.GoInt)]?.__copy__();
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function getGroupNumbers( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var _result:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        if ((@:checkr _re ?? throw "null pointer dereference")._caps == null) {
            _result = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._capsize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_result.length) : Bool)) {
                    _result[(_i : stdgo.GoInt)] = _i;
                    _i++;
                };
            };
        } else {
            _result = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _re ?? throw "null pointer dereference")._caps.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            for (_k => _v in (@:checkr _re ?? throw "null pointer dereference")._caps) {
                _result[(_v : stdgo.GoInt)] = _k;
            };
        };
        return _result;
    }
    @:keep
    @:tdfield
    static public function getGroupNames( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var _result:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        if ((@:checkr _re ?? throw "null pointer dereference")._capslist == null) {
            _result = (new stdgo.Slice<stdgo.GoString>(((@:checkr _re ?? throw "null pointer dereference")._capsize : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_result.length) : Bool)) {
                    _result[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_itoa.itoa(_i).__copy__();
                    _i++;
                };
            };
        } else {
            _result = (new stdgo.Slice<stdgo.GoString>(((@:checkr _re ?? throw "null pointer dereference")._capslist.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            _result.__copyTo__((@:checkr _re ?? throw "null pointer dereference")._capslist);
        };
        return _result;
    }
    @:keep
    @:tdfield
    static public function matchRunes( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = @:check2r _re._run(true, (-1 : stdgo.GoInt), _r), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : (_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _getRunesAndStart( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString, _startAt:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoInt; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        if ((_startAt < (0 : stdgo.GoInt) : Bool)) {
            if (@:check2r _re.rightToLeft()) {
                var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__());
                return { _0 : _r, _1 : (_r.length) };
            };
            return { _0 : _internal.github_dot_com.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__()), _1 : (0 : stdgo.GoInt) };
        };
        var _ret = (new stdgo.Slice<stdgo.GoInt32>((_s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i = (0 : stdgo.GoInt);
        var _runeIdx = (-1 : stdgo.GoInt);
        for (_strIdx => _r in _s) {
            if (_strIdx == (_startAt)) {
                _runeIdx = _i;
            };
            _ret[(_i : stdgo.GoInt)] = _r;
            _i++;
        };
        if (_startAt == ((_s.length))) {
            _runeIdx = _i;
        };
        return { _0 : (_ret.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt32>), _1 : _runeIdx };
    }
    @:keep
    @:tdfield
    static public function matchString( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = @:check2r _re._run(true, (-1 : stdgo.GoInt), _internal.github_dot_com.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__())), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : false, _1 : _err };
        };
        return { _0 : (_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function findNextMatch( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        if ((_m == null || (_m : Dynamic).__nil__)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _startAt = ((@:checkr _m ?? throw "null pointer dereference")._textpos : stdgo.GoInt);
        if ((@:checkr _m ?? throw "null pointer dereference").group.capture.length_ == ((0 : stdgo.GoInt))) {
            if ((@:checkr _m ?? throw "null pointer dereference")._textpos == (((@:checkr _m ?? throw "null pointer dereference").group.capture._text.length))) {
                return { _0 : null, _1 : (null : stdgo.Error) };
            };
            if (@:check2r _re.rightToLeft()) {
                _startAt--;
            } else {
                _startAt++;
            };
        };
        return @:check2r _re._run(false, _startAt, (@:checkr _m ?? throw "null pointer dereference").group.capture._text);
    }
    @:keep
    @:tdfield
    static public function findRunesMatchStartingAt( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Slice<stdgo.GoInt32>, _startAt:stdgo.GoInt):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return @:check2r _re._run(false, _startAt, _r);
    }
    @:keep
    @:tdfield
    static public function findStringMatchStartingAt( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString, _startAt:stdgo.GoInt):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        if ((_startAt > (_s.length) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("startAt must be less than the length of the input string" : stdgo.GoString)) };
        };
        var __tmp__ = @:check2r _re._getRunesAndStart(_s?.__copy__(), _startAt), _r:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _startAt:stdgo.GoInt = __tmp__._1;
        if (_startAt == ((-1 : stdgo.GoInt))) {
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("startAt must align to the start of a valid rune in the input string" : stdgo.GoString)) };
        };
        return @:check2r _re._run(false, _startAt, _r);
    }
    @:keep
    @:tdfield
    static public function findRunesMatch( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return @:check2r _re._run(false, (-1 : stdgo.GoInt), _r);
    }
    @:keep
    @:tdfield
    static public function findStringMatch( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return @:check2r _re._run(false, (-1 : stdgo.GoInt), _internal.github_dot_com.dlclark.regexp2.Regexp2__getrunes._getRunes(_s?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function replaceFunc( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _input:stdgo.GoString, _evaluator:_internal.github_dot_com.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return _internal.github_dot_com.dlclark.regexp2.Regexp2__replace._replace(_re, null, _evaluator, _input?.__copy__(), _startAt, _count);
    }
    @:keep
    @:tdfield
    static public function replace( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _input:stdgo.GoString, _replacement:stdgo.GoString, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_newreplacerdata.newReplacerData(_replacement?.__copy__(), (@:checkr _re ?? throw "null pointer dereference")._caps, (@:checkr _re ?? throw "null pointer dereference")._capsize, (@:checkr _re ?? throw "null pointer dereference")._capnames, ((@:checkr _re ?? throw "null pointer dereference")._options : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)), _data:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        return _internal.github_dot_com.dlclark.regexp2.Regexp2__replace._replace(_re, _data, null, _input?.__copy__(), _startAt, _count);
    }
    @:keep
    @:tdfield
    static public function debug( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):Bool {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return ((@:checkr _re ?? throw "null pointer dereference")._options & (128 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) != ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function rightToLeft( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):Bool {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return ((@:checkr _re ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) != ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function string( _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):stdgo.GoString {
        @:recv var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = _re;
        return (@:checkr _re ?? throw "null pointer dereference")._pattern?.__copy__();
    }
}
