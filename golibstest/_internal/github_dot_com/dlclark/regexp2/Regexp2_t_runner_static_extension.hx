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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.T_runner_asInterface) class T_runner_static_extension {
    @:keep
    @:tdfield
    static public function _initTrackCount( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackcount = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").trackCount;
    }
    @:keep
    @:tdfield
    static public function _checkTimeout( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._ignoreTimeout || !(@:checkr _r ?? throw "null pointer dereference")._deadline._reached() : Bool)) {
            return (null : stdgo.Error);
        };
        if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {};
        return stdgo._internal.fmt.Fmt_errorf.errorf(("match timeout after %v on input `%v`" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._timeout)), stdgo.Go.toInterface(((@:checkr _r ?? throw "null pointer dereference")._runtext : stdgo.GoString)));
    }
    @:keep
    @:tdfield
    static public function _startTimeoutWatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._ignoreTimeout) {
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._deadline = _internal.github_dot_com.dlclark.regexp2.Regexp2__makedeadline._makeDeadline((@:checkr _r ?? throw "null pointer dereference")._timeout);
    }
    @:keep
    @:tdfield
    static public function _isECMABoundary( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (((_index > _startpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isecmawordchar.isECMAWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) != (((_index < _endpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isecmawordchar.isECMAWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index : stdgo.GoInt)]) : Bool));
    }
    @:keep
    @:tdfield
    static public function _isBoundary( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (((_index > _startpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) != (((_index < _endpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index : stdgo.GoInt)]) : Bool));
    }
    @:keep
    @:tdfield
    static public function _textposDescription( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _r ?? throw "null pointer dereference")._runtextpos)?.__copy__());
        if ((@:check2r _buf.len() < (8 : stdgo.GoInt) : Bool)) {
            @:check2r _buf.writeString(stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), ((8 : stdgo.GoInt) - @:check2r _buf.len() : stdgo.GoInt))?.__copy__());
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_chardescription.charDescription((@:checkr _r ?? throw "null pointer dereference")._runtext[((@:checkr _r ?? throw "null pointer dereference")._runtextpos - (1 : stdgo.GoInt) : stdgo.GoInt)])?.__copy__());
        } else {
            @:check2r _buf.writeRune((94 : stdgo.GoInt32));
        };
        @:check2r _buf.writeRune((62 : stdgo.GoInt32));
        {
            var _i = ((@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt);
            while ((_i < (@:checkr _r ?? throw "null pointer dereference")._runtextend : Bool)) {
                @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_chardescription.charDescription((@:checkr _r ?? throw "null pointer dereference")._runtext[(_i : stdgo.GoInt)]).__copy__());
                _i++;
            };
        };
        if ((@:check2r _buf.len() >= (64 : stdgo.GoInt) : Bool)) {
            @:check2r _buf.truncate((61 : stdgo.GoInt));
            @:check2r _buf.writeString(("..." : stdgo.GoString));
        } else {
            @:check2r _buf.writeRune((36 : stdgo.GoInt32));
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _stackDescription( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _a:stdgo.Slice<stdgo.GoInt>, _index:stdgo.GoInt):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%v/%v" : stdgo.GoString), stdgo.Go.toInterface(((_a.length) - _index : stdgo.GoInt)), stdgo.Go.toInterface((_a.length)));
        if ((@:check2r _buf.len() < (8 : stdgo.GoInt) : Bool)) {
            @:check2r _buf.writeString(stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), ((8 : stdgo.GoInt) - @:check2r _buf.len() : stdgo.GoInt))?.__copy__());
        };
        @:check2r _buf.writeRune((40 : stdgo.GoInt32));
        {
            var _i = (_index : stdgo.GoInt);
            while ((_i < (_a.length) : Bool)) {
                if ((_i > _index : Bool)) {
                    @:check2r _buf.writeRune((32 : stdgo.GoInt32));
                };
@:check2r _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa(_a[(_i : stdgo.GoInt)]).__copy__());
                _i++;
            };
        };
        @:check2r _buf.writeRune((41 : stdgo.GoInt32));
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _dumpState( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _back = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((@:checkr _r ?? throw "null pointer dereference")._operator & (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _back = (" Back" : stdgo.GoString);
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._operator & (256 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _back = (_back + ((" Back2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        stdgo._internal.fmt.Fmt_printf.printf(("Text:  %v\nTrack: %v\nStack: %v\n       %s%s\n\n" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _r._textposDescription()), stdgo.Go.toInterface(@:check2r _r._stackDescription((@:checkr _r ?? throw "null pointer dereference")._runtrack, (@:checkr _r ?? throw "null pointer dereference")._runtrackpos)), stdgo.Go.toInterface(@:check2r _r._stackDescription((@:checkr _r ?? throw "null pointer dereference")._runstack, (@:checkr _r ?? throw "null pointer dereference")._runstackpos)), stdgo.Go.toInterface(@:check2r (@:checkr _r ?? throw "null pointer dereference")._code.opcodeDescription((@:checkr _r ?? throw "null pointer dereference")._codepos)), stdgo.Go.toInterface(_back));
    }
    @:keep
    @:tdfield
    static public function _uncapture( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _capnum = (@:check2r _r._popcrawl() : stdgo.GoInt);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._removeMatch(_capnum);
    }
    @:keep
    @:tdfield
    static public function _transferCapture( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _capnum:stdgo.GoInt, _uncapnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _end2 = __1, _start2 = __0;
        if ((_end < _start : Bool)) {
            var t = (_end : stdgo.GoInt);
            _end = _start;
            _start = t;
        };
        _start2 = @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchIndex(_uncapnum);
        _end2 = (_start2 + @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchLength(_uncapnum) : stdgo.GoInt);
        if ((_start >= _end2 : Bool)) {
            _end = _start;
            _start = _end2;
        } else if ((_end <= _start2 : Bool)) {
            _start = _start2;
        } else {
            if ((_end > _end2 : Bool)) {
                _end = _end2;
            };
            if ((_start2 > _start : Bool)) {
                _start = _start2;
            };
        };
        @:check2r _r._crawl(_uncapnum);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._balanceMatch(_uncapnum);
        if (_capnum != ((-1 : stdgo.GoInt))) {
            @:check2r _r._crawl(_capnum);
            @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._addMatch(_capnum, _start, (_end - _start : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function _capture( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _capnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((_end < _start : Bool)) {
            var t = (_end : stdgo.GoInt);
            _end = _start;
            _start = t;
        };
        @:check2r _r._crawl(_capnum);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._addMatch(_capnum, _start, (_end - _start : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _tidyMatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _quick:Bool):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if (!_quick) {
            var _match = (@:checkr _r ?? throw "null pointer dereference")._runmatch;
            (@:checkr _r ?? throw "null pointer dereference")._runmatch = null;
            @:check2r _match._tidy((@:checkr _r ?? throw "null pointer dereference")._runtextpos);
            return _match;
        } else {
            return (@:checkr _r ?? throw "null pointer dereference")._runmatch;
        };
    }
    @:keep
    @:tdfield
    static public function _initMatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._runmatch == null || ((@:checkr _r ?? throw "null pointer dereference")._runmatch : Dynamic).__nil__)) {
            if ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._caps != null) {
                (@:checkr _r ?? throw "null pointer dereference")._runmatch = _internal.github_dot_com.dlclark.regexp2.Regexp2__newmatchsparse._newMatchSparse((@:checkr _r ?? throw "null pointer dereference")._re, (@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._caps, (@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._capsize, (@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextstart);
            } else {
                (@:checkr _r ?? throw "null pointer dereference")._runmatch = _internal.github_dot_com.dlclark.regexp2.Regexp2__newmatch._newMatch((@:checkr _r ?? throw "null pointer dereference")._re, (@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._capsize, (@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextstart);
            };
        } else {
            @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._reset((@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextstart);
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._runcrawl != null) {
            (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = ((@:checkr _r ?? throw "null pointer dereference")._runtrack.length);
            (@:checkr _r ?? throw "null pointer dereference")._runstackpos = ((@:checkr _r ?? throw "null pointer dereference")._runstack.length);
            (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos = ((@:checkr _r ?? throw "null pointer dereference")._runcrawl.length);
            return;
        };
        @:check2r _r._initTrackCount();
        var _tracksize = ((@:checkr _r ?? throw "null pointer dereference")._runtrackcount * (8 : stdgo.GoInt) : stdgo.GoInt);
        var _stacksize = ((@:checkr _r ?? throw "null pointer dereference")._runtrackcount * (8 : stdgo.GoInt) : stdgo.GoInt);
        if ((_tracksize < (32 : stdgo.GoInt) : Bool)) {
            _tracksize = (32 : stdgo.GoInt);
        };
        if ((_stacksize < (16 : stdgo.GoInt) : Bool)) {
            _stacksize = (16 : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._runtrack = (new stdgo.Slice<stdgo.GoInt>((_tracksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = _tracksize;
        (@:checkr _r ?? throw "null pointer dereference")._runstack = (new stdgo.Slice<stdgo.GoInt>((_stacksize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos = _stacksize;
        (@:checkr _r ?? throw "null pointer dereference")._runcrawl = (new stdgo.Slice<stdgo.GoInt>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos = (32 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _findFirstChar( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (53 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            if (!(@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").rightToLeft) {
                if ((((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (0 : stdgo.GoInt) : Bool) : Bool)) || ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (@:checkr _r ?? throw "null pointer dereference")._runtextstart : Bool) : Bool)) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (@:checkr _r ?? throw "null pointer dereference")._runtextend;
                    return false;
                };
                if ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else if ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < (@:checkr _r ?? throw "null pointer dereference")._runtextend : Bool) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (@:checkr _r ?? throw "null pointer dereference")._runtextend;
                };
            } else {
                if (((((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < (@:checkr _r ?? throw "null pointer dereference")._runtextend : Bool) : Bool)) || ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((((@:checkr _r ?? throw "null pointer dereference")._runtextpos < ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference")._runtextpos == ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt)) && (@:check2r _r._charAt((@:checkr _r ?? throw "null pointer dereference")._runtextpos) != (10 : stdgo.GoInt32)) : Bool)) : Bool)) : Bool)) : Bool) || ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < (@:checkr _r ?? throw "null pointer dereference")._runtextstart : Bool) : Bool)) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (0 : stdgo.GoInt);
                    return false;
                };
                if ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (0 : stdgo.GoInt);
                };
            };
            if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix != null && (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__ == null || !((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__))) {
                return @:check2r (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix.isMatch((@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextpos, (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend);
            };
            return true;
        } else if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix != null && (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__ == null || !((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__))) {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos = @:check2r (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").bmPrefix.scan((@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextpos, (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend);
            if ((@:checkr _r ?? throw "null pointer dereference")._runtextpos == ((-1 : stdgo.GoInt))) {
                if ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").rightToLeft) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (0 : stdgo.GoInt);
                } else {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (@:checkr _r ?? throw "null pointer dereference")._runtextend;
                };
                return false;
            };
            return true;
        } else if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix == null || ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix : Dynamic).__nil__)) {
            return true;
        };
        (@:checkr _r ?? throw "null pointer dereference")._rightToLeft = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").rightToLeft;
        (@:checkr _r ?? throw "null pointer dereference")._caseInsensitive = (@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix ?? throw "null pointer dereference").caseInsensitive;
        var _set = ((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix ?? throw "null pointer dereference").prefixSet?.__copy__() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        if (_set.isSingleton()) {
            var _ch = (_set.singletonChar() : stdgo.GoInt32);
            {
                var _i = (@:check2r _r._forwardchars() : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    if (_ch == (@:check2r _r._forwardcharnext())) {
                        @:check2r _r._backwardnext();
                        return true;
                    };
                    _i--;
                };
            };
        } else {
            {
                var _i = (@:check2r _r._forwardchars() : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _n = (@:check2r _r._forwardcharnext() : stdgo.GoInt32);
if (_set.charIn(_n)) {
                        @:check2r _r._backwardnext();
                        return true;
                    };
                    _i--;
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _charAt( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _j:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtext[(_j : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _backwardnext( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos++;
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos--;
        };
    }
    @:keep
    @:tdfield
    static public function _refmatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _index:stdgo.GoInt, _len:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _cmpos = __2, _pos = __1, _c = __0;
        if (!(@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            if ((((@:checkr _r ?? throw "null pointer dereference")._runtextend - (@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt) < _len : Bool)) {
                return false;
            };
            _pos = ((@:checkr _r ?? throw "null pointer dereference")._runtextpos + _len : stdgo.GoInt);
        } else {
            if ((((@:checkr _r ?? throw "null pointer dereference")._runtextpos - (0 : stdgo.GoInt) : stdgo.GoInt) < _len : Bool)) {
                return false;
            };
            _pos = (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
        };
        _cmpos = (_index + _len : stdgo.GoInt);
        _c = _len;
        if (!(@:checkr _r ?? throw "null pointer dereference")._caseInsensitive) {
            while (_c != ((0 : stdgo.GoInt))) {
                _c--;
                _cmpos--;
                _pos--;
                if ((@:checkr _r ?? throw "null pointer dereference")._runtext[(_cmpos : stdgo.GoInt)] != ((@:checkr _r ?? throw "null pointer dereference")._runtext[(_pos : stdgo.GoInt)])) {
                    return false;
                };
            };
        } else {
            while (_c != ((0 : stdgo.GoInt))) {
                _c--;
                _cmpos--;
                _pos--;
                if (stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _r ?? throw "null pointer dereference")._runtext[(_cmpos : stdgo.GoInt)]) != (stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _r ?? throw "null pointer dereference")._runtext[(_pos : stdgo.GoInt)]))) {
                    return false;
                };
            };
        };
        if (!(@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            _pos = (_pos + (_len) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._runtextpos = _pos;
        return true;
    }
    @:keep
    @:tdfield
    static public function _runematch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _str:stdgo.Slice<stdgo.GoInt32>):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c = (_str.length : stdgo.GoInt);
        if (!(@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            if ((((@:checkr _r ?? throw "null pointer dereference")._runtextend - (@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt) < _c : Bool)) {
                return false;
            };
            _pos = ((@:checkr _r ?? throw "null pointer dereference")._runtextpos + _c : stdgo.GoInt);
        } else {
            if ((((@:checkr _r ?? throw "null pointer dereference")._runtextpos - (0 : stdgo.GoInt) : stdgo.GoInt) < _c : Bool)) {
                return false;
            };
            _pos = (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
        };
        if (!(@:checkr _r ?? throw "null pointer dereference")._caseInsensitive) {
            while (_c != ((0 : stdgo.GoInt))) {
                _c--;
                _pos--;
                if (_str[(_c : stdgo.GoInt)] != ((@:checkr _r ?? throw "null pointer dereference")._runtext[(_pos : stdgo.GoInt)])) {
                    return false;
                };
            };
        } else {
            while (_c != ((0 : stdgo.GoInt))) {
                _c--;
                _pos--;
                if (_str[(_c : stdgo.GoInt)] != (stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _r ?? throw "null pointer dereference")._runtext[(_pos : stdgo.GoInt)]))) {
                    return false;
                };
            };
        };
        if (!(@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            _pos = (_pos + ((_str.length)) : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._runtextpos = _pos;
        return true;
    }
    @:keep
    @:tdfield
    static public function _forwardcharnext( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _ch:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos--;
            _ch = (@:checkr _r ?? throw "null pointer dereference")._runtext[((@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt)];
        } else {
            _ch = (@:checkr _r ?? throw "null pointer dereference")._runtext[((@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos++;
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._caseInsensitive) {
            return stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _forwardchars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            return (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
        };
        return ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _bump( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _rightchars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _leftchars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
    }
    @:keep
    @:tdfield
    static public function _operand( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[(((@:checkr _r ?? throw "null pointer dereference")._codepos + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPeekN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runstack[(((@:checkr _r ?? throw "null pointer dereference")._runstackpos - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPeek( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPopN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _framesize:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos = ((@:checkr _r ?? throw "null pointer dereference")._runstackpos + (_framesize) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _stackPop( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos++;
    }
    @:keep
    @:tdfield
    static public function _stackPush2( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos : stdgo.GoInt)] = i2;
    }
    @:keep
    @:tdfield
    static public function _stackPush( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos : stdgo.GoInt)] = i1;
    }
    @:keep
    @:tdfield
    static public function _trackPeekN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtrack[(((@:checkr _r ?? throw "null pointer dereference")._runtrackpos - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _trackPeek( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _trackPopN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _framesize:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = ((@:checkr _r ?? throw "null pointer dereference")._runtrackpos + (_framesize) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _trackPop( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos++;
    }
    @:keep
    @:tdfield
    static public function _setOperator( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _op:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._caseInsensitive = ((0 : stdgo.GoInt) != ((_op & (512 : stdgo.GoInt) : stdgo.GoInt)));
        (@:checkr _r ?? throw "null pointer dereference")._rightToLeft = ((0 : stdgo.GoInt) != ((_op & (64 : stdgo.GoInt) : stdgo.GoInt)));
        (@:checkr _r ?? throw "null pointer dereference")._operator = ((_op & (-577 : stdgo.GoInt) : stdgo.GoInt) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp);
    }
    @:keep
    @:tdfield
    static public function _backtrack( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _newpos = ((@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos++;
        if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
            if ((_newpos < (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.fmt.Fmt_printf.printf(("       Backtracking (back2) to code position %v\n" : stdgo.GoString), stdgo.Go.toInterface(-_newpos));
            } else {
                stdgo._internal.fmt.Fmt_printf.printf(("       Backtracking to code position %v\n" : stdgo.GoString), stdgo.Go.toInterface(_newpos));
            };
        };
        if ((_newpos < (0 : stdgo.GoInt) : Bool)) {
            _newpos = -_newpos;
            @:check2r _r._setOperator(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[(_newpos : stdgo.GoInt)] | (256 : stdgo.GoInt) : stdgo.GoInt));
        } else {
            @:check2r _r._setOperator(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[(_newpos : stdgo.GoInt)] | (128 : stdgo.GoInt) : stdgo.GoInt));
        };
        if ((_newpos < (@:checkr _r ?? throw "null pointer dereference")._codepos : Bool)) {
            @:check2r _r._ensureStorage();
        };
        (@:checkr _r ?? throw "null pointer dereference")._codepos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _trackPushNeg2( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i2;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = -(@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPushNeg1( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = -(@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush3( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt, i3:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i2;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i3;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush2( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i2;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush1( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackpos( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference")._runtrack.length) - (@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textPos( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
    }
    @:keep
    @:tdfield
    static public function _textstart( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtextstart;
    }
    @:keep
    @:tdfield
    static public function _trackto( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = (((@:checkr _r ?? throw "null pointer dereference")._runtrack.length) - _newpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textto( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtextpos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _goTo( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((_newpos <= (@:checkr _r ?? throw "null pointer dereference")._codepos : Bool)) {
            @:check2r _r._ensureStorage();
        };
        @:check2r _r._setOperator((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[(_newpos : stdgo.GoInt)]);
        (@:checkr _r ?? throw "null pointer dereference")._codepos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _advance( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._codepos = ((@:checkr _r ?? throw "null pointer dereference")._codepos + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        @:check2r _r._setOperator((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[((@:checkr _r ?? throw "null pointer dereference")._codepos : stdgo.GoInt)]);
    }
    @:keep
    @:tdfield
    static public function _crawlpos( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference")._runcrawl.length) - (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _popcrawl( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _val = ((@:checkr _r ?? throw "null pointer dereference")._runcrawl[((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos++;
        return _val;
    }
    @:keep
    @:tdfield
    static public function _crawl( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _i:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos == ((0 : stdgo.GoInt))) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__doubleintslice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._runcrawl) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos));
        };
        (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runcrawl[((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos : stdgo.GoInt)] = _i;
    }
    @:keep
    @:tdfield
    static public function _ensureStorage( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._runstackpos < ((@:checkr _r ?? throw "null pointer dereference")._runtrackcount * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__doubleintslice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._runstack) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._runstackpos));
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._runtrackpos < ((@:checkr _r ?? throw "null pointer dereference")._runtrackcount * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__doubleintslice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._runtrack) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._runtrackpos));
        };
    }
    @:keep
    @:tdfield
    static public function _execute( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        var _ch_4989974:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _count_4984985:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_4992608:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_4991176:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _matched_4980336:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4978721:stdgo.Error = (null : stdgo.Error);
        var _i_4992718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_4992331:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_4990489:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _set_4990216:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _count_4983506:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capnum_4989369:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_4984960:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4991919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_4991538:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4990862:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4990517:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4990149:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_4990834:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_4990752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_4992882:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4992109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_4991746:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4991094:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4990407:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4991516:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4991212:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_4983481:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldMarkPos_4981384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4991724:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4989908:stdgo.GoInt = (0 : stdgo.GoInt);
        var _textpos_4985582:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_4989663:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_4983534:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4993005:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4992441:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_4989730:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _mark_4985557:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_4982560:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rchars_4988235:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2r _r._goTo((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4978667i32)) {
                    if (true) {
                        _gotoNext = 4978671i32;
                    } else {
                        _gotoNext = 4993254i32;
                    };
                } else if (__value__ == (4978671i32)) {
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
                        _gotoNext = 4978692i32;
                    } else {
                        _gotoNext = 4978718i32;
                    };
                } else if (__value__ == (4978692i32)) {
                    @:check2r _r._dumpState();
                    _gotoNext = 4978718i32;
                } else if (__value__ == (4978718i32)) {
                    {
                        _err_4978721 = @:check2r _r._checkTimeout();
                        if (_err_4978721 != null) {
                            _gotoNext = 4978757i32;
                        } else {
                            _gotoNext = 4978780i32;
                        };
                    };
                } else if (__value__ == (4978757i32)) {
                    return _err_4978721;
                    _gotoNext = 4978780i32;
                } else if (__value__ == (4978780i32)) {
                    _gotoNext = 4978780i32;
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._operator;
                        if (__value__ == ((40 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4978802i32;
                        } else if (__value__ == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4978837i32;
                        } else if (__value__ == ((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4978870i32;
                        } else if (__value__ == ((37 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4978927i32;
                        } else if (__value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979038i32;
                        } else if (__value__ == ((151 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979122i32;
                        } else if (__value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979242i32;
                        } else if (__value__ == ((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979339i32;
                        } else if (__value__ == ((159 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((158 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979428i32;
                        } else if (__value__ == ((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979522i32;
                        } else if (__value__ == ((161 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979648i32;
                        } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4979741i32;
                        } else if (__value__ == ((160 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4980105i32;
                        } else if (__value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4980292i32;
                        } else if (__value__ == ((152 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4980775i32;
                        } else if (__value__ == ((280 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4981012i32;
                        } else if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4981162i32;
                        } else if (__value__ == ((153 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4982149i32;
                        } else if (__value__ == ((281 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4982795i32;
                        } else if (__value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4983033i32;
                        } else if (__value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4983146i32;
                        } else if (__value__ == ((155 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4983251i32;
                        } else if (__value__ == ((154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4983317i32;
                        } else if (__value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4983384i32;
                        } else if (__value__ == ((156 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4984012i32;
                        } else if (__value__ == ((284 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4984591i32;
                        } else if (__value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4984859i32;
                        } else if (__value__ == ((157 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4985422i32;
                        } else if (__value__ == ((285 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4986175i32;
                        } else if (__value__ == ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4986516i32;
                        } else if (__value__ == ((162 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4986629i32;
                        } else if (__value__ == ((35 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4986694i32;
                        } else if (__value__ == ((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4986905i32;
                        } else if (__value__ == ((164 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987102i32;
                        } else if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987270i32;
                        } else if (__value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987394i32;
                        } else if (__value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987517i32;
                        } else if (__value__ == ((17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987637i32;
                        } else if (__value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987759i32;
                        } else if (__value__ == ((42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4987887i32;
                        } else if (__value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4988017i32;
                        } else if (__value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4988112i32;
                        } else if (__value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4988214i32;
                        } else if (__value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4988710i32;
                        } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4988800i32;
                        } else if (__value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4988938i32;
                        } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4989079i32;
                        } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4989231i32;
                        } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4989348i32;
                        } else if (__value__ == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4989639i32;
                        } else if (__value__ == ((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4989881i32;
                        } else if (__value__ == ((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4990125i32;
                        } else if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4990382i32;
                        } else if (__value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4990724i32;
                        } else if (__value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4991069i32;
                        } else if (__value__ == ((131 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((132 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4991426i32;
                        } else if (__value__ == ((133 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4991667i32;
                        } else if (__value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4991875i32;
                        } else if (__value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4992084i32;
                        } else if (__value__ == ((134 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4992274i32;
                        } else if (__value__ == ((135 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4992548i32;
                        } else if (__value__ == ((136 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 4992825i32;
                        } else {
                            _gotoNext = 4993112i32;
                        };
                    };
                } else if (__value__ == (4978802i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4978837i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4978870i32)) {
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4978927i32)) {
                    if (!@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((0 : stdgo.GoInt)))) {
                        _gotoNext = 4978990i32;
                    } else {
                        _gotoNext = 4979010i32;
                    };
                } else if (__value__ == (4978990i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4979010i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4979038i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._textPos());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4979122i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeek());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4979242i32)) {
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4979339i32)) {
                    @:check2r _r._stackPush((-1 : stdgo.GoInt));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4979428i32)) {
                    @:check2r _r._stackPop();
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4979522i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4979648i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4979741i32)) {
                    if (((@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && !@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((1 : stdgo.GoInt))) : Bool)) {
                        _gotoNext = 4979830i32;
                    } else {
                        _gotoNext = 4979850i32;
                    };
                } else if (__value__ == (4979830i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4979850i32)) {
                    @:check2r _r._stackPop();
                    if (@:check2r _r._operand((1 : stdgo.GoInt)) != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 4979888i32;
                    } else {
                        _gotoNext = 4979978i32;
                    };
                } else if (__value__ == (4979888i32)) {
                    @:check2r _r._transferCapture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._operand((1 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    _gotoNext = 4980044i32;
                } else if (__value__ == (4979978i32)) {
                    _gotoNext = 4979978i32;
                    @:check2r _r._capture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 4980044i32;
                } else if (__value__ == (4980044i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4980105i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    @:check2r _r._uncapture();
                    if (((@:check2r _r._operand((0 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && (@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4980254i32;
                    } else {
                        _gotoNext = 4980283i32;
                    };
                } else if (__value__ == (4980254i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 4980283i32;
                } else if (__value__ == (4980283i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4980292i32)) {
                    @:check2r _r._stackPop();
                    _matched_4980336 = (@:check2r _r._textPos() - @:check2r _r._stackPeek() : stdgo.GoInt);
                    if (_matched_4980336 != ((0 : stdgo.GoInt))) {
                        _gotoNext = 4980395i32;
                    } else {
                        _gotoNext = 4980623i32;
                    };
                } else if (__value__ == (4980395i32)) {
                    @:check2r _r._trackPush2(@:check2r _r._stackPeek(), @:check2r _r._textPos());
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 4980763i32;
                } else if (__value__ == (4980623i32)) {
                    _gotoNext = 4980623i32;
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4980763i32;
                } else if (__value__ == (4980763i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4980775i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4981012i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4981162i32)) {
                    {
                        _gotoNext = 4981193i32;
                    };
                } else if (__value__ == (4981193i32)) {
                    @:check2r _r._stackPop();
                    _oldMarkPos_4981384 = @:check2r _r._stackPeek();
                    if (@:check2r _r._textPos() != (_oldMarkPos_4981384)) {
                        _gotoNext = 4981446i32;
                    } else {
                        _gotoNext = 4981686i32;
                    };
                } else if (__value__ == (4981446i32)) {
                    if (_oldMarkPos_4981384 != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 4981537i32;
                    } else {
                        _gotoNext = 4981621i32;
                    };
                } else if (__value__ == (4981537i32)) {
                    @:check2r _r._trackPush2(_oldMarkPos_4981384, @:check2r _r._textPos());
                    _gotoNext = 4982115i32;
                } else if (__value__ == (4981621i32)) {
                    _gotoNext = 4981621i32;
                    @:check2r _r._trackPush2(@:check2r _r._textPos(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 4982115i32;
                } else if (__value__ == (4981686i32)) {
                    _gotoNext = 4981686i32;
                    @:check2r _r._stackPush(_oldMarkPos_4981384);
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 4982115i32;
                } else if (__value__ == (4982115i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4982149i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_4982560 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._stackPush(_pos_4982560);
                    @:check2r _r._textto(_pos_4982560);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4982795i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4983033i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4983146i32)) {
                    @:check2r _r._stackPush2((-1 : stdgo.GoInt), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4983251i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4983317i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4983384i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_4983481 = @:check2r _r._stackPeek();
                    _count_4983506 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    _matched_4983534 = (@:check2r _r._textPos() - _mark_4983481 : stdgo.GoInt);
                    if (((_count_4983506 >= @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) || (((_matched_4983534 == (0 : stdgo.GoInt)) && (_count_4983506 >= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 4983625i32;
                    } else {
                        _gotoNext = 4983783i32;
                    };
                } else if (__value__ == (4983625i32)) {
                    @:check2r _r._trackPushNeg2(_mark_4983481, _count_4983506);
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    _gotoNext = 4984000i32;
                } else if (__value__ == (4983783i32)) {
                    _gotoNext = 4983783i32;
                    @:check2r _r._trackPush1(_mark_4983481);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_4983506 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 4984000i32;
                } else if (__value__ == (4984000i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4984012i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    if ((@:check2r _r._stackPeekN((1 : stdgo.GoInt)) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4984231i32;
                    } else {
                        _gotoNext = 4984502i32;
                    };
                } else if (__value__ == (4984231i32)) {
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPushNeg2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4984502i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4984591i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4984859i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_4984960 = @:check2r _r._stackPeek();
                    _count_4984985 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    if ((_count_4984985 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4985027i32;
                    } else {
                        _gotoNext = 4985240i32;
                    };
                } else if (__value__ == (4985027i32)) {
                    @:check2r _r._trackPushNeg1(_mark_4984960);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_4984985 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 4985410i32;
                } else if (__value__ == (4985240i32)) {
                    _gotoNext = 4985240i32;
                    @:check2r _r._trackPush3(_mark_4984960, _count_4984985, @:check2r _r._textPos());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4985410i32;
                } else if (__value__ == (4985410i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4985422i32)) {
                    @:check2r _r._trackPopN((3 : stdgo.GoInt));
                    _mark_4985557 = @:check2r _r._trackPeek();
                    _textpos_4985582 = @:check2r _r._trackPeekN((2 : stdgo.GoInt));
                    if (((@:check2r _r._trackPeekN((1 : stdgo.GoInt)) < @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) && (_textpos_4985582 != _mark_4985557) : Bool)) {
                        _gotoNext = 4985666i32;
                    } else {
                        _gotoNext = 4985987i32;
                    };
                } else if (__value__ == (4985666i32)) {
                    @:check2r _r._textto(_textpos_4985582);
                    @:check2r _r._stackPush2(_textpos_4985582, (@:check2r _r._trackPeekN((1 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(_mark_4985557);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4985987i32)) {
                    _gotoNext = 4985987i32;
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4986175i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4986516i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackpos(), @:check2r _r._crawlpos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4986629i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4986694i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 4986831i32;
                } else if (__value__ == (4986831i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._stackPeekN((1 : stdgo.GoInt)))) {
                        _gotoNext = 4986867i32;
                    } else {
                        _gotoNext = 4986896i32;
                    };
                } else if (__value__ == (4986867i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 4986831i32;
                } else if (__value__ == (4986896i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4986905i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPush1(@:check2r _r._stackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4987102i32)) {
                    @:check2r _r._trackPop();
                    var __blank__ = 0i32;
                    _gotoNext = 4987198i32;
                } else if (__value__ == (4987198i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._trackPeek())) {
                        _gotoNext = 4987232i32;
                    } else {
                        _gotoNext = 4987261i32;
                    };
                } else if (__value__ == (4987232i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 4987198i32;
                } else if (__value__ == (4987261i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987270i32)) {
                    if (((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt((@:check2r _r._textPos() - (1 : stdgo.GoInt) : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4987346i32;
                    } else {
                        _gotoNext = 4987366i32;
                    };
                } else if (__value__ == (4987346i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987366i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4987394i32)) {
                    if (((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4987469i32;
                    } else {
                        _gotoNext = 4987489i32;
                    };
                } else if (__value__ == (4987469i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987489i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4987517i32)) {
                    if (!@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 4987589i32;
                    } else {
                        _gotoNext = 4987609i32;
                    };
                } else if (__value__ == (4987589i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987609i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4987637i32)) {
                    if (@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 4987711i32;
                    } else {
                        _gotoNext = 4987731i32;
                    };
                } else if (__value__ == (4987711i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987731i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4987759i32)) {
                    if (!@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 4987839i32;
                    } else {
                        _gotoNext = 4987859i32;
                    };
                } else if (__value__ == (4987839i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987859i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4987887i32)) {
                    if (@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 4987969i32;
                    } else {
                        _gotoNext = 4987989i32;
                    };
                } else if (__value__ == (4987969i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4987989i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4988017i32)) {
                    if ((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4988064i32;
                    } else {
                        _gotoNext = 4988084i32;
                    };
                } else if (__value__ == (4988064i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988084i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4988112i32)) {
                    if (@:check2r _r._textPos() != (@:check2r _r._textstart())) {
                        _gotoNext = 4988166i32;
                    } else {
                        _gotoNext = 4988186i32;
                    };
                } else if (__value__ == (4988166i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988186i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4988214i32)) {
                    _rchars_4988235 = @:check2r _r._rightchars();
                    if ((_rchars_4988235 > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4988277i32;
                    } else {
                        _gotoNext = 4988471i32;
                    };
                } else if (__value__ == (4988277i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988471i32)) {
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (768 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 4988515i32;
                    } else if (((_rchars_4988235 == (1 : stdgo.GoInt)) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4988639i32;
                    } else {
                        _gotoNext = 4988682i32;
                    };
                } else if (__value__ == (4988515i32)) {
                    if ((_rchars_4988235 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4988562i32;
                    } else {
                        _gotoNext = 4988682i32;
                    };
                } else if (__value__ == (4988562i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988639i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988682i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4988710i32)) {
                    if ((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4988752i32;
                    } else {
                        _gotoNext = 4988772i32;
                    };
                } else if (__value__ == (4988752i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988772i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4988800i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() != (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4988889i32;
                    } else {
                        _gotoNext = 4988910i32;
                    };
                } else if (__value__ == (4988889i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4988910i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4988938i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() == (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4989030i32;
                    } else {
                        _gotoNext = 4989051i32;
                    };
                } else if (__value__ == (4989030i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989051i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4989079i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || !(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext()) : Bool)) {
                        _gotoNext = 4989182i32;
                    } else {
                        _gotoNext = 4989203i32;
                    };
                } else if (__value__ == (4989182i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989203i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4989231i32)) {
                    if (!@:check2r _r._runematch((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").strings[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)])) {
                        _gotoNext = 4989299i32;
                    } else {
                        _gotoNext = 4989320i32;
                    };
                } else if (__value__ == (4989299i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989320i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4989348i32)) {
                    _capnum_4989369 = @:check2r _r._operand((0 : stdgo.GoInt));
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(_capnum_4989369)) {
                        _gotoNext = 4989428i32;
                    } else {
                        _gotoNext = 4989541i32;
                    };
                } else if (__value__ == (4989428i32)) {
                    if (!@:check2r _r._refmatch(@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchIndex(_capnum_4989369), @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchLength(_capnum_4989369))) {
                        _gotoNext = 4989512i32;
                    } else {
                        _gotoNext = 4989611i32;
                    };
                } else if (__value__ == (4989512i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989541i32)) {
                    _gotoNext = 4989541i32;
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (256 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) == ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 4989583i32;
                    } else {
                        _gotoNext = 4989611i32;
                    };
                } else if (__value__ == (4989583i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989611i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4989639i32)) {
                    _c_4989663 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_4989663 : Bool)) {
                        _gotoNext = 4989709i32;
                    } else {
                        _gotoNext = 4989730i32;
                    };
                } else if (__value__ == (4989709i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989730i32)) {
                    _ch_4989730 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 4989759i32;
                } else if (__value__ == (4989759i32)) {
                    if ((_c_4989663 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4989769i32;
                    } else {
                        _gotoNext = 4989853i32;
                    };
                } else if (__value__ == (4989769i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_4989730)) {
                        _gotoNext = 4989804i32;
                    } else {
                        _gotoNext = 4989840i32;
                    };
                } else if (__value__ == (4989804i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989840i32)) {
                    _c_4989663--;
                    _gotoNext = 4989759i32;
                } else if (__value__ == (4989853i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4989881i32)) {
                    _c_4989908 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_4989908 : Bool)) {
                        _gotoNext = 4989954i32;
                    } else {
                        _gotoNext = 4989974i32;
                    };
                } else if (__value__ == (4989954i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4989974i32)) {
                    _ch_4989974 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 4990003i32;
                } else if (__value__ == (4990003i32)) {
                    if ((_c_4989908 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4990013i32;
                    } else {
                        _gotoNext = 4990097i32;
                    };
                } else if (__value__ == (4990013i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_4989974)) {
                        _gotoNext = 4990048i32;
                    } else {
                        _gotoNext = 4990084i32;
                    };
                } else if (__value__ == (4990048i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4990084i32)) {
                    _c_4989908--;
                    _gotoNext = 4990003i32;
                } else if (__value__ == (4990097i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4990125i32)) {
                    _c_4990149 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_4990149 : Bool)) {
                        _gotoNext = 4990195i32;
                    } else {
                        _gotoNext = 4990216i32;
                    };
                } else if (__value__ == (4990195i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4990216i32)) {
                    _set_4990216 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 4990253i32;
                } else if (__value__ == (4990253i32)) {
                    if ((_c_4990149 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4990263i32;
                    } else {
                        _gotoNext = 4990354i32;
                    };
                } else if (__value__ == (4990263i32)) {
                    if (!(@:checkr _set_4990216 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 4990305i32;
                    } else {
                        _gotoNext = 4990341i32;
                    };
                } else if (__value__ == (4990305i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4990341i32)) {
                    _c_4990149--;
                    _gotoNext = 4990253i32;
                } else if (__value__ == (4990354i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4990382i32)) {
                    _c_4990407 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_4990407 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 4990453i32;
                    } else {
                        _gotoNext = 4990489i32;
                    };
                } else if (__value__ == (4990453i32)) {
                    _c_4990407 = @:check2r _r._forwardchars();
                    _gotoNext = 4990489i32;
                } else if (__value__ == (4990489i32)) {
                    _ch_4990489 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_4990517 = _c_4990407;
                    var __blank__ = 0i32;
                    _gotoNext = 4990528i32;
                } else if (__value__ == (4990528i32)) {
                    if ((_i_4990517 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4990545i32;
                    } else {
                        _gotoNext = 4990630i32;
                    };
                } else if (__value__ == (4990541i32)) {
                    _i_4990517--;
                    _gotoNext = 4990528i32;
                } else if (__value__ == (4990545i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_4990489)) {
                        _gotoNext = 4990580i32;
                    } else {
                        _gotoNext = 4990541i32;
                    };
                } else if (__value__ == (4990580i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 4990630i32;
                } else if (__value__ == (4990630i32)) {
                    if ((_c_4990407 > _i_4990517 : Bool)) {
                        _gotoNext = 4990639i32;
                    } else {
                        _gotoNext = 4990696i32;
                    };
                } else if (__value__ == (4990639i32)) {
                    @:check2r _r._trackPush2(((_c_4990407 - _i_4990517 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4990696i32;
                } else if (__value__ == (4990696i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4990724i32)) {
                    _c_4990752 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_4990752 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 4990798i32;
                    } else {
                        _gotoNext = 4990834i32;
                    };
                } else if (__value__ == (4990798i32)) {
                    _c_4990752 = @:check2r _r._forwardchars();
                    _gotoNext = 4990834i32;
                } else if (__value__ == (4990834i32)) {
                    _ch_4990834 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_4990862 = _c_4990752;
                    var __blank__ = 0i32;
                    _gotoNext = 4990873i32;
                } else if (__value__ == (4990873i32)) {
                    if ((_i_4990862 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4990890i32;
                    } else {
                        _gotoNext = 4990975i32;
                    };
                } else if (__value__ == (4990886i32)) {
                    _i_4990862--;
                    _gotoNext = 4990873i32;
                } else if (__value__ == (4990890i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_4990834)) {
                        _gotoNext = 4990925i32;
                    } else {
                        _gotoNext = 4990886i32;
                    };
                } else if (__value__ == (4990925i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 4990975i32;
                } else if (__value__ == (4990975i32)) {
                    if ((_c_4990752 > _i_4990862 : Bool)) {
                        _gotoNext = 4990984i32;
                    } else {
                        _gotoNext = 4991041i32;
                    };
                } else if (__value__ == (4990984i32)) {
                    @:check2r _r._trackPush2(((_c_4990752 - _i_4990862 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4991041i32;
                } else if (__value__ == (4991041i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4991069i32)) {
                    _c_4991094 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_4991094 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 4991140i32;
                    } else {
                        _gotoNext = 4991176i32;
                    };
                } else if (__value__ == (4991140i32)) {
                    _c_4991094 = @:check2r _r._forwardchars();
                    _gotoNext = 4991176i32;
                } else if (__value__ == (4991176i32)) {
                    _set_4991176 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    _i_4991212 = _c_4991094;
                    var __blank__ = 0i32;
                    _gotoNext = 4991223i32;
                } else if (__value__ == (4991223i32)) {
                    if ((_i_4991212 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4991240i32;
                    } else {
                        _gotoNext = 4991332i32;
                    };
                } else if (__value__ == (4991236i32)) {
                    _i_4991212--;
                    _gotoNext = 4991223i32;
                } else if (__value__ == (4991240i32)) {
                    if (!(@:checkr _set_4991176 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 4991282i32;
                    } else {
                        _gotoNext = 4991236i32;
                    };
                } else if (__value__ == (4991282i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 4991332i32;
                } else if (__value__ == (4991332i32)) {
                    if ((_c_4991094 > _i_4991212 : Bool)) {
                        _gotoNext = 4991341i32;
                    } else {
                        _gotoNext = 4991398i32;
                    };
                } else if (__value__ == (4991341i32)) {
                    @:check2r _r._trackPush2(((_c_4991094 - _i_4991212 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4991398i32;
                } else if (__value__ == (4991398i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4991426i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_4991516 = @:check2r _r._trackPeek();
                    _pos_4991538 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_4991538);
                    if ((_i_4991516 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4991592i32;
                    } else {
                        _gotoNext = 4991639i32;
                    };
                } else if (__value__ == (4991592i32)) {
                    @:check2r _r._trackPush2((_i_4991516 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_4991538 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4991639i32;
                } else if (__value__ == (4991639i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4991667i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_4991724 = @:check2r _r._trackPeek();
                    _pos_4991746 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_4991746);
                    if ((_i_4991724 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4991800i32;
                    } else {
                        _gotoNext = 4991847i32;
                    };
                } else if (__value__ == (4991800i32)) {
                    @:check2r _r._trackPush2((_i_4991724 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_4991746 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4991847i32;
                } else if (__value__ == (4991847i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4991875i32)) {
                    _c_4991919 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_4991919 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 4991965i32;
                    } else {
                        _gotoNext = 4992001i32;
                    };
                } else if (__value__ == (4991965i32)) {
                    _c_4991919 = @:check2r _r._forwardchars();
                    _gotoNext = 4992001i32;
                } else if (__value__ == (4992001i32)) {
                    if ((_c_4991919 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4992010i32;
                    } else {
                        _gotoNext = 4992056i32;
                    };
                } else if (__value__ == (4992010i32)) {
                    @:check2r _r._trackPush2((_c_4991919 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 4992056i32;
                } else if (__value__ == (4992056i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4992084i32)) {
                    _c_4992109 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_4992109 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 4992155i32;
                    } else {
                        _gotoNext = 4992191i32;
                    };
                } else if (__value__ == (4992155i32)) {
                    _c_4992109 = @:check2r _r._forwardchars();
                    _gotoNext = 4992191i32;
                } else if (__value__ == (4992191i32)) {
                    if ((_c_4992109 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4992200i32;
                    } else {
                        _gotoNext = 4992246i32;
                    };
                } else if (__value__ == (4992200i32)) {
                    @:check2r _r._trackPush2((_c_4992109 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 4992246i32;
                } else if (__value__ == (4992246i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4992274i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_4992331 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_4992331);
                    if (@:check2r _r._forwardcharnext() != ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 4992420i32;
                    } else {
                        _gotoNext = 4992441i32;
                    };
                } else if (__value__ == (4992420i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4992441i32)) {
                    _i_4992441 = @:check2r _r._trackPeek();
                    if ((_i_4992441 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4992473i32;
                    } else {
                        _gotoNext = 4992520i32;
                    };
                } else if (__value__ == (4992473i32)) {
                    @:check2r _r._trackPush2((_i_4992441 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_4992331 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4992520i32;
                } else if (__value__ == (4992520i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4992548i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_4992608 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_4992608);
                    if (@:check2r _r._forwardcharnext() == ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 4992697i32;
                    } else {
                        _gotoNext = 4992718i32;
                    };
                } else if (__value__ == (4992697i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4992718i32)) {
                    _i_4992718 = @:check2r _r._trackPeek();
                    if ((_i_4992718 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4992750i32;
                    } else {
                        _gotoNext = 4992797i32;
                    };
                } else if (__value__ == (4992750i32)) {
                    @:check2r _r._trackPush2((_i_4992718 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_4992608 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4992797i32;
                } else if (__value__ == (4992797i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4992825i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_4992882 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_4992882);
                    if (!(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 4992984i32;
                    } else {
                        _gotoNext = 4993005i32;
                    };
                } else if (__value__ == (4992984i32)) {
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4993005i32)) {
                    _i_4993005 = @:check2r _r._trackPeek();
                    if ((_i_4993005 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4993037i32;
                    } else {
                        _gotoNext = 4993084i32;
                    };
                } else if (__value__ == (4993037i32)) {
                    @:check2r _r._trackPush2((_i_4993005 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_4992882 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 4993084i32;
                } else if (__value__ == (4993084i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4993112i32)) {
                    return stdgo._internal.errors.Errors_new_.new_(("unknown state in regex runner" : stdgo.GoString));
                    _gotoNext = 4993181i32;
                } else if (__value__ == (4993181i32)) {
                    _gotoNext = 4993181i32;
                    {};
                    @:check2r _r._backtrack();
                    _gotoNext = 4978667i32;
                } else if (__value__ == (4993254i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _scan( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>, _rt:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt, _quick:Bool, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._timeout = _timeout;
        (@:checkr _r ?? throw "null pointer dereference")._ignoreTimeout = (((9223372036854775807i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration) == _timeout);
        (@:checkr _r ?? throw "null pointer dereference")._runtextstart = _textstart;
        (@:checkr _r ?? throw "null pointer dereference")._runtext = _rt;
        (@:checkr _r ?? throw "null pointer dereference")._runtextend = (_rt.length);
        var _stoppos = ((@:checkr _r ?? throw "null pointer dereference")._runtextend : stdgo.GoInt);
        var _bump = (1 : stdgo.GoInt);
        if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.rightToLeft()) {
            _bump = (-1 : stdgo.GoInt);
            _stoppos = (0 : stdgo.GoInt);
        };
        (@:checkr _r ?? throw "null pointer dereference")._runtextpos = _textstart;
        var _initted = (false : Bool);
        @:check2r _r._startTimeoutWatch();
        while (true) {
            if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
                stdgo._internal.fmt.Fmt_printf.printf(("\nSearch range: from 0 to %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._runtextend));
                stdgo._internal.fmt.Fmt_printf.printf(("Firstchar search starting at %v stopping at %v\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._runtextpos), stdgo.Go.toInterface(_stoppos));
            };
            if (@:check2r _r._findFirstChar()) {
                {
                    var _err = (@:check2r _r._checkTimeout() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                if (!_initted) {
                    @:check2r _r._initMatch();
                    _initted = true;
                };
                if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
                    stdgo._internal.fmt.Fmt_printf.printf(("Executing engine starting at %v\n\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._runtextpos));
                };
                {
                    var _err = (@:check2r _r._execute() : stdgo.Error);
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._runmatch ?? throw "null pointer dereference")._matchcount[(0 : stdgo.GoInt)] > (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : @:check2r _r._tidyMatch(_quick), _1 : (null : stdgo.Error) };
                };
                (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = ((@:checkr _r ?? throw "null pointer dereference")._runtrack.length);
                (@:checkr _r ?? throw "null pointer dereference")._runstackpos = ((@:checkr _r ?? throw "null pointer dereference")._runstack.length);
                (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos = ((@:checkr _r ?? throw "null pointer dereference")._runcrawl.length);
            };
            if ((@:checkr _r ?? throw "null pointer dereference")._runtextpos == (_stoppos)) {
                @:check2r _r._tidyMatch(true);
                return { _0 : null, _1 : (null : stdgo.Error) };
            };
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos = ((@:checkr _r ?? throw "null pointer dereference")._runtextpos + (_bump) : stdgo.GoInt);
        };
    }
}
