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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.Match_asInterface) class Match_static_extension {
    @:keep
    @:tdfield
    static public function _dump( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r _buf.writeRune((10 : stdgo.GoInt32));
        if ((((@:checkr _m ?? throw "null pointer dereference")._sparseCaps.length) > (0 : stdgo.GoInt) : Bool)) {
            for (_k => _v in (@:checkr _m ?? throw "null pointer dereference")._sparseCaps) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Slot %v -> %v\n" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
            };
        };
        for (_i => _g in @:check2r _m.groups()) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Group %v (%v), %v caps:\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_g.name), stdgo.Go.toInterface((_g.captures.length)));
            for (__0 => _c in _g.captures) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("  (%v, %v) %v\n" : stdgo.GoString), stdgo.Go.toInterface(_c.index), stdgo.Go.toInterface(_c.length_), stdgo.Go.toInterface((@:check2 _c.string() : stdgo.GoString)));
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _groupValueAppendToBuf( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _groupnum:stdgo.GoInt, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _c = ((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_groupnum : stdgo.GoInt)] : stdgo.GoInt);
        if (_c == ((0 : stdgo.GoInt))) {
            return;
        };
        var _matches = (@:checkr _m ?? throw "null pointer dereference")._matches[(_groupnum : stdgo.GoInt)];
        var _index = (_matches[(((_c - (1 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        var _last = (_index + _matches[(((_c * (2 : stdgo.GoInt) : stdgo.GoInt)) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        while ((_index < _last : Bool)) {
            @:check2r _buf.writeRune((@:checkr _m ?? throw "null pointer dereference").group.capture._text[(_index : stdgo.GoInt)]);
            _index++;
        };
    }
    @:keep
    @:tdfield
    static public function _populateOtherGroups( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._otherGroups == null) {
            (@:checkr _m ?? throw "null pointer dereference")._otherGroups = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>((((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>);
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _m ?? throw "null pointer dereference")._otherGroups.length) : Bool)) {
                    (@:checkr _m ?? throw "null pointer dereference")._otherGroups[(_i : stdgo.GoInt)] = _internal.github_dot_com.dlclark.regexp2.Regexp2__newgroup._newGroup(@:check2r (@:checkr _m ?? throw "null pointer dereference")._regex.groupNameFromNumber((_i + (1 : stdgo.GoInt) : stdgo.GoInt)).__copy__(), (@:checkr _m ?? throw "null pointer dereference").group.capture._text, (@:checkr _m ?? throw "null pointer dereference")._matches[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _m ?? throw "null pointer dereference")._matchcount[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]).__copy__();
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function groups( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group> {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        @:check2r _m._populateOtherGroups();
        var _g = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>((((@:checkr _m ?? throw "null pointer dereference")._otherGroups.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((((@:checkr _m ?? throw "null pointer dereference")._otherGroups.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (((@:checkr _m ?? throw "null pointer dereference")._otherGroups.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>);
        _g[(0 : stdgo.GoInt)] = (@:checkr _m ?? throw "null pointer dereference").group?.__copy__();
        (_g.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>).__copyTo__((@:checkr _m ?? throw "null pointer dereference")._otherGroups);
        return _g;
    }
    @:keep
    @:tdfield
    static public function groupByNumber( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _num:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group> {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._sparseCaps != null) {
            {
                var __tmp__ = ((@:checkr _m ?? throw "null pointer dereference")._sparseCaps != null && (@:checkr _m ?? throw "null pointer dereference")._sparseCaps.exists(_num) ? { _0 : (@:checkr _m ?? throw "null pointer dereference")._sparseCaps[_num], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _newNum:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _num = _newNum;
                };
            };
        };
        if (((_num >= ((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) : Bool) || (_num < (0 : stdgo.GoInt) : Bool) : Bool)) {
            return null;
        };
        if (_num == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference").group) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>);
        };
        @:check2r _m._populateOtherGroups();
        return (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._otherGroups[(_num - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group>);
    }
    @:keep
    @:tdfield
    static public function groupByName( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _name:stdgo.GoString):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group> {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _num = (@:check2r (@:checkr _m ?? throw "null pointer dereference")._regex.groupNumberFromName(_name?.__copy__()) : stdgo.GoInt);
        if ((_num < (0 : stdgo.GoInt) : Bool)) {
            return null;
        };
        return @:check2r _m.groupByNumber(_num);
    }
    @:keep
    @:tdfield
    static public function groupCount( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        return ((@:checkr _m ?? throw "null pointer dereference")._matchcount.length);
    }
    @:keep
    @:tdfield
    static public function _removeMatch( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _c:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._matchcount[(_c : stdgo.GoInt)]--;
    }
    @:keep
    @:tdfield
    static public function _balanceMatch( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _c:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        (@:checkr _m ?? throw "null pointer dereference")._balancing = true;
        var _capcount = ((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_c : stdgo.GoInt)] : stdgo.GoInt);
        var _target = ((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        if (((@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool)) {
            _target = ((-3 : stdgo.GoInt) - (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)] : stdgo.GoInt);
        };
        _target = (_target - ((2 : stdgo.GoInt)) : stdgo.GoInt);
        if (((_target >= (0 : stdgo.GoInt) : Bool) && ((@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _m._addMatch(_c, (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][(_target : stdgo.GoInt)], (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][(_target + (1 : stdgo.GoInt) : stdgo.GoInt)]);
        } else {
            @:check2r _m._addMatch(_c, ((-3 : stdgo.GoInt) - _target : stdgo.GoInt), ((-4 : stdgo.GoInt) - _target : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function _addMatch( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _c:stdgo.GoInt, _start:stdgo.GoInt, _l:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)] == null) {
            (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        };
        var _capcount = ((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_c : stdgo.GoInt)] : stdgo.GoInt);
        if ((((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) > ((@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)].length) : Bool)) {
            var _oldmatches = (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)];
            var _newmatches = (new stdgo.Slice<stdgo.GoInt>((_capcount * (8 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            _newmatches.__copyTo__((_oldmatches.__slice__(0, (_capcount * (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)] = _newmatches;
        };
        (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][(_capcount * (2 : stdgo.GoInt) : stdgo.GoInt)] = _start;
        (@:checkr _m ?? throw "null pointer dereference")._matches[(_c : stdgo.GoInt)][((_capcount * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _l;
        (@:checkr _m ?? throw "null pointer dereference")._matchcount[(_c : stdgo.GoInt)] = (_capcount + (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _matchLength( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _cap:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _i = ((@:checkr _m ?? throw "null pointer dereference")._matches[(_cap : stdgo.GoInt)][(((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            return _i;
        };
        return (@:checkr _m ?? throw "null pointer dereference")._matches[(_cap : stdgo.GoInt)][((-3 : stdgo.GoInt) - _i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _matchIndex( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _cap:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _i = ((@:checkr _m ?? throw "null pointer dereference")._matches[(_cap : stdgo.GoInt)][(((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
            return _i;
        };
        return (@:checkr _m ?? throw "null pointer dereference")._matches[(_cap : stdgo.GoInt)][((-3 : stdgo.GoInt) - _i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _isMatched( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _cap:stdgo.GoInt):Bool {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        return (((_cap < ((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) : Bool) && ((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_cap : stdgo.GoInt)] > (0 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _m ?? throw "null pointer dereference")._matches[(_cap : stdgo.GoInt)][(((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (-2 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _tidy( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _textpos:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        var _interval = (@:checkr _m ?? throw "null pointer dereference")._matches[(0 : stdgo.GoInt)];
        (@:checkr _m ?? throw "null pointer dereference").group.capture.index = _interval[(0 : stdgo.GoInt)];
        (@:checkr _m ?? throw "null pointer dereference").group.capture.length_ = _interval[(1 : stdgo.GoInt)];
        (@:checkr _m ?? throw "null pointer dereference")._textpos = _textpos;
        (@:checkr _m ?? throw "null pointer dereference")._capcount = (@:checkr _m ?? throw "null pointer dereference")._matchcount[(0 : stdgo.GoInt)];
        (@:checkr _m ?? throw "null pointer dereference").group.captures = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>(1, 1, ...[(@:checkr _m ?? throw "null pointer dereference").group.capture?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>);
        if ((@:checkr _m ?? throw "null pointer dereference")._balancing) {
            {
                var _cap = (0 : stdgo.GoInt);
                while ((_cap < ((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) : Bool)) {
                    var _limit = ((@:checkr _m ?? throw "null pointer dereference")._matchcount[(_cap : stdgo.GoInt)] * (2 : stdgo.GoInt) : stdgo.GoInt);
var _matcharray = (@:checkr _m ?? throw "null pointer dereference")._matches[(_cap : stdgo.GoInt)];
var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
{
                        _i = (0 : stdgo.GoInt);
                        while ((_i < _limit : Bool)) {
                            if ((_matcharray[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool)) {
                                break;
                            };
                            _i++;
                        };
                    };
{
                        _j = _i;
                        while ((_i < _limit : Bool)) {
                            if ((_matcharray[(_i : stdgo.GoInt)] < (0 : stdgo.GoInt) : Bool)) {
                                _j--;
                            } else {
                                if (_i != (_j)) {
                                    _matcharray[(_j : stdgo.GoInt)] = _matcharray[(_i : stdgo.GoInt)];
                                };
                                _j++;
                            };
                            _i++;
                        };
                    };
(@:checkr _m ?? throw "null pointer dereference")._matchcount[(_cap : stdgo.GoInt)] = (_j / (2 : stdgo.GoInt) : stdgo.GoInt);
                    _cap++;
                };
            };
            (@:checkr _m ?? throw "null pointer dereference")._balancing = false;
        };
    }
    @:keep
    @:tdfield
    static public function _reset( _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _text:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = _m;
        (@:checkr _m ?? throw "null pointer dereference").group.capture._text = _text;
        (@:checkr _m ?? throw "null pointer dereference")._textstart = _textstart;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _m ?? throw "null pointer dereference")._matchcount.length) : Bool)) {
                (@:checkr _m ?? throw "null pointer dereference")._matchcount[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        (@:checkr _m ?? throw "null pointer dereference")._balancing = false;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function runes( __self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match):stdgo.Slice<stdgo.GoInt32> return @:_5 __self__.runes();
}
