package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.CharSet_asInterface) class CharSet_static_extension {
    @:keep
    @:tdfield
    static public function _addLowercaseRange( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _chMin:stdgo.GoInt32, _chMax:stdgo.GoInt32):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _iMid = __2, _iMax = __1, _i = __0;
        var __0:stdgo.GoInt32 = (0 : stdgo.GoInt32), __1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
var _chMaxT = __1, _chMinT = __0;
        var _lc:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_lcMap.T_lcMap = ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_lcMap.T_lcMap);
        {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__lcTable._lcTable.length);
                _i = __tmp__0;
                _iMax = __tmp__1;
            };
            while ((_i < _iMax : Bool)) {
                _iMid = (((_i + _iMax : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
                if ((_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__lcTable._lcTable[(_iMid : stdgo.GoInt)]._chMax < _chMin : Bool)) {
                    _i = (_iMid + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _iMax = _iMid;
                };
            };
        };
        while ((_i < (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__lcTable._lcTable.length) : Bool)) {
            _lc = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__lcTable._lcTable[(_i : stdgo.GoInt)];
if ((_lc._chMin > _chMax : Bool)) {
                return;
            };
_chMinT = _lc._chMin;
if ((_chMinT < _chMin : Bool)) {
                _chMinT = _chMin;
            };
_chMaxT = _lc._chMax;
if ((_chMaxT > _chMax : Bool)) {
                _chMaxT = _chMax;
            };
{
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _lc._op;
                        if (__value__ == ((0 : stdgo.GoInt32))) {
                            _chMinT = (_lc._data : stdgo.GoInt32);
                            _chMaxT = (_lc._data : stdgo.GoInt32);
                            break;
                            break;
                        } else if (__value__ == ((1 : stdgo.GoInt32))) {
                            _chMinT = (_chMinT + (_lc._data) : stdgo.GoInt32);
                            _chMaxT = (_chMaxT + (_lc._data) : stdgo.GoInt32);
                            break;
                            break;
                        } else if (__value__ == ((2 : stdgo.GoInt32))) {
                            _chMinT = (_chMinT | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
                            _chMaxT = (_chMaxT | ((1 : stdgo.GoInt32)) : stdgo.GoInt32);
                            break;
                            break;
                        } else if (__value__ == ((3 : stdgo.GoInt32))) {
                            _chMinT = (_chMinT + ((_chMinT & (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
                            _chMaxT = (_chMaxT + ((_chMaxT & (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
if (((_chMinT < _chMin : Bool) || (_chMaxT > _chMax : Bool) : Bool)) {
                @:check2r _c._addRange(_chMinT, _chMaxT);
            };
            _i++;
        };
    }
    @:keep
    @:tdfield
    static public function _addLowercase( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._anything) {
            return;
        };
        var _toAdd = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _c ?? throw "null pointer dereference")._ranges.length) : Bool)) {
                var _r = ((@:checkr _c ?? throw "null pointer dereference")._ranges[(_i : stdgo.GoInt)] : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange);
if (_r._first == (_r._last)) {
                    var _lower = (stdgo._internal.unicode.Unicode_toLower.toLower(_r._first) : stdgo.GoInt32);
                    (@:checkr _c ?? throw "null pointer dereference")._ranges[(_i : stdgo.GoInt)] = ({ _first : _lower, _last : _lower } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange);
                } else {
                    _toAdd = (_toAdd.__append__(_r.__copy__()));
                };
                _i++;
            };
        };
        for (__0 => _r in _toAdd) {
            @:check2r _c._addLowercaseRange(_r._first, _r._last);
        };
        @:check2r _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _canonicalize( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
        var _last:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        if ((((@:checkr _c ?? throw "null pointer dereference")._ranges.length) > (1 : stdgo.GoInt) : Bool)) {
            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(((@:checkr _c ?? throw "null pointer dereference")._ranges : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRangeSorter.T_singleRangeSorter)));
            var _done = (false : Bool);
            {
                {
                    final __tmp__0 = (1 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    _i = __tmp__0;
                    _j = __tmp__1;
                };
                while (true) {
                    {
                        _last = (@:checkr _c ?? throw "null pointer dereference")._ranges[(_j : stdgo.GoInt)]._last;
                        while (true) {
                            if (((_i == ((@:checkr _c ?? throw "null pointer dereference")._ranges.length)) || (_last == (1114111 : stdgo.GoInt32)) : Bool)) {
                                _done = true;
                                break;
                            };
var currentRange = ((@:checkr _c ?? throw "null pointer dereference")._ranges[(_i : stdgo.GoInt)] : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange);
if ((currentRange._first > (_last + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                                break;
                            };
if ((_last < currentRange._last : Bool)) {
                                _last = currentRange._last;
                            };
                            _i++;
                        };
                    };
(@:checkr _c ?? throw "null pointer dereference")._ranges[(_j : stdgo.GoInt)] = ({ _first : (@:checkr _c ?? throw "null pointer dereference")._ranges[(_j : stdgo.GoInt)]._first, _last : _last } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange);
_j++;
if (_done) {
                        break;
                    };
if ((_j < _i : Bool)) {
                        (@:checkr _c ?? throw "null pointer dereference")._ranges[(_j : stdgo.GoInt)] = (@:checkr _c ?? throw "null pointer dereference")._ranges[(_i : stdgo.GoInt)];
                    };
                    _i++;
                };
            };
            (@:checkr _c ?? throw "null pointer dereference")._ranges = (((@:checkr _c ?? throw "null pointer dereference")._ranges.__slice__(0, _j) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>).__append__(...(((@:checkr _c ?? throw "null pointer dereference")._ranges.__slice__(((@:checkr _c ?? throw "null pointer dereference")._ranges.length)) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>) : Array<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>)));
        };
    }
    @:keep
    @:tdfield
    static public function _addNamedASCII( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _name:stdgo.GoString, _negate:Bool):Bool {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        var _rs:stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange> = (null : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
        {
            final __value__ = _name;
            if (__value__ == (("alnum" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(3, 3, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((48 : stdgo.GoInt32), (57 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((65 : stdgo.GoInt32), (90 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((97 : stdgo.GoInt32), (122 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("alpha" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(2, 2, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((65 : stdgo.GoInt32), (90 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((97 : stdgo.GoInt32), (122 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("ascii" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(1, 1, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((0 : stdgo.GoInt32), (127 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("blank" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(2, 2, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((9 : stdgo.GoInt32), (9 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((32 : stdgo.GoInt32), (32 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("cntrl" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(2, 2, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((0 : stdgo.GoInt32), (31 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((127 : stdgo.GoInt32), (127 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("digit" : stdgo.GoString))) {
                @:check2r _c._addDigit(false, _negate, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
            } else if (__value__ == (("graph" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(1, 1, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((33 : stdgo.GoInt32), (126 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("lower" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(1, 1, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((97 : stdgo.GoInt32), (122 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("print" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(1, 1, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((32 : stdgo.GoInt32), (126 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("punct" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(4, 4, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((33 : stdgo.GoInt32), (47 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((58 : stdgo.GoInt32), (64 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((91 : stdgo.GoInt32), (96 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((123 : stdgo.GoInt32), (126 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("space" : stdgo.GoString))) {
                @:check2r _c._addSpace(true, false, _negate);
            } else if (__value__ == (("upper" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(1, 1, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((65 : stdgo.GoInt32), (90 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else if (__value__ == (("word" : stdgo.GoString))) {
                @:check2r _c._addWord(true, _negate);
            } else if (__value__ == (("xdigit" : stdgo.GoString))) {
                _rs = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(3, 3, ...[(new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((48 : stdgo.GoInt32), (57 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((65 : stdgo.GoInt32), (70 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange), (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange((97 : stdgo.GoInt32), (102 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else {
                return false;
            };
        };
        if (((_rs.length) > (0 : stdgo.GoInt) : Bool)) {
            if (_negate) {
                @:check2r _c._addNegativeRanges(_rs);
            } else {
                @:check2r _c._addRanges(_rs);
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _addRange( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _chMin:stdgo.GoInt32, _chMax:stdgo.GoInt32):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._ranges = ((@:checkr _c ?? throw "null pointer dereference")._ranges.__append__(({ _first : _chMin, _last : _chMax } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)));
        @:check2r _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addSubtraction( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _sub:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._sub = _sub;
    }
    @:keep
    @:tdfield
    static public function _addCategory( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _categoryName:stdgo.GoString, _negate:Bool, _caseInsensitive:Bool, _pattern:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if (!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isValidUnicodeCat._isValidUnicodeCat(_categoryName?.__copy__())) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("Unknown unicode category, script, or property \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_categoryName)));
        };
        if ((_caseInsensitive && (((_categoryName == (("Ll" : stdgo.GoString)) || _categoryName == (("Lu" : stdgo.GoString)) : Bool) || (_categoryName == ("Lt" : stdgo.GoString)) : Bool)) : Bool)) {
            @:check2r _c._addCategories(({ _cat : ("Ll" : stdgo.GoString), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category), ({ _cat : ("Lu" : stdgo.GoString), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category), ({ _cat : ("Lt" : stdgo.GoString), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category));
        };
        @:check2r _c._addCategories(({ _cat : _categoryName?.__copy__(), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category));
    }
    @:keep
    @:tdfield
    static public function _addNegativeRanges( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _ranges:stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._anything) {
            return;
        };
        var _hi:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        for (__0 => _r in _ranges) {
            if ((_hi < _r._first : Bool)) {
                (@:checkr _c ?? throw "null pointer dereference")._ranges = ((@:checkr _c ?? throw "null pointer dereference")._ranges.__append__((new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange(_hi, (_r._first - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)));
            };
            _hi = (_r._last + (1 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        if ((_hi < (1114111 : stdgo.GoInt32) : Bool)) {
            (@:checkr _c ?? throw "null pointer dereference")._ranges = ((@:checkr _c ?? throw "null pointer dereference")._ranges.__append__((new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange(_hi, (1114111 : stdgo.GoInt32)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)));
        };
        @:check2r _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addRanges( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _ranges:stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._anything) {
            return;
        };
        (@:checkr _c ?? throw "null pointer dereference")._ranges = ((@:checkr _c ?? throw "null pointer dereference")._ranges.__append__(...(_ranges : Array<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>)));
        @:check2r _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addCategories( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _cats:haxe.Rest<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>):Void {
        var _cats = new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>(_cats.length, 0, ..._cats);
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._anything) {
            return;
        };
        for (__0 => _ct in _cats) {
            var _found = (false : Bool);
            for (__1 => _ct2 in (@:checkr _c ?? throw "null pointer dereference")._categories) {
                if (_ct._cat == (_ct2._cat)) {
                    if (_ct._negate != (_ct2._negate)) {
                        @:check2r _c._makeAnything();
                        return;
                    };
                    _found = true;
                    break;
                };
            };
            if (!_found) {
                (@:checkr _c ?? throw "null pointer dereference")._categories = ((@:checkr _c ?? throw "null pointer dereference")._categories.__append__(_ct?.__copy__()));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _makeAnything( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        (@:checkr _c ?? throw "null pointer dereference")._anything = true;
        (@:checkr _c ?? throw "null pointer dereference")._categories = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>);
        (@:checkr _c ?? throw "null pointer dereference")._ranges = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anyClass.anyClass()._ranges;
    }
    @:keep
    @:tdfield
    static public function _addSet( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _set:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference")._anything) {
            return;
        };
        if (_set._anything) {
            @:check2r _c._makeAnything();
            return;
        };
        (@:checkr _c ?? throw "null pointer dereference")._ranges = ((@:checkr _c ?? throw "null pointer dereference")._ranges.__append__(...(_set._ranges : Array<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>)));
        @:check2r _c._addCategories(...(_set._categories : Array<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>));
        @:check2r _c._canonicalize();
    }
    @:keep
    @:tdfield
    static public function _addWord( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _ecma:Bool, _negate:Bool):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if (_ecma) {
            if (_negate) {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notECMAWordClass.notECMAWordClass()._ranges);
            } else {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_eCMAWordClass.eCMAWordClass()._ranges);
            };
        } else {
            @:check2r _c._addCategories(({ _cat : ("W" : stdgo.GoString), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category));
        };
    }
    @:keep
    @:tdfield
    static public function _addSpace( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _ecma:Bool, _re2:Bool, _negate:Bool):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if (_ecma) {
            if (_negate) {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notECMASpaceClass.notECMASpaceClass()._ranges);
            } else {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_eCMASpaceClass.eCMASpaceClass()._ranges);
            };
        } else if (_re2) {
            if (_negate) {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notRE2SpaceClass.notRE2SpaceClass()._ranges);
            } else {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_rE2SpaceClass.rE2SpaceClass()._ranges);
            };
        } else {
            @:check2r _c._addCategories(({ _cat : (" " : stdgo.GoString), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category));
        };
    }
    @:keep
    @:tdfield
    static public function _addChar( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _ch:stdgo.GoInt32):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        @:check2r _c._addRange(_ch, _ch);
    }
    @:keep
    @:tdfield
    static public function _addDigit( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, _ecma:Bool, _negate:Bool, _pattern:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = _c;
        if (_ecma) {
            if (_negate) {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notECMADigitClass.notECMADigitClass()._ranges);
            } else {
                @:check2r _c._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_eCMADigitClass.eCMADigitClass()._ranges);
            };
        } else {
            @:check2r _c._addCategories(({ _cat : ("Nd" : stdgo.GoString), _negate : _negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category));
        };
    }
    @:keep
    @:tdfield
    static public function isEmpty( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return (((_c._ranges.length) == ((0 : stdgo.GoInt)) && (_c._categories.length) == ((0 : stdgo.GoInt)) : Bool) && (_c._sub == null || (_c._sub : Dynamic).__nil__) : Bool);
    }
    @:keep
    @:tdfield
    static public function hasSubtraction( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return (_c._sub != null && ((_c._sub : Dynamic).__nil__ == null || !(_c._sub : Dynamic).__nil__));
    }
    @:keep
    @:tdfield
    static public function isNegated( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return _c._negate;
    }
    @:keep
    @:tdfield
    static public function isMergeable( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return (!_c.isNegated() && !_c.hasSubtraction() : Bool);
    }
    @:keep
    @:tdfield
    static public function isSingletonInverse( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return ((((_c._negate && (_c._categories.length) == ((0 : stdgo.GoInt)) : Bool) && (_c._ranges.length) == ((1 : stdgo.GoInt)) : Bool) && (_c._sub == null || (_c._sub : Dynamic).__nil__) : Bool) && (_c._ranges[(0 : stdgo.GoInt)]._first == _c._ranges[(0 : stdgo.GoInt)]._last) : Bool);
    }
    @:keep
    @:tdfield
    static public function isSingleton( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return ((((!_c._negate && (_c._categories.length) == ((0 : stdgo.GoInt)) : Bool) && (_c._ranges.length) == ((1 : stdgo.GoInt)) : Bool) && (_c._sub == null || (_c._sub : Dynamic).__nil__) : Bool) && (_c._ranges[(0 : stdgo.GoInt)]._first == _c._ranges[(0 : stdgo.GoInt)]._last) : Bool);
    }
    @:keep
    @:tdfield
    static public function singletonChar( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):stdgo.GoInt32 {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        return _c._ranges[(0 : stdgo.GoInt)]._first;
    }
    @:keep
    @:tdfield
    static public function charIn( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet, _ch:stdgo.GoInt32):Bool {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        var _val = (false : Bool);
        for (__0 => _r in _c._ranges) {
            if ((_ch < _r._first : Bool)) {
                continue;
            };
            if ((_ch <= _r._last : Bool)) {
                _val = true;
                break;
            };
        };
        if ((!_val && ((_c._categories.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            for (__1 => _ct in _c._categories) {
                if (_ct._cat == ((" " : stdgo.GoString))) {
                    if (stdgo._internal.unicode.Unicode_isSpace.isSpace(_ch)) {
                        _val = !_ct._negate;
                        break;
                    } else if (_ct._negate) {
                        _val = true;
                        break;
                    };
                } else if (_ct._cat == (("W" : stdgo.GoString))) {
                    if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_isWordChar.isWordChar(_ch)) {
                        _val = !_ct._negate;
                        break;
                    } else if (_ct._negate) {
                        _val = true;
                        break;
                    };
                } else if (stdgo._internal.unicode.Unicode_is_.is_((_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__unicodeCategories._unicodeCategories[_ct._cat] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>)), _ch)) {
                    _val = !_ct._negate;
                    break;
                } else if (_ct._negate) {
                    _val = true;
                    break;
                };
            };
        };
        if (_c._negate) {
            _val = !_val;
        };
        if ((_val && (_c._sub != null && ((_c._sub : Dynamic).__nil__ == null || !(_c._sub : Dynamic).__nil__)) : Bool)) {
            _val = !(@:checkr _c._sub ?? throw "null pointer dereference").charIn(_ch);
        };
        return _val;
    }
    @:keep
    @:tdfield
    static public function _mapHashFill( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        if (_c._negate) {
            @:check2r _buf.writeByte((0 : stdgo.GoUInt8));
        } else {
            @:check2r _buf.writeByte((1 : stdgo.GoUInt8));
        };
        stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface((_c._ranges.length)));
        stdgo._internal.encoding.binary.Binary_write.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian), stdgo.Go.toInterface((_c._categories.length)));
        for (__0 => _r in _c._ranges) {
            @:check2r _buf.writeRune(_r._first);
            @:check2r _buf.writeRune(_r._last);
        };
        for (__1 => _ct in _c._categories) {
            @:check2r _buf.writeString(_ct._cat?.__copy__());
            if (_ct._negate) {
                @:check2r _buf.writeByte((1 : stdgo.GoUInt8));
            } else {
                @:check2r _buf.writeByte((0 : stdgo.GoUInt8));
            };
        };
        if ((_c._sub != null && ((_c._sub : Dynamic).__nil__ == null || !(_c._sub : Dynamic).__nil__))) {
            (@:checkr _c._sub ?? throw "null pointer dereference")._mapHashFill(_buf);
        };
    }
    @:keep
    @:tdfield
    static public function string( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):stdgo.GoString {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        @:check2r _buf.writeRune((91 : stdgo.GoInt32));
        if (_c.isNegated()) {
            @:check2r _buf.writeRune((94 : stdgo.GoInt32));
        };
        for (__0 => _r in _c._ranges) {
            @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charDescription.charDescription(_r._first)?.__copy__());
            if (_r._first != (_r._last)) {
                if ((_r._last - _r._first : stdgo.GoInt32) != ((1 : stdgo.GoInt32))) {
                    @:check2r _buf.writeRune((45 : stdgo.GoInt32));
                };
                @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charDescription.charDescription(_r._last)?.__copy__());
            };
        };
        for (__1 => _c in _c._categories) {
            @:check2r _buf.writeString((_c.string() : stdgo.GoString)?.__copy__());
        };
        if ((_c._sub != null && ((_c._sub : Dynamic).__nil__ == null || !(_c._sub : Dynamic).__nil__))) {
            @:check2r _buf.writeRune((45 : stdgo.GoInt32));
            @:check2r _buf.writeString(((@:checkr _c._sub ?? throw "null pointer dereference").string() : stdgo.GoString)?.__copy__());
        };
        @:check2r _buf.writeRune((93 : stdgo.GoInt32));
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function copy( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = _c?.__copy__();
        var _ret = ({ _anything : _c._anything, _negate : _c._negate } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
        _ret._ranges = (_ret._ranges.__append__(...(_c._ranges : Array<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>)));
        _ret._categories = (_ret._categories.__append__(...(_c._categories : Array<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>)));
        if ((_c._sub != null && ((_c._sub : Dynamic).__nil__ == null || !(_c._sub : Dynamic).__nil__))) {
            var _sub = ((@:checkr _c._sub ?? throw "null pointer dereference").copy()?.__copy__() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
            _ret._sub = (stdgo.Go.setRef(_sub) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>);
        };
        return _ret?.__copy__();
    }
}
