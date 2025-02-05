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
        var _c_3786974:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3786571:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3785544:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _count_3780040:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3780015:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3785807:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3785029:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _rchars_3783290:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldMarkPos_3776439:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3773776:stdgo.Error = (null : stdgo.Error);
        var _pos_3786593:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3786267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3785889:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_3787164:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3785917:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3785572:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3778536:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3787496:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3786149:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_3785271:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _textpos_3780637:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3787937:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3784785:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_3784718:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3780612:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3787663:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3786801:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_3786231:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _c_3785204:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capnum_3784424:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3785462:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3784963:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3778589:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_3778561:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3775391:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3787386:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3786779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3788060:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3787773:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3777615:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2r _r._goTo((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3773722i32)) {
                    if (true) {
                        _gotoNext = 3773726i32;
                    } else {
                        _gotoNext = 3788309i32;
                    };
                } else if (__value__ == (3773726i32)) {
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
                        _gotoNext = 3773747i32;
                    } else {
                        _gotoNext = 3773773i32;
                    };
                } else if (__value__ == (3773747i32)) {
                    @:check2r _r._dumpState();
                    _gotoNext = 3773773i32;
                } else if (__value__ == (3773773i32)) {
                    {
                        _err_3773776 = @:check2r _r._checkTimeout();
                        if (_err_3773776 != null) {
                            _gotoNext = 3773812i32;
                        } else {
                            _gotoNext = 3773835i32;
                        };
                    };
                } else if (__value__ == (3773812i32)) {
                    return _err_3773776;
                    _gotoNext = 3773835i32;
                } else if (__value__ == (3773835i32)) {
                    _gotoNext = 3773835i32;
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._operator;
                        if (__value__ == ((40 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3773857i32;
                        } else if (__value__ == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3773892i32;
                        } else if (__value__ == ((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3773925i32;
                        } else if (__value__ == ((37 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3773982i32;
                        } else if (__value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774093i32;
                        } else if (__value__ == ((151 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774177i32;
                        } else if (__value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774297i32;
                        } else if (__value__ == ((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774394i32;
                        } else if (__value__ == ((159 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((158 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774483i32;
                        } else if (__value__ == ((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774577i32;
                        } else if (__value__ == ((161 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774703i32;
                        } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3774796i32;
                        } else if (__value__ == ((160 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3775160i32;
                        } else if (__value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3775347i32;
                        } else if (__value__ == ((152 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3775830i32;
                        } else if (__value__ == ((280 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3776067i32;
                        } else if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3776217i32;
                        } else if (__value__ == ((153 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3777204i32;
                        } else if (__value__ == ((281 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3777850i32;
                        } else if (__value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3778088i32;
                        } else if (__value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3778201i32;
                        } else if (__value__ == ((155 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3778306i32;
                        } else if (__value__ == ((154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3778372i32;
                        } else if (__value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3778439i32;
                        } else if (__value__ == ((156 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779067i32;
                        } else if (__value__ == ((284 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779646i32;
                        } else if (__value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3779914i32;
                        } else if (__value__ == ((157 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3780477i32;
                        } else if (__value__ == ((285 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781230i32;
                        } else if (__value__ == ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781571i32;
                        } else if (__value__ == ((162 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781684i32;
                        } else if (__value__ == ((35 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781749i32;
                        } else if (__value__ == ((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3781960i32;
                        } else if (__value__ == ((164 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782157i32;
                        } else if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782325i32;
                        } else if (__value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782449i32;
                        } else if (__value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782572i32;
                        } else if (__value__ == ((17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782692i32;
                        } else if (__value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782814i32;
                        } else if (__value__ == ((42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3782942i32;
                        } else if (__value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783072i32;
                        } else if (__value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783167i32;
                        } else if (__value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783269i32;
                        } else if (__value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783765i32;
                        } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783855i32;
                        } else if (__value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3783993i32;
                        } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784134i32;
                        } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784286i32;
                        } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784403i32;
                        } else if (__value__ == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784694i32;
                        } else if (__value__ == ((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3784936i32;
                        } else if (__value__ == ((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785180i32;
                        } else if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785437i32;
                        } else if (__value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3785779i32;
                        } else if (__value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786124i32;
                        } else if (__value__ == ((131 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((132 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786481i32;
                        } else if (__value__ == ((133 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786722i32;
                        } else if (__value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3786930i32;
                        } else if (__value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787139i32;
                        } else if (__value__ == ((134 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787329i32;
                        } else if (__value__ == ((135 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787603i32;
                        } else if (__value__ == ((136 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3787880i32;
                        } else {
                            _gotoNext = 3788167i32;
                        };
                    };
                } else if (__value__ == (3773857i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3773892i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3773925i32)) {
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3773982i32)) {
                    if (!@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((0 : stdgo.GoInt)))) {
                        _gotoNext = 3774045i32;
                    } else {
                        _gotoNext = 3774065i32;
                    };
                } else if (__value__ == (3774045i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3774065i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3774093i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._textPos());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3774177i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeek());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3774297i32)) {
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3774394i32)) {
                    @:check2r _r._stackPush((-1 : stdgo.GoInt));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3774483i32)) {
                    @:check2r _r._stackPop();
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3774577i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3774703i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3774796i32)) {
                    if (((@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && !@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((1 : stdgo.GoInt))) : Bool)) {
                        _gotoNext = 3774885i32;
                    } else {
                        _gotoNext = 3774905i32;
                    };
                } else if (__value__ == (3774885i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3774905i32)) {
                    @:check2r _r._stackPop();
                    if (@:check2r _r._operand((1 : stdgo.GoInt)) != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3774943i32;
                    } else {
                        _gotoNext = 3775033i32;
                    };
                } else if (__value__ == (3774943i32)) {
                    @:check2r _r._transferCapture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._operand((1 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    _gotoNext = 3775099i32;
                } else if (__value__ == (3775033i32)) {
                    _gotoNext = 3775033i32;
                    @:check2r _r._capture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 3775099i32;
                } else if (__value__ == (3775099i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3775160i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    @:check2r _r._uncapture();
                    if (((@:check2r _r._operand((0 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && (@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3775309i32;
                    } else {
                        _gotoNext = 3775338i32;
                    };
                } else if (__value__ == (3775309i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3775338i32;
                } else if (__value__ == (3775338i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3775347i32)) {
                    @:check2r _r._stackPop();
                    _matched_3775391 = (@:check2r _r._textPos() - @:check2r _r._stackPeek() : stdgo.GoInt);
                    if (_matched_3775391 != ((0 : stdgo.GoInt))) {
                        _gotoNext = 3775450i32;
                    } else {
                        _gotoNext = 3775678i32;
                    };
                } else if (__value__ == (3775450i32)) {
                    @:check2r _r._trackPush2(@:check2r _r._stackPeek(), @:check2r _r._textPos());
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 3775818i32;
                } else if (__value__ == (3775678i32)) {
                    _gotoNext = 3775678i32;
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3775818i32;
                } else if (__value__ == (3775818i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3775830i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3776067i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3776217i32)) {
                    {
                        _gotoNext = 3776248i32;
                    };
                } else if (__value__ == (3776248i32)) {
                    @:check2r _r._stackPop();
                    _oldMarkPos_3776439 = @:check2r _r._stackPeek();
                    if (@:check2r _r._textPos() != (_oldMarkPos_3776439)) {
                        _gotoNext = 3776501i32;
                    } else {
                        _gotoNext = 3776741i32;
                    };
                } else if (__value__ == (3776501i32)) {
                    if (_oldMarkPos_3776439 != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3776592i32;
                    } else {
                        _gotoNext = 3776676i32;
                    };
                } else if (__value__ == (3776592i32)) {
                    @:check2r _r._trackPush2(_oldMarkPos_3776439, @:check2r _r._textPos());
                    _gotoNext = 3777170i32;
                } else if (__value__ == (3776676i32)) {
                    _gotoNext = 3776676i32;
                    @:check2r _r._trackPush2(@:check2r _r._textPos(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 3777170i32;
                } else if (__value__ == (3776741i32)) {
                    _gotoNext = 3776741i32;
                    @:check2r _r._stackPush(_oldMarkPos_3776439);
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 3777170i32;
                } else if (__value__ == (3777170i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3777204i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3777615 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._stackPush(_pos_3777615);
                    @:check2r _r._textto(_pos_3777615);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3777850i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3778088i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3778201i32)) {
                    @:check2r _r._stackPush2((-1 : stdgo.GoInt), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3778306i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3778372i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3778439i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_3778536 = @:check2r _r._stackPeek();
                    _count_3778561 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    _matched_3778589 = (@:check2r _r._textPos() - _mark_3778536 : stdgo.GoInt);
                    if (((_count_3778561 >= @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) || (((_matched_3778589 == (0 : stdgo.GoInt)) && (_count_3778561 >= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3778680i32;
                    } else {
                        _gotoNext = 3778838i32;
                    };
                } else if (__value__ == (3778680i32)) {
                    @:check2r _r._trackPushNeg2(_mark_3778536, _count_3778561);
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    _gotoNext = 3779055i32;
                } else if (__value__ == (3778838i32)) {
                    _gotoNext = 3778838i32;
                    @:check2r _r._trackPush1(_mark_3778536);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_3778561 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3779055i32;
                } else if (__value__ == (3779055i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3779067i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    if ((@:check2r _r._stackPeekN((1 : stdgo.GoInt)) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3779286i32;
                    } else {
                        _gotoNext = 3779557i32;
                    };
                } else if (__value__ == (3779286i32)) {
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPushNeg2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3779557i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3779646i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3779914i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_3780015 = @:check2r _r._stackPeek();
                    _count_3780040 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    if ((_count_3780040 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3780082i32;
                    } else {
                        _gotoNext = 3780295i32;
                    };
                } else if (__value__ == (3780082i32)) {
                    @:check2r _r._trackPushNeg1(_mark_3780015);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_3780040 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 3780465i32;
                } else if (__value__ == (3780295i32)) {
                    _gotoNext = 3780295i32;
                    @:check2r _r._trackPush3(_mark_3780015, _count_3780040, @:check2r _r._textPos());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3780465i32;
                } else if (__value__ == (3780465i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3780477i32)) {
                    @:check2r _r._trackPopN((3 : stdgo.GoInt));
                    _mark_3780612 = @:check2r _r._trackPeek();
                    _textpos_3780637 = @:check2r _r._trackPeekN((2 : stdgo.GoInt));
                    if (((@:check2r _r._trackPeekN((1 : stdgo.GoInt)) < @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) && (_textpos_3780637 != _mark_3780612) : Bool)) {
                        _gotoNext = 3780721i32;
                    } else {
                        _gotoNext = 3781042i32;
                    };
                } else if (__value__ == (3780721i32)) {
                    @:check2r _r._textto(_textpos_3780637);
                    @:check2r _r._stackPush2(_textpos_3780637, (@:check2r _r._trackPeekN((1 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(_mark_3780612);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3781042i32)) {
                    _gotoNext = 3781042i32;
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3781230i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3781571i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackpos(), @:check2r _r._crawlpos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3781684i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3781749i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 3781886i32;
                } else if (__value__ == (3781886i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._stackPeekN((1 : stdgo.GoInt)))) {
                        _gotoNext = 3781922i32;
                    } else {
                        _gotoNext = 3781951i32;
                    };
                } else if (__value__ == (3781922i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3781886i32;
                } else if (__value__ == (3781951i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3781960i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPush1(@:check2r _r._stackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3782157i32)) {
                    @:check2r _r._trackPop();
                    var __blank__ = 0i32;
                    _gotoNext = 3782253i32;
                } else if (__value__ == (3782253i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._trackPeek())) {
                        _gotoNext = 3782287i32;
                    } else {
                        _gotoNext = 3782316i32;
                    };
                } else if (__value__ == (3782287i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3782253i32;
                } else if (__value__ == (3782316i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3782325i32)) {
                    if (((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt((@:check2r _r._textPos() - (1 : stdgo.GoInt) : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3782401i32;
                    } else {
                        _gotoNext = 3782421i32;
                    };
                } else if (__value__ == (3782401i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3782421i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3782449i32)) {
                    if (((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3782524i32;
                    } else {
                        _gotoNext = 3782544i32;
                    };
                } else if (__value__ == (3782524i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3782544i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3782572i32)) {
                    if (!@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3782644i32;
                    } else {
                        _gotoNext = 3782664i32;
                    };
                } else if (__value__ == (3782644i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3782664i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3782692i32)) {
                    if (@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3782766i32;
                    } else {
                        _gotoNext = 3782786i32;
                    };
                } else if (__value__ == (3782766i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3782786i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3782814i32)) {
                    if (!@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3782894i32;
                    } else {
                        _gotoNext = 3782914i32;
                    };
                } else if (__value__ == (3782894i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3782914i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3782942i32)) {
                    if (@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3783024i32;
                    } else {
                        _gotoNext = 3783044i32;
                    };
                } else if (__value__ == (3783024i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783044i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3783072i32)) {
                    if ((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783119i32;
                    } else {
                        _gotoNext = 3783139i32;
                    };
                } else if (__value__ == (3783119i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783139i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3783167i32)) {
                    if (@:check2r _r._textPos() != (@:check2r _r._textstart())) {
                        _gotoNext = 3783221i32;
                    } else {
                        _gotoNext = 3783241i32;
                    };
                } else if (__value__ == (3783221i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783241i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3783269i32)) {
                    _rchars_3783290 = @:check2r _r._rightchars();
                    if ((_rchars_3783290 > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783332i32;
                    } else {
                        _gotoNext = 3783526i32;
                    };
                } else if (__value__ == (3783332i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783526i32)) {
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (768 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 3783570i32;
                    } else if (((_rchars_3783290 == (1 : stdgo.GoInt)) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3783694i32;
                    } else {
                        _gotoNext = 3783737i32;
                    };
                } else if (__value__ == (3783570i32)) {
                    if ((_rchars_3783290 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783617i32;
                    } else {
                        _gotoNext = 3783737i32;
                    };
                } else if (__value__ == (3783617i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783694i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783737i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3783765i32)) {
                    if ((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783807i32;
                    } else {
                        _gotoNext = 3783827i32;
                    };
                } else if (__value__ == (3783807i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783827i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3783855i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() != (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3783944i32;
                    } else {
                        _gotoNext = 3783965i32;
                    };
                } else if (__value__ == (3783944i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3783965i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3783993i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() == (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3784085i32;
                    } else {
                        _gotoNext = 3784106i32;
                    };
                } else if (__value__ == (3784085i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784106i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3784134i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || !(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext()) : Bool)) {
                        _gotoNext = 3784237i32;
                    } else {
                        _gotoNext = 3784258i32;
                    };
                } else if (__value__ == (3784237i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784258i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3784286i32)) {
                    if (!@:check2r _r._runematch((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").strings[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)])) {
                        _gotoNext = 3784354i32;
                    } else {
                        _gotoNext = 3784375i32;
                    };
                } else if (__value__ == (3784354i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784375i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3784403i32)) {
                    _capnum_3784424 = @:check2r _r._operand((0 : stdgo.GoInt));
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(_capnum_3784424)) {
                        _gotoNext = 3784483i32;
                    } else {
                        _gotoNext = 3784596i32;
                    };
                } else if (__value__ == (3784483i32)) {
                    if (!@:check2r _r._refmatch(@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchIndex(_capnum_3784424), @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchLength(_capnum_3784424))) {
                        _gotoNext = 3784567i32;
                    } else {
                        _gotoNext = 3784666i32;
                    };
                } else if (__value__ == (3784567i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784596i32)) {
                    _gotoNext = 3784596i32;
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (256 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) == ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
                        _gotoNext = 3784638i32;
                    } else {
                        _gotoNext = 3784666i32;
                    };
                } else if (__value__ == (3784638i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784666i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3784694i32)) {
                    _c_3784718 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3784718 : Bool)) {
                        _gotoNext = 3784764i32;
                    } else {
                        _gotoNext = 3784785i32;
                    };
                } else if (__value__ == (3784764i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784785i32)) {
                    _ch_3784785 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3784814i32;
                } else if (__value__ == (3784814i32)) {
                    if ((_c_3784718 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3784824i32;
                    } else {
                        _gotoNext = 3784908i32;
                    };
                } else if (__value__ == (3784824i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_3784785)) {
                        _gotoNext = 3784859i32;
                    } else {
                        _gotoNext = 3784895i32;
                    };
                } else if (__value__ == (3784859i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3784895i32)) {
                    _c_3784718--;
                    _gotoNext = 3784814i32;
                } else if (__value__ == (3784908i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3784936i32)) {
                    _c_3784963 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3784963 : Bool)) {
                        _gotoNext = 3785009i32;
                    } else {
                        _gotoNext = 3785029i32;
                    };
                } else if (__value__ == (3785009i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3785029i32)) {
                    _ch_3785029 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3785058i32;
                } else if (__value__ == (3785058i32)) {
                    if ((_c_3784963 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3785068i32;
                    } else {
                        _gotoNext = 3785152i32;
                    };
                } else if (__value__ == (3785068i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_3785029)) {
                        _gotoNext = 3785103i32;
                    } else {
                        _gotoNext = 3785139i32;
                    };
                } else if (__value__ == (3785103i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3785139i32)) {
                    _c_3784963--;
                    _gotoNext = 3785058i32;
                } else if (__value__ == (3785152i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3785180i32)) {
                    _c_3785204 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3785204 : Bool)) {
                        _gotoNext = 3785250i32;
                    } else {
                        _gotoNext = 3785271i32;
                    };
                } else if (__value__ == (3785250i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3785271i32)) {
                    _set_3785271 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 3785308i32;
                } else if (__value__ == (3785308i32)) {
                    if ((_c_3785204 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3785318i32;
                    } else {
                        _gotoNext = 3785409i32;
                    };
                } else if (__value__ == (3785318i32)) {
                    if (!(@:checkr _set_3785271 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3785360i32;
                    } else {
                        _gotoNext = 3785396i32;
                    };
                } else if (__value__ == (3785360i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3785396i32)) {
                    _c_3785204--;
                    _gotoNext = 3785308i32;
                } else if (__value__ == (3785409i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3785437i32)) {
                    _c_3785462 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3785462 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3785508i32;
                    } else {
                        _gotoNext = 3785544i32;
                    };
                } else if (__value__ == (3785508i32)) {
                    _c_3785462 = @:check2r _r._forwardchars();
                    _gotoNext = 3785544i32;
                } else if (__value__ == (3785544i32)) {
                    _ch_3785544 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_3785572 = _c_3785462;
                    var __blank__ = 0i32;
                    _gotoNext = 3785583i32;
                } else if (__value__ == (3785583i32)) {
                    if ((_i_3785572 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3785600i32;
                    } else {
                        _gotoNext = 3785685i32;
                    };
                } else if (__value__ == (3785596i32)) {
                    _i_3785572--;
                    _gotoNext = 3785583i32;
                } else if (__value__ == (3785600i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_3785544)) {
                        _gotoNext = 3785635i32;
                    } else {
                        _gotoNext = 3785596i32;
                    };
                } else if (__value__ == (3785635i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3785685i32;
                } else if (__value__ == (3785685i32)) {
                    if ((_c_3785462 > _i_3785572 : Bool)) {
                        _gotoNext = 3785694i32;
                    } else {
                        _gotoNext = 3785751i32;
                    };
                } else if (__value__ == (3785694i32)) {
                    @:check2r _r._trackPush2(((_c_3785462 - _i_3785572 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3785751i32;
                } else if (__value__ == (3785751i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3785779i32)) {
                    _c_3785807 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3785807 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3785853i32;
                    } else {
                        _gotoNext = 3785889i32;
                    };
                } else if (__value__ == (3785853i32)) {
                    _c_3785807 = @:check2r _r._forwardchars();
                    _gotoNext = 3785889i32;
                } else if (__value__ == (3785889i32)) {
                    _ch_3785889 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_3785917 = _c_3785807;
                    var __blank__ = 0i32;
                    _gotoNext = 3785928i32;
                } else if (__value__ == (3785928i32)) {
                    if ((_i_3785917 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3785945i32;
                    } else {
                        _gotoNext = 3786030i32;
                    };
                } else if (__value__ == (3785941i32)) {
                    _i_3785917--;
                    _gotoNext = 3785928i32;
                } else if (__value__ == (3785945i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_3785889)) {
                        _gotoNext = 3785980i32;
                    } else {
                        _gotoNext = 3785941i32;
                    };
                } else if (__value__ == (3785980i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3786030i32;
                } else if (__value__ == (3786030i32)) {
                    if ((_c_3785807 > _i_3785917 : Bool)) {
                        _gotoNext = 3786039i32;
                    } else {
                        _gotoNext = 3786096i32;
                    };
                } else if (__value__ == (3786039i32)) {
                    @:check2r _r._trackPush2(((_c_3785807 - _i_3785917 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3786096i32;
                } else if (__value__ == (3786096i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3786124i32)) {
                    _c_3786149 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3786149 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3786195i32;
                    } else {
                        _gotoNext = 3786231i32;
                    };
                } else if (__value__ == (3786195i32)) {
                    _c_3786149 = @:check2r _r._forwardchars();
                    _gotoNext = 3786231i32;
                } else if (__value__ == (3786231i32)) {
                    _set_3786231 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    _i_3786267 = _c_3786149;
                    var __blank__ = 0i32;
                    _gotoNext = 3786278i32;
                } else if (__value__ == (3786278i32)) {
                    if ((_i_3786267 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3786295i32;
                    } else {
                        _gotoNext = 3786387i32;
                    };
                } else if (__value__ == (3786291i32)) {
                    _i_3786267--;
                    _gotoNext = 3786278i32;
                } else if (__value__ == (3786295i32)) {
                    if (!(@:checkr _set_3786231 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3786337i32;
                    } else {
                        _gotoNext = 3786291i32;
                    };
                } else if (__value__ == (3786337i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3786387i32;
                } else if (__value__ == (3786387i32)) {
                    if ((_c_3786149 > _i_3786267 : Bool)) {
                        _gotoNext = 3786396i32;
                    } else {
                        _gotoNext = 3786453i32;
                    };
                } else if (__value__ == (3786396i32)) {
                    @:check2r _r._trackPush2(((_c_3786149 - _i_3786267 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3786453i32;
                } else if (__value__ == (3786453i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3786481i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_3786571 = @:check2r _r._trackPeek();
                    _pos_3786593 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3786593);
                    if ((_i_3786571 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3786647i32;
                    } else {
                        _gotoNext = 3786694i32;
                    };
                } else if (__value__ == (3786647i32)) {
                    @:check2r _r._trackPush2((_i_3786571 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3786593 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3786694i32;
                } else if (__value__ == (3786694i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3786722i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_3786779 = @:check2r _r._trackPeek();
                    _pos_3786801 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3786801);
                    if ((_i_3786779 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3786855i32;
                    } else {
                        _gotoNext = 3786902i32;
                    };
                } else if (__value__ == (3786855i32)) {
                    @:check2r _r._trackPush2((_i_3786779 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3786801 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3786902i32;
                } else if (__value__ == (3786902i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3786930i32)) {
                    _c_3786974 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3786974 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3787020i32;
                    } else {
                        _gotoNext = 3787056i32;
                    };
                } else if (__value__ == (3787020i32)) {
                    _c_3786974 = @:check2r _r._forwardchars();
                    _gotoNext = 3787056i32;
                } else if (__value__ == (3787056i32)) {
                    if ((_c_3786974 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3787065i32;
                    } else {
                        _gotoNext = 3787111i32;
                    };
                } else if (__value__ == (3787065i32)) {
                    @:check2r _r._trackPush2((_c_3786974 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 3787111i32;
                } else if (__value__ == (3787111i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3787139i32)) {
                    _c_3787164 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3787164 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3787210i32;
                    } else {
                        _gotoNext = 3787246i32;
                    };
                } else if (__value__ == (3787210i32)) {
                    _c_3787164 = @:check2r _r._forwardchars();
                    _gotoNext = 3787246i32;
                } else if (__value__ == (3787246i32)) {
                    if ((_c_3787164 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3787255i32;
                    } else {
                        _gotoNext = 3787301i32;
                    };
                } else if (__value__ == (3787255i32)) {
                    @:check2r _r._trackPush2((_c_3787164 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 3787301i32;
                } else if (__value__ == (3787301i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3787329i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3787386 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3787386);
                    if (@:check2r _r._forwardcharnext() != ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 3787475i32;
                    } else {
                        _gotoNext = 3787496i32;
                    };
                } else if (__value__ == (3787475i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3787496i32)) {
                    _i_3787496 = @:check2r _r._trackPeek();
                    if ((_i_3787496 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3787528i32;
                    } else {
                        _gotoNext = 3787575i32;
                    };
                } else if (__value__ == (3787528i32)) {
                    @:check2r _r._trackPush2((_i_3787496 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3787386 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3787575i32;
                } else if (__value__ == (3787575i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3787603i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3787663 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3787663);
                    if (@:check2r _r._forwardcharnext() == ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 3787752i32;
                    } else {
                        _gotoNext = 3787773i32;
                    };
                } else if (__value__ == (3787752i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3787773i32)) {
                    _i_3787773 = @:check2r _r._trackPeek();
                    if ((_i_3787773 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3787805i32;
                    } else {
                        _gotoNext = 3787852i32;
                    };
                } else if (__value__ == (3787805i32)) {
                    @:check2r _r._trackPush2((_i_3787773 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3787663 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3787852i32;
                } else if (__value__ == (3787852i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3787880i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3787937 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3787937);
                    if (!(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3788039i32;
                    } else {
                        _gotoNext = 3788060i32;
                    };
                } else if (__value__ == (3788039i32)) {
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3788060i32)) {
                    _i_3788060 = @:check2r _r._trackPeek();
                    if ((_i_3788060 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3788092i32;
                    } else {
                        _gotoNext = 3788139i32;
                    };
                } else if (__value__ == (3788092i32)) {
                    @:check2r _r._trackPush2((_i_3788060 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3787937 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3788139i32;
                } else if (__value__ == (3788139i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3788167i32)) {
                    return stdgo._internal.errors.Errors_new_.new_(("unknown state in regex runner" : stdgo.GoString));
                    _gotoNext = 3788236i32;
                } else if (__value__ == (3788236i32)) {
                    _gotoNext = 3788236i32;
                    {};
                    @:check2r _r._backtrack();
                    _gotoNext = 3773722i32;
                } else if (__value__ == (3788309i32)) {
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
