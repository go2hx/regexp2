package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
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
        var _ch_3790852:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ch_3790093:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _rchars_3788598:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3783897:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_3783869:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3793368:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3791115:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3793245:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3792804:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3790770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldMarkPos_3781747:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3793081:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3790337:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_3779084:stdgo.Error = (null : stdgo.Error);
        var _i_3790880:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_3790579:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _c_3790026:stdgo.GoInt = (0 : stdgo.GoInt);
        var _textpos_3785945:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_3785348:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3791575:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3792971:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3792282:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3790512:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3790271:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3780699:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3792694:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3792087:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_3791539:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _capnum_3789732:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3785323:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3791879:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3791197:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _mark_3785920:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3791901:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3791457:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3791225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3783844:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3782923:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3792472:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3792109:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2r _r._goTo((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779030i32)) {
                    if (true) {
                        _gotoNext = 3779034i32;
                    } else {
                        _gotoNext = 3793617i32;
                    };
                } else if (__value__ == (3779034i32)) {
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
                        _gotoNext = 3779055i32;
                    } else {
                        _gotoNext = 3779081i32;
                    };
                } else if (__value__ == (3779055i32)) {
                    @:check2r _r._dumpState();
                    _gotoNext = 3779081i32;
                } else if (__value__ == (3779081i32)) {
                    {
                        _err_3779084 = @:check2r _r._checkTimeout();
                        if (_err_3779084 != null) {
                            _gotoNext = 3779120i32;
                        } else {
                            _gotoNext = 3779143i32;
                        };
                    };
                } else if (__value__ == (3779120i32)) {
                    return _err_3779084;
                    _gotoNext = 3779143i32;
                } else if (__value__ == (3779143i32)) {
                    _gotoNext = 3779143i32;
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._operator;
                        if (__value__ == ((40 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779165i32;
                        } else if (__value__ == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779200i32;
                        } else if (__value__ == ((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779233i32;
                        } else if (__value__ == ((37 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779290i32;
                        } else if (__value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779401i32;
                        } else if (__value__ == ((151 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779485i32;
                        } else if (__value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779605i32;
                        } else if (__value__ == ((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779702i32;
                        } else if (__value__ == ((159 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((158 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779791i32;
                        } else if (__value__ == ((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779885i32;
                        } else if (__value__ == ((161 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3780011i32;
                        } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3780104i32;
                        } else if (__value__ == ((160 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3780468i32;
                        } else if (__value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3780655i32;
                        } else if (__value__ == ((152 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781138i32;
                        } else if (__value__ == ((280 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781375i32;
                        } else if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781525i32;
                        } else if (__value__ == ((153 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782512i32;
                        } else if (__value__ == ((281 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783158i32;
                        } else if (__value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783396i32;
                        } else if (__value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783509i32;
                        } else if (__value__ == ((155 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783614i32;
                        } else if (__value__ == ((154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783680i32;
                        } else if (__value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783747i32;
                        } else if (__value__ == ((156 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784375i32;
                        } else if (__value__ == ((284 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784954i32;
                        } else if (__value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785222i32;
                        } else if (__value__ == ((157 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785785i32;
                        } else if (__value__ == ((285 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786538i32;
                        } else if (__value__ == ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786879i32;
                        } else if (__value__ == ((162 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786992i32;
                        } else if (__value__ == ((35 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787057i32;
                        } else if (__value__ == ((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787268i32;
                        } else if (__value__ == ((164 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787465i32;
                        } else if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787633i32;
                        } else if (__value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787757i32;
                        } else if (__value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787880i32;
                        } else if (__value__ == ((17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3788000i32;
                        } else if (__value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3788122i32;
                        } else if (__value__ == ((42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3788250i32;
                        } else if (__value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3788380i32;
                        } else if (__value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3788475i32;
                        } else if (__value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3788577i32;
                        } else if (__value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3789073i32;
                        } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3789163i32;
                        } else if (__value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3789301i32;
                        } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3789442i32;
                        } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3789594i32;
                        } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3789711i32;
                        } else if (__value__ == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3790002i32;
                        } else if (__value__ == ((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3790244i32;
                        } else if (__value__ == ((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3790488i32;
                        } else if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3790745i32;
                        } else if (__value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3791087i32;
                        } else if (__value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3791432i32;
                        } else if (__value__ == ((131 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((132 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3791789i32;
                        } else if (__value__ == ((133 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3792030i32;
                        } else if (__value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3792238i32;
                        } else if (__value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3792447i32;
                        } else if (__value__ == ((134 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3792637i32;
                        } else if (__value__ == ((135 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3792911i32;
                        } else if (__value__ == ((136 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3793188i32;
                        } else {
                            _gotoNext = 3793475i32;
                        };
                    };
                } else if (__value__ == (3779165i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3779200i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3779233i32)) {
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779290i32)) {
                    if (!@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((0 : stdgo.GoInt)))) {
                        _gotoNext = 3779353i32;
                    } else {
                        _gotoNext = 3779373i32;
                    };
                } else if (__value__ == (3779353i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3779373i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779401i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._textPos());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779485i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeek());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779605i32)) {
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779702i32)) {
                    @:check2r _r._stackPush((-1 : stdgo.GoInt));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3779791i32)) {
                    @:check2r _r._stackPop();
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3779885i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3780011i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3780104i32)) {
                    if (((@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && !@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((1 : stdgo.GoInt))) : Bool)) {
                        _gotoNext = 3780193i32;
                    } else {
                        _gotoNext = 3780213i32;
                    };
                } else if (__value__ == (3780193i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3780213i32)) {
                    @:check2r _r._stackPop();
                    if (@:check2r _r._operand((1 : stdgo.GoInt)) != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3780251i32;
                    } else {
                        _gotoNext = 3780341i32;
                    };
                } else if (__value__ == (3780251i32)) {
                    @:check2r _r._transferCapture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._operand((1 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    _gotoNext = 3780407i32;
                } else if (__value__ == (3780341i32)) {
                    _gotoNext = 3780341i32;
                    @:check2r _r._capture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 3780407i32;
                } else if (__value__ == (3780407i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3780468i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    @:check2r _r._uncapture();
                    if (((@:check2r _r._operand((0 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && (@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3780617i32;
                    } else {
                        _gotoNext = 3780646i32;
                    };
                } else if (__value__ == (3780617i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3780646i32;
                } else if (__value__ == (3780646i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3780655i32)) {
                    @:check2r _r._stackPop();
                    _matched_3780699 = (@:check2r _r._textPos() - @:check2r _r._stackPeek() : stdgo.GoInt);
                    if (_matched_3780699 != ((0 : stdgo.GoInt))) {
                        _gotoNext = 3780758i32;
                    } else {
                        _gotoNext = 3780986i32;
                    };
                } else if (__value__ == (3780758i32)) {
                    @:check2r _r._trackPush2(@:check2r _r._stackPeek(), @:check2r _r._textPos());
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 3781126i32;
                } else if (__value__ == (3780986i32)) {
                    _gotoNext = 3780986i32;
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3781126i32;
                } else if (__value__ == (3781126i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3781138i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3781375i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3781525i32)) {
                    {
                        _gotoNext = 3781556i32;
                    };
                } else if (__value__ == (3781556i32)) {
                    @:check2r _r._stackPop();
                    _oldMarkPos_3781747 = @:check2r _r._stackPeek();
                    if (@:check2r _r._textPos() != (_oldMarkPos_3781747)) {
                        _gotoNext = 3781809i32;
                    } else {
                        _gotoNext = 3782049i32;
                    };
                } else if (__value__ == (3781809i32)) {
                    if (_oldMarkPos_3781747 != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3781900i32;
                    } else {
                        _gotoNext = 3781984i32;
                    };
                } else if (__value__ == (3781900i32)) {
                    @:check2r _r._trackPush2(_oldMarkPos_3781747, @:check2r _r._textPos());
                    _gotoNext = 3782478i32;
                } else if (__value__ == (3781984i32)) {
                    _gotoNext = 3781984i32;
                    @:check2r _r._trackPush2(@:check2r _r._textPos(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 3782478i32;
                } else if (__value__ == (3782049i32)) {
                    _gotoNext = 3782049i32;
                    @:check2r _r._stackPush(_oldMarkPos_3781747);
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 3782478i32;
                } else if (__value__ == (3782478i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3782512i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3782923 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._stackPush(_pos_3782923);
                    @:check2r _r._textto(_pos_3782923);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3783158i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3783396i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3783509i32)) {
                    @:check2r _r._stackPush2((-1 : stdgo.GoInt), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3783614i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3783680i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3783747i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_3783844 = @:check2r _r._stackPeek();
                    _count_3783869 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    _matched_3783897 = (@:check2r _r._textPos() - _mark_3783844 : stdgo.GoInt);
                    if (((_count_3783869 >= @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) || (((_matched_3783897 == (0 : stdgo.GoInt)) && (_count_3783869 >= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3783988i32;
                    } else {
                        _gotoNext = 3784146i32;
                    };
                } else if (__value__ == (3783988i32)) {
                    @:check2r _r._trackPushNeg2(_mark_3783844, _count_3783869);
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    _gotoNext = 3784363i32;
                } else if (__value__ == (3784146i32)) {
                    _gotoNext = 3784146i32;
                    @:check2r _r._trackPush1(_mark_3783844);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_3783869 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3784363i32;
                } else if (__value__ == (3784363i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3784375i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    if ((@:check2r _r._stackPeekN((1 : stdgo.GoInt)) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3784594i32;
                    } else {
                        _gotoNext = 3784865i32;
                    };
                } else if (__value__ == (3784594i32)) {
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPushNeg2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3784865i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3784954i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3785222i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_3785323 = @:check2r _r._stackPeek();
                    _count_3785348 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    if ((_count_3785348 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3785390i32;
                    } else {
                        _gotoNext = 3785603i32;
                    };
                } else if (__value__ == (3785390i32)) {
                    @:check2r _r._trackPushNeg1(_mark_3785323);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_3785348 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 3785773i32;
                } else if (__value__ == (3785603i32)) {
                    _gotoNext = 3785603i32;
                    @:check2r _r._trackPush3(_mark_3785323, _count_3785348, @:check2r _r._textPos());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3785773i32;
                } else if (__value__ == (3785773i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3785785i32)) {
                    @:check2r _r._trackPopN((3 : stdgo.GoInt));
                    _mark_3785920 = @:check2r _r._trackPeek();
                    _textpos_3785945 = @:check2r _r._trackPeekN((2 : stdgo.GoInt));
                    if (((@:check2r _r._trackPeekN((1 : stdgo.GoInt)) < @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) && (_textpos_3785945 != _mark_3785920) : Bool)) {
                        _gotoNext = 3786029i32;
                    } else {
                        _gotoNext = 3786350i32;
                    };
                } else if (__value__ == (3786029i32)) {
                    @:check2r _r._textto(_textpos_3785945);
                    @:check2r _r._stackPush2(_textpos_3785945, (@:check2r _r._trackPeekN((1 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(_mark_3785920);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3786350i32)) {
                    _gotoNext = 3786350i32;
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3786538i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3786879i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackpos(), @:check2r _r._crawlpos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3786992i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3787057i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 3787194i32;
                } else if (__value__ == (3787194i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._stackPeekN((1 : stdgo.GoInt)))) {
                        _gotoNext = 3787230i32;
                    } else {
                        _gotoNext = 3787259i32;
                    };
                } else if (__value__ == (3787230i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3787194i32;
                } else if (__value__ == (3787259i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3787268i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPush1(@:check2r _r._stackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3787465i32)) {
                    @:check2r _r._trackPop();
                    var __blank__ = 0i32;
                    _gotoNext = 3787561i32;
                } else if (__value__ == (3787561i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._trackPeek())) {
                        _gotoNext = 3787595i32;
                    } else {
                        _gotoNext = 3787624i32;
                    };
                } else if (__value__ == (3787595i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3787561i32;
                } else if (__value__ == (3787624i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3787633i32)) {
                    if (((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt((@:check2r _r._textPos() - (1 : stdgo.GoInt) : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3787709i32;
                    } else {
                        _gotoNext = 3787729i32;
                    };
                } else if (__value__ == (3787709i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3787729i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3787757i32)) {
                    if (((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3787832i32;
                    } else {
                        _gotoNext = 3787852i32;
                    };
                } else if (__value__ == (3787832i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3787852i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3787880i32)) {
                    if (!@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3787952i32;
                    } else {
                        _gotoNext = 3787972i32;
                    };
                } else if (__value__ == (3787952i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3787972i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3788000i32)) {
                    if (@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3788074i32;
                    } else {
                        _gotoNext = 3788094i32;
                    };
                } else if (__value__ == (3788074i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3788094i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3788122i32)) {
                    if (!@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3788202i32;
                    } else {
                        _gotoNext = 3788222i32;
                    };
                } else if (__value__ == (3788202i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3788222i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3788250i32)) {
                    if (@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3788332i32;
                    } else {
                        _gotoNext = 3788352i32;
                    };
                } else if (__value__ == (3788332i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3788352i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3788380i32)) {
                    if ((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3788427i32;
                    } else {
                        _gotoNext = 3788447i32;
                    };
                } else if (__value__ == (3788427i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3788447i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3788475i32)) {
                    if (@:check2r _r._textPos() != (@:check2r _r._textstart())) {
                        _gotoNext = 3788529i32;
                    } else {
                        _gotoNext = 3788549i32;
                    };
                } else if (__value__ == (3788529i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3788549i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3788577i32)) {
                    _rchars_3788598 = @:check2r _r._rightchars();
                    if ((_rchars_3788598 > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3788640i32;
                    } else {
                        _gotoNext = 3788834i32;
                    };
                } else if (__value__ == (3788640i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3788834i32)) {
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (768 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 3788878i32;
                    } else if (((_rchars_3788598 == (1 : stdgo.GoInt)) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3789002i32;
                    } else {
                        _gotoNext = 3789045i32;
                    };
                } else if (__value__ == (3788878i32)) {
                    if ((_rchars_3788598 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3788925i32;
                    } else {
                        _gotoNext = 3789045i32;
                    };
                } else if (__value__ == (3788925i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789002i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789045i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3789073i32)) {
                    if ((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3789115i32;
                    } else {
                        _gotoNext = 3789135i32;
                    };
                } else if (__value__ == (3789115i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789135i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3789163i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() != (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3789252i32;
                    } else {
                        _gotoNext = 3789273i32;
                    };
                } else if (__value__ == (3789252i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789273i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3789301i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() == (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3789393i32;
                    } else {
                        _gotoNext = 3789414i32;
                    };
                } else if (__value__ == (3789393i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789414i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3789442i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || !(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext()) : Bool)) {
                        _gotoNext = 3789545i32;
                    } else {
                        _gotoNext = 3789566i32;
                    };
                } else if (__value__ == (3789545i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789566i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3789594i32)) {
                    if (!@:check2r _r._runematch((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").strings[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)])) {
                        _gotoNext = 3789662i32;
                    } else {
                        _gotoNext = 3789683i32;
                    };
                } else if (__value__ == (3789662i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789683i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3789711i32)) {
                    _capnum_3789732 = @:check2r _r._operand((0 : stdgo.GoInt));
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(_capnum_3789732)) {
                        _gotoNext = 3789791i32;
                    } else {
                        _gotoNext = 3789904i32;
                    };
                } else if (__value__ == (3789791i32)) {
                    if (!@:check2r _r._refmatch(@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchIndex(_capnum_3789732), @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchLength(_capnum_3789732))) {
                        _gotoNext = 3789875i32;
                    } else {
                        _gotoNext = 3789974i32;
                    };
                } else if (__value__ == (3789875i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789904i32)) {
                    _gotoNext = 3789904i32;
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (256 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) == ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 3789946i32;
                    } else {
                        _gotoNext = 3789974i32;
                    };
                } else if (__value__ == (3789946i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3789974i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3790002i32)) {
                    _c_3790026 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3790026 : Bool)) {
                        _gotoNext = 3790072i32;
                    } else {
                        _gotoNext = 3790093i32;
                    };
                } else if (__value__ == (3790072i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3790093i32)) {
                    _ch_3790093 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3790122i32;
                } else if (__value__ == (3790122i32)) {
                    if ((_c_3790026 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3790132i32;
                    } else {
                        _gotoNext = 3790216i32;
                    };
                } else if (__value__ == (3790132i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_3790093)) {
                        _gotoNext = 3790167i32;
                    } else {
                        _gotoNext = 3790203i32;
                    };
                } else if (__value__ == (3790167i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3790203i32)) {
                    _c_3790026--;
                    _gotoNext = 3790122i32;
                } else if (__value__ == (3790216i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3790244i32)) {
                    _c_3790271 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3790271 : Bool)) {
                        _gotoNext = 3790317i32;
                    } else {
                        _gotoNext = 3790337i32;
                    };
                } else if (__value__ == (3790317i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3790337i32)) {
                    _ch_3790337 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3790366i32;
                } else if (__value__ == (3790366i32)) {
                    if ((_c_3790271 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3790376i32;
                    } else {
                        _gotoNext = 3790460i32;
                    };
                } else if (__value__ == (3790376i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_3790337)) {
                        _gotoNext = 3790411i32;
                    } else {
                        _gotoNext = 3790447i32;
                    };
                } else if (__value__ == (3790411i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3790447i32)) {
                    _c_3790271--;
                    _gotoNext = 3790366i32;
                } else if (__value__ == (3790460i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3790488i32)) {
                    _c_3790512 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3790512 : Bool)) {
                        _gotoNext = 3790558i32;
                    } else {
                        _gotoNext = 3790579i32;
                    };
                } else if (__value__ == (3790558i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3790579i32)) {
                    _set_3790579 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 3790616i32;
                } else if (__value__ == (3790616i32)) {
                    if ((_c_3790512 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3790626i32;
                    } else {
                        _gotoNext = 3790717i32;
                    };
                } else if (__value__ == (3790626i32)) {
                    if (!(@:checkr _set_3790579 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3790668i32;
                    } else {
                        _gotoNext = 3790704i32;
                    };
                } else if (__value__ == (3790668i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3790704i32)) {
                    _c_3790512--;
                    _gotoNext = 3790616i32;
                } else if (__value__ == (3790717i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3790745i32)) {
                    _c_3790770 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3790770 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3790816i32;
                    } else {
                        _gotoNext = 3790852i32;
                    };
                } else if (__value__ == (3790816i32)) {
                    _c_3790770 = @:check2r _r._forwardchars();
                    _gotoNext = 3790852i32;
                } else if (__value__ == (3790852i32)) {
                    _ch_3790852 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_3790880 = _c_3790770;
                    var __blank__ = 0i32;
                    _gotoNext = 3790891i32;
                } else if (__value__ == (3790891i32)) {
                    if ((_i_3790880 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3790908i32;
                    } else {
                        _gotoNext = 3790993i32;
                    };
                } else if (__value__ == (3790904i32)) {
                    _i_3790880--;
                    _gotoNext = 3790891i32;
                } else if (__value__ == (3790908i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_3790852)) {
                        _gotoNext = 3790943i32;
                    } else {
                        _gotoNext = 3790904i32;
                    };
                } else if (__value__ == (3790943i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3790993i32;
                } else if (__value__ == (3790993i32)) {
                    if ((_c_3790770 > _i_3790880 : Bool)) {
                        _gotoNext = 3791002i32;
                    } else {
                        _gotoNext = 3791059i32;
                    };
                } else if (__value__ == (3791002i32)) {
                    @:check2r _r._trackPush2(((_c_3790770 - _i_3790880 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3791059i32;
                } else if (__value__ == (3791059i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3791087i32)) {
                    _c_3791115 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3791115 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3791161i32;
                    } else {
                        _gotoNext = 3791197i32;
                    };
                } else if (__value__ == (3791161i32)) {
                    _c_3791115 = @:check2r _r._forwardchars();
                    _gotoNext = 3791197i32;
                } else if (__value__ == (3791197i32)) {
                    _ch_3791197 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_3791225 = _c_3791115;
                    var __blank__ = 0i32;
                    _gotoNext = 3791236i32;
                } else if (__value__ == (3791236i32)) {
                    if ((_i_3791225 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3791253i32;
                    } else {
                        _gotoNext = 3791338i32;
                    };
                } else if (__value__ == (3791249i32)) {
                    _i_3791225--;
                    _gotoNext = 3791236i32;
                } else if (__value__ == (3791253i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_3791197)) {
                        _gotoNext = 3791288i32;
                    } else {
                        _gotoNext = 3791249i32;
                    };
                } else if (__value__ == (3791288i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3791338i32;
                } else if (__value__ == (3791338i32)) {
                    if ((_c_3791115 > _i_3791225 : Bool)) {
                        _gotoNext = 3791347i32;
                    } else {
                        _gotoNext = 3791404i32;
                    };
                } else if (__value__ == (3791347i32)) {
                    @:check2r _r._trackPush2(((_c_3791115 - _i_3791225 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3791404i32;
                } else if (__value__ == (3791404i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3791432i32)) {
                    _c_3791457 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3791457 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3791503i32;
                    } else {
                        _gotoNext = 3791539i32;
                    };
                } else if (__value__ == (3791503i32)) {
                    _c_3791457 = @:check2r _r._forwardchars();
                    _gotoNext = 3791539i32;
                } else if (__value__ == (3791539i32)) {
                    _set_3791539 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    _i_3791575 = _c_3791457;
                    var __blank__ = 0i32;
                    _gotoNext = 3791586i32;
                } else if (__value__ == (3791586i32)) {
                    if ((_i_3791575 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3791603i32;
                    } else {
                        _gotoNext = 3791695i32;
                    };
                } else if (__value__ == (3791599i32)) {
                    _i_3791575--;
                    _gotoNext = 3791586i32;
                } else if (__value__ == (3791603i32)) {
                    if (!(@:checkr _set_3791539 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3791645i32;
                    } else {
                        _gotoNext = 3791599i32;
                    };
                } else if (__value__ == (3791645i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3791695i32;
                } else if (__value__ == (3791695i32)) {
                    if ((_c_3791457 > _i_3791575 : Bool)) {
                        _gotoNext = 3791704i32;
                    } else {
                        _gotoNext = 3791761i32;
                    };
                } else if (__value__ == (3791704i32)) {
                    @:check2r _r._trackPush2(((_c_3791457 - _i_3791575 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3791761i32;
                } else if (__value__ == (3791761i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3791789i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_3791879 = @:check2r _r._trackPeek();
                    _pos_3791901 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3791901);
                    if ((_i_3791879 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3791955i32;
                    } else {
                        _gotoNext = 3792002i32;
                    };
                } else if (__value__ == (3791955i32)) {
                    @:check2r _r._trackPush2((_i_3791879 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3791901 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3792002i32;
                } else if (__value__ == (3792002i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3792030i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_3792087 = @:check2r _r._trackPeek();
                    _pos_3792109 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3792109);
                    if ((_i_3792087 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3792163i32;
                    } else {
                        _gotoNext = 3792210i32;
                    };
                } else if (__value__ == (3792163i32)) {
                    @:check2r _r._trackPush2((_i_3792087 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3792109 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3792210i32;
                } else if (__value__ == (3792210i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3792238i32)) {
                    _c_3792282 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3792282 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3792328i32;
                    } else {
                        _gotoNext = 3792364i32;
                    };
                } else if (__value__ == (3792328i32)) {
                    _c_3792282 = @:check2r _r._forwardchars();
                    _gotoNext = 3792364i32;
                } else if (__value__ == (3792364i32)) {
                    if ((_c_3792282 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3792373i32;
                    } else {
                        _gotoNext = 3792419i32;
                    };
                } else if (__value__ == (3792373i32)) {
                    @:check2r _r._trackPush2((_c_3792282 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 3792419i32;
                } else if (__value__ == (3792419i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3792447i32)) {
                    _c_3792472 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3792472 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3792518i32;
                    } else {
                        _gotoNext = 3792554i32;
                    };
                } else if (__value__ == (3792518i32)) {
                    _c_3792472 = @:check2r _r._forwardchars();
                    _gotoNext = 3792554i32;
                } else if (__value__ == (3792554i32)) {
                    if ((_c_3792472 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3792563i32;
                    } else {
                        _gotoNext = 3792609i32;
                    };
                } else if (__value__ == (3792563i32)) {
                    @:check2r _r._trackPush2((_c_3792472 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 3792609i32;
                } else if (__value__ == (3792609i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3792637i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3792694 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3792694);
                    if (@:check2r _r._forwardcharnext() != ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 3792783i32;
                    } else {
                        _gotoNext = 3792804i32;
                    };
                } else if (__value__ == (3792783i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3792804i32)) {
                    _i_3792804 = @:check2r _r._trackPeek();
                    if ((_i_3792804 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3792836i32;
                    } else {
                        _gotoNext = 3792883i32;
                    };
                } else if (__value__ == (3792836i32)) {
                    @:check2r _r._trackPush2((_i_3792804 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3792694 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3792883i32;
                } else if (__value__ == (3792883i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3792911i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3792971 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3792971);
                    if (@:check2r _r._forwardcharnext() == ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 3793060i32;
                    } else {
                        _gotoNext = 3793081i32;
                    };
                } else if (__value__ == (3793060i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3793081i32)) {
                    _i_3793081 = @:check2r _r._trackPeek();
                    if ((_i_3793081 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3793113i32;
                    } else {
                        _gotoNext = 3793160i32;
                    };
                } else if (__value__ == (3793113i32)) {
                    @:check2r _r._trackPush2((_i_3793081 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3792971 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3793160i32;
                } else if (__value__ == (3793160i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3793188i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3793245 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3793245);
                    if (!(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3793347i32;
                    } else {
                        _gotoNext = 3793368i32;
                    };
                } else if (__value__ == (3793347i32)) {
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3793368i32)) {
                    _i_3793368 = @:check2r _r._trackPeek();
                    if ((_i_3793368 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3793400i32;
                    } else {
                        _gotoNext = 3793447i32;
                    };
                } else if (__value__ == (3793400i32)) {
                    @:check2r _r._trackPush2((_i_3793368 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3793245 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3793447i32;
                } else if (__value__ == (3793447i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3793475i32)) {
                    return stdgo._internal.errors.Errors_new_.new_(("unknown state in regex runner" : stdgo.GoString));
                    _gotoNext = 3793544i32;
                } else if (__value__ == (3793544i32)) {
                    _gotoNext = 3793544i32;
                    {};
                    @:check2r _r._backtrack();
                    _gotoNext = 3779030i32;
                } else if (__value__ == (3793617i32)) {
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
