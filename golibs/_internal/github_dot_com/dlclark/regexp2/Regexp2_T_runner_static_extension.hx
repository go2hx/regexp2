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
    static public function _initTrackCount( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackcount = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").trackCount;
    }
    @:keep
    @:tdfield
    static public function _checkTimeout( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._ignoreTimeout || !(@:checkr _r ?? throw "null pointer dereference")._deadline._reached() : Bool)) {
            return (null : stdgo.Error);
        };
        if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {};
        return stdgo._internal.fmt.Fmt_errorf.errorf(("match timeout after %v on input `%v`" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._timeout)), stdgo.Go.toInterface(((@:checkr _r ?? throw "null pointer dereference")._runtext : stdgo.GoString)));
    }
    @:keep
    @:tdfield
    static public function _startTimeoutWatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._ignoreTimeout) {
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._deadline = _internal.github_dot_com.dlclark.regexp2.Regexp2__makeDeadline._makeDeadline((@:checkr _r ?? throw "null pointer dereference")._timeout);
    }
    @:keep
    @:tdfield
    static public function _isECMABoundary( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (((_index > _startpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isECMAWordChar.isECMAWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) != (((_index < _endpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isECMAWordChar.isECMAWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index : stdgo.GoInt)]) : Bool));
    }
    @:keep
    @:tdfield
    static public function _isBoundary( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (((_index > _startpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isWordChar.isWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) != (((_index < _endpos : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isWordChar.isWordChar((@:checkr _r ?? throw "null pointer dereference")._runtext[(_index : stdgo.GoInt)]) : Bool));
    }
    @:keep
    @:tdfield
    static public function _textposDescription( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        @:check2r _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _r ?? throw "null pointer dereference")._runtextpos)?.__copy__());
        if ((@:check2r _buf.len() < (8 : stdgo.GoInt) : Bool)) {
            @:check2r _buf.writeString(stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), ((8 : stdgo.GoInt) - @:check2r _buf.len() : stdgo.GoInt))?.__copy__());
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charDescription.charDescription((@:checkr _r ?? throw "null pointer dereference")._runtext[((@:checkr _r ?? throw "null pointer dereference")._runtextpos - (1 : stdgo.GoInt) : stdgo.GoInt)])?.__copy__());
        } else {
            @:check2r _buf.writeRune((94 : stdgo.GoInt32));
        };
        @:check2r _buf.writeRune((62 : stdgo.GoInt32));
        {
            var _i = ((@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt);
            while ((_i < (@:checkr _r ?? throw "null pointer dereference")._runtextend : Bool)) {
                @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charDescription.charDescription((@:checkr _r ?? throw "null pointer dereference")._runtext[(_i : stdgo.GoInt)]).__copy__());
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
    static public function _stackDescription( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _a:stdgo.Slice<stdgo.GoInt>, _index:stdgo.GoInt):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
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
    static public function _dumpState( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _back = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((@:checkr _r ?? throw "null pointer dereference")._operator & (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
            _back = (" Back" : stdgo.GoString);
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._operator & (256 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
            _back = (_back + ((" Back2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        stdgo._internal.fmt.Fmt_printf.printf(("Text:  %v\nTrack: %v\nStack: %v\n       %s%s\n\n" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _r._textposDescription()), stdgo.Go.toInterface(@:check2r _r._stackDescription((@:checkr _r ?? throw "null pointer dereference")._runtrack, (@:checkr _r ?? throw "null pointer dereference")._runtrackpos)), stdgo.Go.toInterface(@:check2r _r._stackDescription((@:checkr _r ?? throw "null pointer dereference")._runstack, (@:checkr _r ?? throw "null pointer dereference")._runstackpos)), stdgo.Go.toInterface(@:check2r (@:checkr _r ?? throw "null pointer dereference")._code.opcodeDescription((@:checkr _r ?? throw "null pointer dereference")._codepos)), stdgo.Go.toInterface(_back));
    }
    @:keep
    @:tdfield
    static public function _uncapture( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _capnum = (@:check2r _r._popcrawl() : stdgo.GoInt);
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._removeMatch(_capnum);
    }
    @:keep
    @:tdfield
    static public function _transferCapture( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _capnum:stdgo.GoInt, _uncapnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
    static public function _capture( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _capnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
    static public function _tidyMatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _quick:Bool):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_Match.Match> {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
    static public function _initMatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._runmatch == null || ((@:checkr _r ?? throw "null pointer dereference")._runmatch : Dynamic).__nil__)) {
            if ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._caps != null) {
                (@:checkr _r ?? throw "null pointer dereference")._runmatch = _internal.github_dot_com.dlclark.regexp2.Regexp2__newMatchSparse._newMatchSparse((@:checkr _r ?? throw "null pointer dereference")._re, (@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._caps, (@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._capsize, (@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextstart);
            } else {
                (@:checkr _r ?? throw "null pointer dereference")._runmatch = _internal.github_dot_com.dlclark.regexp2.Regexp2__newMatch._newMatch((@:checkr _r ?? throw "null pointer dereference")._re, (@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._capsize, (@:checkr _r ?? throw "null pointer dereference")._runtext, (@:checkr _r ?? throw "null pointer dereference")._runtextstart);
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
    static public function _findFirstChar( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (53 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) {
            if (!(@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").rightToLeft) {
                if ((((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (0 : stdgo.GoInt) : Bool) : Bool)) || ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (@:checkr _r ?? throw "null pointer dereference")._runtextstart : Bool) : Bool)) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (@:checkr _r ?? throw "null pointer dereference")._runtextend;
                    return false;
                };
                if ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt);
                } else if ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < (@:checkr _r ?? throw "null pointer dereference")._runtextend : Bool) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (@:checkr _r ?? throw "null pointer dereference")._runtextend;
                };
            } else {
                if (((((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < (@:checkr _r ?? throw "null pointer dereference")._runtextend : Bool) : Bool)) || ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((((@:checkr _r ?? throw "null pointer dereference")._runtextpos < ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool) || ((((@:checkr _r ?? throw "null pointer dereference")._runtextpos == ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (1 : stdgo.GoInt) : stdgo.GoInt)) && (@:check2r _r._charAt((@:checkr _r ?? throw "null pointer dereference")._runtextpos) != (10 : stdgo.GoInt32)) : Bool)) : Bool)) : Bool)) : Bool) || ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos < (@:checkr _r ?? throw "null pointer dereference")._runtextstart : Bool) : Bool)) : Bool)) {
                    (@:checkr _r ?? throw "null pointer dereference")._runtextpos = (0 : stdgo.GoInt);
                    return false;
                };
                if ((((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) != (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").anchors & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_AnchorLoc.AnchorLoc))) && ((@:checkr _r ?? throw "null pointer dereference")._runtextpos > (0 : stdgo.GoInt) : Bool) : Bool)) {
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
        var _set = ((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix ?? throw "null pointer dereference").prefixSet?.__copy__() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
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
    static public function _charAt( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _j:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtext[(_j : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _backwardnext( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos++;
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos--;
        };
    }
    @:keep
    @:tdfield
    static public function _refmatch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _index:stdgo.GoInt, _len:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
                if (stdgo._internal.unicode.Unicode_toLower.toLower((@:checkr _r ?? throw "null pointer dereference")._runtext[(_cmpos : stdgo.GoInt)]) != (stdgo._internal.unicode.Unicode_toLower.toLower((@:checkr _r ?? throw "null pointer dereference")._runtext[(_pos : stdgo.GoInt)]))) {
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
    static public function _runematch( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _str:stdgo.Slice<stdgo.GoInt32>):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
                if (_str[(_c : stdgo.GoInt)] != (stdgo._internal.unicode.Unicode_toLower.toLower((@:checkr _r ?? throw "null pointer dereference")._runtext[(_pos : stdgo.GoInt)]))) {
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
    static public function _forwardcharnext( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt32 {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _ch:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos--;
            _ch = (@:checkr _r ?? throw "null pointer dereference")._runtext[((@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt)];
        } else {
            _ch = (@:checkr _r ?? throw "null pointer dereference")._runtext[((@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._runtextpos++;
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._caseInsensitive) {
            return stdgo._internal.unicode.Unicode_toLower.toLower(_ch);
        };
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _forwardchars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            return (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
        };
        return ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _bump( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._rightToLeft) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _rightchars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return ((@:checkr _r ?? throw "null pointer dereference")._runtextend - (@:checkr _r ?? throw "null pointer dereference")._runtextpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _leftchars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
    }
    @:keep
    @:tdfield
    static public function _operand( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[(((@:checkr _r ?? throw "null pointer dereference")._codepos + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPeekN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runstack[(((@:checkr _r ?? throw "null pointer dereference")._runstackpos - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPeek( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _stackPopN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _framesize:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos = ((@:checkr _r ?? throw "null pointer dereference")._runstackpos + (_framesize) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _stackPop( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos++;
    }
    @:keep
    @:tdfield
    static public function _stackPush2( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos : stdgo.GoInt)] = i2;
    }
    @:keep
    @:tdfield
    static public function _stackPush( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runstackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runstack[((@:checkr _r ?? throw "null pointer dereference")._runstackpos : stdgo.GoInt)] = i1;
    }
    @:keep
    @:tdfield
    static public function _trackPeekN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _i:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtrack[(((@:checkr _r ?? throw "null pointer dereference")._runtrackpos - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _trackPeek( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _trackPopN( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _framesize:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = ((@:checkr _r ?? throw "null pointer dereference")._runtrackpos + (_framesize) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _trackPop( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos++;
    }
    @:keep
    @:tdfield
    static public function _setOperator( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _op:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._caseInsensitive = ((0 : stdgo.GoInt) != ((_op & (512 : stdgo.GoInt) : stdgo.GoInt)));
        (@:checkr _r ?? throw "null pointer dereference")._rightToLeft = ((0 : stdgo.GoInt) != ((_op & (64 : stdgo.GoInt) : stdgo.GoInt)));
        (@:checkr _r ?? throw "null pointer dereference")._operator = ((_op & (-577 : stdgo.GoInt) : stdgo.GoInt) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp);
    }
    @:keep
    @:tdfield
    static public function _backtrack( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
    static public function _trackPushNeg2( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i2;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = -(@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPushNeg1( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = -(@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush3( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt, i3:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
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
    static public function _trackPush2( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt, i2:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i2;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush1( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, i1:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = i1;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackPush( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runtrack[((@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._codepos;
    }
    @:keep
    @:tdfield
    static public function _trackpos( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference")._runtrack.length) - (@:checkr _r ?? throw "null pointer dereference")._runtrackpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textPos( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtextpos;
    }
    @:keep
    @:tdfield
    static public function _textstart( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (@:checkr _r ?? throw "null pointer dereference")._runtextstart;
    }
    @:keep
    @:tdfield
    static public function _trackto( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtrackpos = (((@:checkr _r ?? throw "null pointer dereference")._runtrack.length) - _newpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _textto( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._runtextpos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _goTo( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _newpos:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((_newpos <= (@:checkr _r ?? throw "null pointer dereference")._codepos : Bool)) {
            @:check2r _r._ensureStorage();
        };
        @:check2r _r._setOperator((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[(_newpos : stdgo.GoInt)]);
        (@:checkr _r ?? throw "null pointer dereference")._codepos = _newpos;
    }
    @:keep
    @:tdfield
    static public function _advance( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _i:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._codepos = ((@:checkr _r ?? throw "null pointer dereference")._codepos + ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        @:check2r _r._setOperator((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").codes[((@:checkr _r ?? throw "null pointer dereference")._codepos : stdgo.GoInt)]);
    }
    @:keep
    @:tdfield
    static public function _crawlpos( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        return (((@:checkr _r ?? throw "null pointer dereference")._runcrawl.length) - (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _popcrawl( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _val = ((@:checkr _r ?? throw "null pointer dereference")._runcrawl[((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos++;
        return _val;
    }
    @:keep
    @:tdfield
    static public function _crawl( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _i:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos == ((0 : stdgo.GoInt))) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__doubleIntSlice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._runcrawl) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos));
        };
        (@:checkr _r ?? throw "null pointer dereference")._runcrawlpos--;
        (@:checkr _r ?? throw "null pointer dereference")._runcrawl[((@:checkr _r ?? throw "null pointer dereference")._runcrawlpos : stdgo.GoInt)] = _i;
    }
    @:keep
    @:tdfield
    static public function _ensureStorage( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):Void {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._runstackpos < ((@:checkr _r ?? throw "null pointer dereference")._runtrackcount * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__doubleIntSlice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._runstack) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._runstackpos));
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._runtrackpos < ((@:checkr _r ?? throw "null pointer dereference")._runtrackcount * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__doubleIntSlice._doubleIntSlice((stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._runtrack) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference")._runtrackpos));
        };
    }
    @:keep
    @:tdfield
    static public function _execute( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>):stdgo.Error {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        var _set_3782644:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>);
        var _ch_3781957:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _c_3781131:stdgo.GoInt = (0 : stdgo.GoInt);
        var _rchars_3779703:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_3776453:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3783006:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3783577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3783214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3781875:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3781617:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3781442:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3784186:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3783387:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3783192:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3782680:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3782330:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3774028:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3784350:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3782984:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3781376:stdgo.GoInt = (0 : stdgo.GoInt);
        var _oldMarkPos_3772852:stdgo.GoInt = (0 : stdgo.GoInt);
        var _set_3781684:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>);
        var _textpos_3777050:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3777025:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3776428:stdgo.GoInt = (0 : stdgo.GoInt);
        var _count_3774974:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3783799:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3782302:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _ch_3781198:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _capnum_3780837:stdgo.GoInt = (0 : stdgo.GoInt);
        var _mark_3774949:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3784473:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3783909:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3781985:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3771804:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pos_3784076:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3782562:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3782220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _matched_3775002:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3770189:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    @:check2r _r._goTo((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770135i32)) {
                    if (true) {
                        _gotoNext = 3770139i32;
                    } else {
                        _gotoNext = 3784722i32;
                    };
                } else if (__value__ == (3770139i32)) {
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._re.debug()) {
                        _gotoNext = 3770160i32;
                    } else {
                        _gotoNext = 3770186i32;
                    };
                } else if (__value__ == (3770160i32)) {
                    @:check2r _r._dumpState();
                    _gotoNext = 3770186i32;
                } else if (__value__ == (3770186i32)) {
                    {
                        _err_3770189 = @:check2r _r._checkTimeout();
                        if (_err_3770189 != null) {
                            _gotoNext = 3770225i32;
                        } else {
                            _gotoNext = 3770248i32;
                        };
                    };
                } else if (__value__ == (3770225i32)) {
                    return _err_3770189;
                    _gotoNext = 3770248i32;
                } else if (__value__ == (3770248i32)) {
                    _gotoNext = 3770248i32;
                    {
                        final __value__ = (@:checkr _r ?? throw "null pointer dereference")._operator;
                        if (__value__ == ((40 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770270i32;
                        } else if (__value__ == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770305i32;
                        } else if (__value__ == ((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770338i32;
                        } else if (__value__ == ((37 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770395i32;
                        } else if (__value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770506i32;
                        } else if (__value__ == ((151 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770590i32;
                        } else if (__value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770710i32;
                        } else if (__value__ == ((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770807i32;
                        } else if (__value__ == ((159 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) || __value__ == ((158 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770896i32;
                        } else if (__value__ == ((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3770990i32;
                        } else if (__value__ == ((161 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3771116i32;
                        } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3771209i32;
                        } else if (__value__ == ((160 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3771573i32;
                        } else if (__value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3771760i32;
                        } else if (__value__ == ((152 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3772243i32;
                        } else if (__value__ == ((280 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3772480i32;
                        } else if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3772630i32;
                        } else if (__value__ == ((153 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3773617i32;
                        } else if (__value__ == ((281 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3774263i32;
                        } else if (__value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3774501i32;
                        } else if (__value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3774614i32;
                        } else if (__value__ == ((155 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3774719i32;
                        } else if (__value__ == ((154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3774785i32;
                        } else if (__value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3774852i32;
                        } else if (__value__ == ((156 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3775480i32;
                        } else if (__value__ == ((284 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3776059i32;
                        } else if (__value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3776327i32;
                        } else if (__value__ == ((157 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3776890i32;
                        } else if (__value__ == ((285 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3777643i32;
                        } else if (__value__ == ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3777984i32;
                        } else if (__value__ == ((162 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778097i32;
                        } else if (__value__ == ((35 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778162i32;
                        } else if (__value__ == ((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778373i32;
                        } else if (__value__ == ((164 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778570i32;
                        } else if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778738i32;
                        } else if (__value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778862i32;
                        } else if (__value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3778985i32;
                        } else if (__value__ == ((17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3779105i32;
                        } else if (__value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3779227i32;
                        } else if (__value__ == ((42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3779355i32;
                        } else if (__value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3779485i32;
                        } else if (__value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3779580i32;
                        } else if (__value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3779682i32;
                        } else if (__value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3780178i32;
                        } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3780268i32;
                        } else if (__value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3780406i32;
                        } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3780547i32;
                        } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3780699i32;
                        } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3780816i32;
                        } else if (__value__ == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3781107i32;
                        } else if (__value__ == ((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3781349i32;
                        } else if (__value__ == ((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3781593i32;
                        } else if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3781850i32;
                        } else if (__value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3782192i32;
                        } else if (__value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3782537i32;
                        } else if (__value__ == ((131 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) || __value__ == ((132 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3782894i32;
                        } else if (__value__ == ((133 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3783135i32;
                        } else if (__value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3783343i32;
                        } else if (__value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3783552i32;
                        } else if (__value__ == ((134 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3783742i32;
                        } else if (__value__ == ((135 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3784016i32;
                        } else if (__value__ == ((136 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
                            _gotoNext = 3784293i32;
                        } else {
                            _gotoNext = 3784580i32;
                        };
                    };
                } else if (__value__ == (3770270i32)) {
                    return (null : stdgo.Error);
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3770305i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3770338i32)) {
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770395i32)) {
                    if (!@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((0 : stdgo.GoInt)))) {
                        _gotoNext = 3770458i32;
                    } else {
                        _gotoNext = 3770478i32;
                    };
                } else if (__value__ == (3770458i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3770478i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770506i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._textPos());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770590i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeek());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770710i32)) {
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770807i32)) {
                    @:check2r _r._stackPush((-1 : stdgo.GoInt));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3770896i32)) {
                    @:check2r _r._stackPop();
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3770990i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3771116i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3771209i32)) {
                    if (((@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && !@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(@:check2r _r._operand((1 : stdgo.GoInt))) : Bool)) {
                        _gotoNext = 3771298i32;
                    } else {
                        _gotoNext = 3771318i32;
                    };
                } else if (__value__ == (3771298i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3771318i32)) {
                    @:check2r _r._stackPop();
                    if (@:check2r _r._operand((1 : stdgo.GoInt)) != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3771356i32;
                    } else {
                        _gotoNext = 3771446i32;
                    };
                } else if (__value__ == (3771356i32)) {
                    @:check2r _r._transferCapture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._operand((1 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    _gotoNext = 3771512i32;
                } else if (__value__ == (3771446i32)) {
                    _gotoNext = 3771446i32;
                    @:check2r _r._capture(@:check2r _r._operand((0 : stdgo.GoInt)), @:check2r _r._stackPeek(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 3771512i32;
                } else if (__value__ == (3771512i32)) {
                    @:check2r _r._trackPush1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3771573i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    @:check2r _r._uncapture();
                    if (((@:check2r _r._operand((0 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) && (@:check2r _r._operand((1 : stdgo.GoInt)) != (-1 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3771722i32;
                    } else {
                        _gotoNext = 3771751i32;
                    };
                } else if (__value__ == (3771722i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3771751i32;
                } else if (__value__ == (3771751i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3771760i32)) {
                    @:check2r _r._stackPop();
                    _matched_3771804 = (@:check2r _r._textPos() - @:check2r _r._stackPeek() : stdgo.GoInt);
                    if (_matched_3771804 != ((0 : stdgo.GoInt))) {
                        _gotoNext = 3771863i32;
                    } else {
                        _gotoNext = 3772091i32;
                    };
                } else if (__value__ == (3771863i32)) {
                    @:check2r _r._trackPush2(@:check2r _r._stackPeek(), @:check2r _r._textPos());
                    @:check2r _r._stackPush(@:check2r _r._textPos());
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 3772231i32;
                } else if (__value__ == (3772091i32)) {
                    _gotoNext = 3772091i32;
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3772231i32;
                } else if (__value__ == (3772231i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3772243i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPop();
                    @:check2r _r._textto(@:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3772480i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3772630i32)) {
                    {
                        _gotoNext = 3772661i32;
                    };
                } else if (__value__ == (3772661i32)) {
                    @:check2r _r._stackPop();
                    _oldMarkPos_3772852 = @:check2r _r._stackPeek();
                    if (@:check2r _r._textPos() != (_oldMarkPos_3772852)) {
                        _gotoNext = 3772914i32;
                    } else {
                        _gotoNext = 3773154i32;
                    };
                } else if (__value__ == (3772914i32)) {
                    if (_oldMarkPos_3772852 != ((-1 : stdgo.GoInt))) {
                        _gotoNext = 3773005i32;
                    } else {
                        _gotoNext = 3773089i32;
                    };
                } else if (__value__ == (3773005i32)) {
                    @:check2r _r._trackPush2(_oldMarkPos_3772852, @:check2r _r._textPos());
                    _gotoNext = 3773583i32;
                } else if (__value__ == (3773089i32)) {
                    _gotoNext = 3773089i32;
                    @:check2r _r._trackPush2(@:check2r _r._textPos(), @:check2r _r._textPos());
                    var __blank__ = 0i32;
                    _gotoNext = 3773583i32;
                } else if (__value__ == (3773154i32)) {
                    _gotoNext = 3773154i32;
                    @:check2r _r._stackPush(_oldMarkPos_3772852);
                    @:check2r _r._trackPushNeg1(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 3773583i32;
                } else if (__value__ == (3773583i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3773617i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3774028 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(@:check2r _r._trackPeek());
                    @:check2r _r._stackPush(_pos_3774028);
                    @:check2r _r._textto(_pos_3774028);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3774263i32)) {
                    @:check2r _r._stackPop();
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPush(@:check2r _r._trackPeek());
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3774501i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3774614i32)) {
                    @:check2r _r._stackPush2((-1 : stdgo.GoInt), @:check2r _r._operand((0 : stdgo.GoInt)));
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3774719i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3774785i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3774852i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_3774949 = @:check2r _r._stackPeek();
                    _count_3774974 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    _matched_3775002 = (@:check2r _r._textPos() - _mark_3774949 : stdgo.GoInt);
                    if (((_count_3774974 >= @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) || (((_matched_3775002 == (0 : stdgo.GoInt)) && (_count_3774974 >= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 3775093i32;
                    } else {
                        _gotoNext = 3775251i32;
                    };
                } else if (__value__ == (3775093i32)) {
                    @:check2r _r._trackPushNeg2(_mark_3774949, _count_3774974);
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    _gotoNext = 3775468i32;
                } else if (__value__ == (3775251i32)) {
                    _gotoNext = 3775251i32;
                    @:check2r _r._trackPush1(_mark_3774949);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_3774974 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3775468i32;
                } else if (__value__ == (3775468i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3775480i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    if ((@:check2r _r._stackPeekN((1 : stdgo.GoInt)) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3775699i32;
                    } else {
                        _gotoNext = 3775970i32;
                    };
                } else if (__value__ == (3775699i32)) {
                    @:check2r _r._textto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPushNeg2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3775970i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3776059i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3776327i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _mark_3776428 = @:check2r _r._stackPeek();
                    _count_3776453 = @:check2r _r._stackPeekN((1 : stdgo.GoInt));
                    if ((_count_3776453 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3776495i32;
                    } else {
                        _gotoNext = 3776708i32;
                    };
                } else if (__value__ == (3776495i32)) {
                    @:check2r _r._trackPushNeg1(_mark_3776428);
                    @:check2r _r._stackPush2(@:check2r _r._textPos(), (_count_3776453 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    _gotoNext = 3776878i32;
                } else if (__value__ == (3776708i32)) {
                    _gotoNext = 3776708i32;
                    @:check2r _r._trackPush3(_mark_3776428, _count_3776453, @:check2r _r._textPos());
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3776878i32;
                } else if (__value__ == (3776878i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3776890i32)) {
                    @:check2r _r._trackPopN((3 : stdgo.GoInt));
                    _mark_3777025 = @:check2r _r._trackPeek();
                    _textpos_3777050 = @:check2r _r._trackPeekN((2 : stdgo.GoInt));
                    if (((@:check2r _r._trackPeekN((1 : stdgo.GoInt)) < @:check2r _r._operand((1 : stdgo.GoInt)) : Bool) && (_textpos_3777050 != _mark_3777025) : Bool)) {
                        _gotoNext = 3777134i32;
                    } else {
                        _gotoNext = 3777455i32;
                    };
                } else if (__value__ == (3777134i32)) {
                    @:check2r _r._textto(_textpos_3777050);
                    @:check2r _r._stackPush2(_textpos_3777050, (@:check2r _r._trackPeekN((1 : stdgo.GoInt)) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    @:check2r _r._trackPushNeg1(_mark_3777025);
                    @:check2r _r._goTo(@:check2r _r._operand((0 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3777455i32)) {
                    _gotoNext = 3777455i32;
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), @:check2r _r._trackPeekN((1 : stdgo.GoInt)));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3777643i32)) {
                    @:check2r _r._trackPop();
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._stackPush2(@:check2r _r._trackPeek(), (@:check2r _r._stackPeekN((1 : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3777984i32)) {
                    @:check2r _r._stackPush2(@:check2r _r._trackpos(), @:check2r _r._crawlpos());
                    @:check2r _r._trackPush();
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3778097i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3778162i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    var __blank__ = 0i32;
                    _gotoNext = 3778299i32;
                } else if (__value__ == (3778299i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._stackPeekN((1 : stdgo.GoInt)))) {
                        _gotoNext = 3778335i32;
                    } else {
                        _gotoNext = 3778364i32;
                    };
                } else if (__value__ == (3778335i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3778299i32;
                } else if (__value__ == (3778364i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3778373i32)) {
                    @:check2r _r._stackPopN((2 : stdgo.GoInt));
                    @:check2r _r._trackto(@:check2r _r._stackPeek());
                    @:check2r _r._trackPush1(@:check2r _r._stackPeekN((1 : stdgo.GoInt)));
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3778570i32)) {
                    @:check2r _r._trackPop();
                    var __blank__ = 0i32;
                    _gotoNext = 3778666i32;
                } else if (__value__ == (3778666i32)) {
                    if (@:check2r _r._crawlpos() != (@:check2r _r._trackPeek())) {
                        _gotoNext = 3778700i32;
                    } else {
                        _gotoNext = 3778729i32;
                    };
                } else if (__value__ == (3778700i32)) {
                    @:check2r _r._uncapture();
                    _gotoNext = 3778666i32;
                } else if (__value__ == (3778729i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3778738i32)) {
                    if (((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt((@:check2r _r._textPos() - (1 : stdgo.GoInt) : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3778814i32;
                    } else {
                        _gotoNext = 3778834i32;
                    };
                } else if (__value__ == (3778814i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3778834i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3778862i32)) {
                    if (((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3778937i32;
                    } else {
                        _gotoNext = 3778957i32;
                    };
                } else if (__value__ == (3778937i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3778957i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3778985i32)) {
                    if (!@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3779057i32;
                    } else {
                        _gotoNext = 3779077i32;
                    };
                } else if (__value__ == (3779057i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779077i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3779105i32)) {
                    if (@:check2r _r._isBoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3779179i32;
                    } else {
                        _gotoNext = 3779199i32;
                    };
                } else if (__value__ == (3779179i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779199i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3779227i32)) {
                    if (!@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3779307i32;
                    } else {
                        _gotoNext = 3779327i32;
                    };
                } else if (__value__ == (3779307i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779327i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3779355i32)) {
                    if (@:check2r _r._isECMABoundary(@:check2r _r._textPos(), (0 : stdgo.GoInt), (@:checkr _r ?? throw "null pointer dereference")._runtextend)) {
                        _gotoNext = 3779437i32;
                    } else {
                        _gotoNext = 3779457i32;
                    };
                } else if (__value__ == (3779437i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779457i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3779485i32)) {
                    if ((@:check2r _r._leftchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3779532i32;
                    } else {
                        _gotoNext = 3779552i32;
                    };
                } else if (__value__ == (3779532i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779552i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3779580i32)) {
                    if (@:check2r _r._textPos() != (@:check2r _r._textstart())) {
                        _gotoNext = 3779634i32;
                    } else {
                        _gotoNext = 3779654i32;
                    };
                } else if (__value__ == (3779634i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779654i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3779682i32)) {
                    _rchars_3779703 = @:check2r _r._rightchars();
                    if ((_rchars_3779703 > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3779745i32;
                    } else {
                        _gotoNext = 3779939i32;
                    };
                } else if (__value__ == (3779745i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3779939i32)) {
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (768 : _internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions))) {
                        _gotoNext = 3779983i32;
                    } else if (((_rchars_3779703 == (1 : stdgo.GoInt)) && (@:check2r _r._charAt(@:check2r _r._textPos()) != (10 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3780107i32;
                    } else {
                        _gotoNext = 3780150i32;
                    };
                } else if (__value__ == (3779983i32)) {
                    if ((_rchars_3779703 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3780030i32;
                    } else {
                        _gotoNext = 3780150i32;
                    };
                } else if (__value__ == (3780030i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780107i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780150i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3780178i32)) {
                    if ((@:check2r _r._rightchars() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3780220i32;
                    } else {
                        _gotoNext = 3780240i32;
                    };
                } else if (__value__ == (3780220i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780240i32)) {
                    @:check2r _r._advance((0 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3780268i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() != (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3780357i32;
                    } else {
                        _gotoNext = 3780378i32;
                    };
                } else if (__value__ == (3780357i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780378i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3780406i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || (@:check2r _r._forwardcharnext() == (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3780498i32;
                    } else {
                        _gotoNext = 3780519i32;
                    };
                } else if (__value__ == (3780498i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780519i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3780547i32)) {
                    if (((@:check2r _r._forwardchars() < (1 : stdgo.GoInt) : Bool) || !(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext()) : Bool)) {
                        _gotoNext = 3780650i32;
                    } else {
                        _gotoNext = 3780671i32;
                    };
                } else if (__value__ == (3780650i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780671i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3780699i32)) {
                    if (!@:check2r _r._runematch((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").strings[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)])) {
                        _gotoNext = 3780767i32;
                    } else {
                        _gotoNext = 3780788i32;
                    };
                } else if (__value__ == (3780767i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3780788i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3780816i32)) {
                    _capnum_3780837 = @:check2r _r._operand((0 : stdgo.GoInt));
                    if (@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._isMatched(_capnum_3780837)) {
                        _gotoNext = 3780896i32;
                    } else {
                        _gotoNext = 3781009i32;
                    };
                } else if (__value__ == (3780896i32)) {
                    if (!@:check2r _r._refmatch(@:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchIndex(_capnum_3780837), @:check2r (@:checkr _r ?? throw "null pointer dereference")._runmatch._matchLength(_capnum_3780837))) {
                        _gotoNext = 3780980i32;
                    } else {
                        _gotoNext = 3781079i32;
                    };
                } else if (__value__ == (3780980i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781009i32)) {
                    _gotoNext = 3781009i32;
                    if ((((@:checkr (@:checkr _r ?? throw "null pointer dereference")._re ?? throw "null pointer dereference")._options & (256 : _internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions)) == ((0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions))) {
                        _gotoNext = 3781051i32;
                    } else {
                        _gotoNext = 3781079i32;
                    };
                } else if (__value__ == (3781051i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781079i32)) {
                    @:check2r _r._advance((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3781107i32)) {
                    _c_3781131 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3781131 : Bool)) {
                        _gotoNext = 3781177i32;
                    } else {
                        _gotoNext = 3781198i32;
                    };
                } else if (__value__ == (3781177i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781198i32)) {
                    _ch_3781198 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3781227i32;
                } else if (__value__ == (3781227i32)) {
                    if ((_c_3781131 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3781237i32;
                    } else {
                        _gotoNext = 3781321i32;
                    };
                } else if (__value__ == (3781237i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_3781198)) {
                        _gotoNext = 3781272i32;
                    } else {
                        _gotoNext = 3781308i32;
                    };
                } else if (__value__ == (3781272i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781308i32)) {
                    _c_3781131--;
                    _gotoNext = 3781227i32;
                } else if (__value__ == (3781321i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3781349i32)) {
                    _c_3781376 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3781376 : Bool)) {
                        _gotoNext = 3781422i32;
                    } else {
                        _gotoNext = 3781442i32;
                    };
                } else if (__value__ == (3781422i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781442i32)) {
                    _ch_3781442 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3781471i32;
                } else if (__value__ == (3781471i32)) {
                    if ((_c_3781376 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3781481i32;
                    } else {
                        _gotoNext = 3781565i32;
                    };
                } else if (__value__ == (3781481i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_3781442)) {
                        _gotoNext = 3781516i32;
                    } else {
                        _gotoNext = 3781552i32;
                    };
                } else if (__value__ == (3781516i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781552i32)) {
                    _c_3781376--;
                    _gotoNext = 3781471i32;
                } else if (__value__ == (3781565i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3781593i32)) {
                    _c_3781617 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((@:check2r _r._forwardchars() < _c_3781617 : Bool)) {
                        _gotoNext = 3781663i32;
                    } else {
                        _gotoNext = 3781684i32;
                    };
                } else if (__value__ == (3781663i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781684i32)) {
                    _set_3781684 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 3781721i32;
                } else if (__value__ == (3781721i32)) {
                    if ((_c_3781617 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3781731i32;
                    } else {
                        _gotoNext = 3781822i32;
                    };
                } else if (__value__ == (3781731i32)) {
                    if (!(@:checkr _set_3781684 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3781773i32;
                    } else {
                        _gotoNext = 3781809i32;
                    };
                } else if (__value__ == (3781773i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3781809i32)) {
                    _c_3781617--;
                    _gotoNext = 3781721i32;
                } else if (__value__ == (3781822i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3781850i32)) {
                    _c_3781875 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3781875 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3781921i32;
                    } else {
                        _gotoNext = 3781957i32;
                    };
                } else if (__value__ == (3781921i32)) {
                    _c_3781875 = @:check2r _r._forwardchars();
                    _gotoNext = 3781957i32;
                } else if (__value__ == (3781957i32)) {
                    _ch_3781957 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_3781985 = _c_3781875;
                    var __blank__ = 0i32;
                    _gotoNext = 3781996i32;
                } else if (__value__ == (3781996i32)) {
                    if ((_i_3781985 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3782013i32;
                    } else {
                        _gotoNext = 3782098i32;
                    };
                } else if (__value__ == (3782009i32)) {
                    _i_3781985--;
                    _gotoNext = 3781996i32;
                } else if (__value__ == (3782013i32)) {
                    if (@:check2r _r._forwardcharnext() != (_ch_3781957)) {
                        _gotoNext = 3782048i32;
                    } else {
                        _gotoNext = 3782009i32;
                    };
                } else if (__value__ == (3782048i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3782098i32;
                } else if (__value__ == (3782098i32)) {
                    if ((_c_3781875 > _i_3781985 : Bool)) {
                        _gotoNext = 3782107i32;
                    } else {
                        _gotoNext = 3782164i32;
                    };
                } else if (__value__ == (3782107i32)) {
                    @:check2r _r._trackPush2(((_c_3781875 - _i_3781985 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3782164i32;
                } else if (__value__ == (3782164i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3782192i32)) {
                    _c_3782220 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3782220 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3782266i32;
                    } else {
                        _gotoNext = 3782302i32;
                    };
                } else if (__value__ == (3782266i32)) {
                    _c_3782220 = @:check2r _r._forwardchars();
                    _gotoNext = 3782302i32;
                } else if (__value__ == (3782302i32)) {
                    _ch_3782302 = (@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32);
                    _i_3782330 = _c_3782220;
                    var __blank__ = 0i32;
                    _gotoNext = 3782341i32;
                } else if (__value__ == (3782341i32)) {
                    if ((_i_3782330 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3782358i32;
                    } else {
                        _gotoNext = 3782443i32;
                    };
                } else if (__value__ == (3782354i32)) {
                    _i_3782330--;
                    _gotoNext = 3782341i32;
                } else if (__value__ == (3782358i32)) {
                    if (@:check2r _r._forwardcharnext() == (_ch_3782302)) {
                        _gotoNext = 3782393i32;
                    } else {
                        _gotoNext = 3782354i32;
                    };
                } else if (__value__ == (3782393i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3782443i32;
                } else if (__value__ == (3782443i32)) {
                    if ((_c_3782220 > _i_3782330 : Bool)) {
                        _gotoNext = 3782452i32;
                    } else {
                        _gotoNext = 3782509i32;
                    };
                } else if (__value__ == (3782452i32)) {
                    @:check2r _r._trackPush2(((_c_3782220 - _i_3782330 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3782509i32;
                } else if (__value__ == (3782509i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3782537i32)) {
                    _c_3782562 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3782562 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3782608i32;
                    } else {
                        _gotoNext = 3782644i32;
                    };
                } else if (__value__ == (3782608i32)) {
                    _c_3782562 = @:check2r _r._forwardchars();
                    _gotoNext = 3782644i32;
                } else if (__value__ == (3782644i32)) {
                    _set_3782644 = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)];
                    _i_3782680 = _c_3782562;
                    var __blank__ = 0i32;
                    _gotoNext = 3782691i32;
                } else if (__value__ == (3782691i32)) {
                    if ((_i_3782680 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3782708i32;
                    } else {
                        _gotoNext = 3782800i32;
                    };
                } else if (__value__ == (3782704i32)) {
                    _i_3782680--;
                    _gotoNext = 3782691i32;
                } else if (__value__ == (3782708i32)) {
                    if (!(@:checkr _set_3782644 ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3782750i32;
                    } else {
                        _gotoNext = 3782704i32;
                    };
                } else if (__value__ == (3782750i32)) {
                    @:check2r _r._backwardnext();
                    _gotoNext = 3782800i32;
                } else if (__value__ == (3782800i32)) {
                    if ((_c_3782562 > _i_3782680 : Bool)) {
                        _gotoNext = 3782809i32;
                    } else {
                        _gotoNext = 3782866i32;
                    };
                } else if (__value__ == (3782809i32)) {
                    @:check2r _r._trackPush2(((_c_3782562 - _i_3782680 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt), (@:check2r _r._textPos() - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3782866i32;
                } else if (__value__ == (3782866i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3782894i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_3782984 = @:check2r _r._trackPeek();
                    _pos_3783006 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3783006);
                    if ((_i_3782984 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783060i32;
                    } else {
                        _gotoNext = 3783107i32;
                    };
                } else if (__value__ == (3783060i32)) {
                    @:check2r _r._trackPush2((_i_3782984 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3783006 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3783107i32;
                } else if (__value__ == (3783107i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3783135i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _i_3783192 = @:check2r _r._trackPeek();
                    _pos_3783214 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3783214);
                    if ((_i_3783192 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783268i32;
                    } else {
                        _gotoNext = 3783315i32;
                    };
                } else if (__value__ == (3783268i32)) {
                    @:check2r _r._trackPush2((_i_3783192 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3783214 - @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3783315i32;
                } else if (__value__ == (3783315i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3783343i32)) {
                    _c_3783387 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3783387 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3783433i32;
                    } else {
                        _gotoNext = 3783469i32;
                    };
                } else if (__value__ == (3783433i32)) {
                    _c_3783387 = @:check2r _r._forwardchars();
                    _gotoNext = 3783469i32;
                } else if (__value__ == (3783469i32)) {
                    if ((_c_3783387 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783478i32;
                    } else {
                        _gotoNext = 3783524i32;
                    };
                } else if (__value__ == (3783478i32)) {
                    @:check2r _r._trackPush2((_c_3783387 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 3783524i32;
                } else if (__value__ == (3783524i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3783552i32)) {
                    _c_3783577 = @:check2r _r._operand((1 : stdgo.GoInt));
                    if ((_c_3783577 > @:check2r _r._forwardchars() : Bool)) {
                        _gotoNext = 3783623i32;
                    } else {
                        _gotoNext = 3783659i32;
                    };
                } else if (__value__ == (3783623i32)) {
                    _c_3783577 = @:check2r _r._forwardchars();
                    _gotoNext = 3783659i32;
                } else if (__value__ == (3783659i32)) {
                    if ((_c_3783577 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783668i32;
                    } else {
                        _gotoNext = 3783714i32;
                    };
                } else if (__value__ == (3783668i32)) {
                    @:check2r _r._trackPush2((_c_3783577 - (1 : stdgo.GoInt) : stdgo.GoInt), @:check2r _r._textPos());
                    _gotoNext = 3783714i32;
                } else if (__value__ == (3783714i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3783742i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3783799 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3783799);
                    if (@:check2r _r._forwardcharnext() != ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 3783888i32;
                    } else {
                        _gotoNext = 3783909i32;
                    };
                } else if (__value__ == (3783888i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3783909i32)) {
                    _i_3783909 = @:check2r _r._trackPeek();
                    if ((_i_3783909 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3783941i32;
                    } else {
                        _gotoNext = 3783988i32;
                    };
                } else if (__value__ == (3783941i32)) {
                    @:check2r _r._trackPush2((_i_3783909 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3783799 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3783988i32;
                } else if (__value__ == (3783988i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3784016i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3784076 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3784076);
                    if (@:check2r _r._forwardcharnext() == ((@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt32))) {
                        _gotoNext = 3784165i32;
                    } else {
                        _gotoNext = 3784186i32;
                    };
                } else if (__value__ == (3784165i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3784186i32)) {
                    _i_3784186 = @:check2r _r._trackPeek();
                    if ((_i_3784186 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3784218i32;
                    } else {
                        _gotoNext = 3784265i32;
                    };
                } else if (__value__ == (3784218i32)) {
                    @:check2r _r._trackPush2((_i_3784186 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3784076 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3784265i32;
                } else if (__value__ == (3784265i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3784293i32)) {
                    @:check2r _r._trackPopN((2 : stdgo.GoInt));
                    _pos_3784350 = @:check2r _r._trackPeekN((1 : stdgo.GoInt));
                    @:check2r _r._textto(_pos_3784350);
                    if (!(@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(@:check2r _r._operand((0 : stdgo.GoInt)) : stdgo.GoInt)] ?? throw "null pointer dereference").charIn(@:check2r _r._forwardcharnext())) {
                        _gotoNext = 3784452i32;
                    } else {
                        _gotoNext = 3784473i32;
                    };
                } else if (__value__ == (3784452i32)) {
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3784473i32)) {
                    _i_3784473 = @:check2r _r._trackPeek();
                    if ((_i_3784473 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3784505i32;
                    } else {
                        _gotoNext = 3784552i32;
                    };
                } else if (__value__ == (3784505i32)) {
                    @:check2r _r._trackPush2((_i_3784473 - (1 : stdgo.GoInt) : stdgo.GoInt), (_pos_3784350 + @:check2r _r._bump() : stdgo.GoInt));
                    _gotoNext = 3784552i32;
                } else if (__value__ == (3784552i32)) {
                    @:check2r _r._advance((2 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3784580i32)) {
                    return stdgo._internal.errors.Errors_new_.new_(("unknown state in regex runner" : stdgo.GoString));
                    _gotoNext = 3784649i32;
                } else if (__value__ == (3784649i32)) {
                    _gotoNext = 3784649i32;
                    {};
                    @:check2r _r._backtrack();
                    _gotoNext = 3770135i32;
                } else if (__value__ == (3784722i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _scan( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner>, _rt:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt, _quick:Bool, _timeout:stdgo._internal.time.Time_Duration.Duration):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_Match.Match>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_runner.T_runner> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._timeout = _timeout;
        (@:checkr _r ?? throw "null pointer dereference")._ignoreTimeout = (((9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) == _timeout);
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
