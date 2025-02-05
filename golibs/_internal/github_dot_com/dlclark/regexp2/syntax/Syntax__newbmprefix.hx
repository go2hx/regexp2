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
function _newBmPrefix(_pattern:stdgo.Slice<stdgo.GoInt32>, _caseInsensitive:Bool, _rightToLeft:Bool):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> {
        var _ch_3672244:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _scan_3671707:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3671687:stdgo.GoInt = (0 : stdgo.GoInt);
        var _beforefirst_3671674:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3674563:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3674560:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var outerloopBreak = false;
        var _examine_3672227:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3671130:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
        var _newarray_3674706:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _i_3674100:stdgo.GoInt = (0 : stdgo.GoInt);
        var _match_3671713:stdgo.GoInt = (0 : stdgo.GoInt);
        var _bump_3671693:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3671274:stdgo.GoInt = (0 : stdgo.GoInt);
        var _k_3674744:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _b_3671130 = (stdgo.Go.setRef(({ _rightToLeft : _rightToLeft, _caseInsensitive : _caseInsensitive, _pattern : _pattern } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
                    if (_caseInsensitive) {
                        _gotoNext = 3671266i32;
                    } else {
                        _gotoNext = 3671670i32;
                    };
                } else if (__value__ == (3671266i32)) {
                    _i_3671274 = (0 : stdgo.GoInt);
                    _gotoNext = 3671270i32;
                } else if (__value__ == (3671270i32)) {
                    if ((_i_3671274 < ((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern.length) : Bool)) {
                        _gotoNext = 3671306i32;
                    } else {
                        _gotoNext = 3671670i32;
                    };
                } else if (__value__ == (3671306i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_i_3671274 : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_i_3671274 : stdgo.GoInt)]);
                    _i_3671274++;
                    _gotoNext = 3671270i32;
                } else if (__value__ == (3671670i32)) {
                    if (!_rightToLeft) {
                        _gotoNext = 3671741i32;
                    } else {
                        _gotoNext = 3671809i32;
                    };
                } else if (__value__ == (3671741i32)) {
                    _beforefirst_3671674 = (-1 : stdgo.GoInt);
                    _last_3671687 = (((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _bump_3671693 = (1 : stdgo.GoInt);
                    _gotoNext = 3672184i32;
                } else if (__value__ == (3671809i32)) {
                    _gotoNext = 3671809i32;
                    _beforefirst_3671674 = ((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern.length);
                    _last_3671687 = (0 : stdgo.GoInt);
                    _bump_3671693 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3672184i32;
                } else if (__value__ == (3672184i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._positive = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _examine_3672227 = _last_3671687;
                    _ch_3672244 = (@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_examine_3672227 : stdgo.GoInt)];
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._positive[(_examine_3672227 : stdgo.GoInt)] = _bump_3671693;
                    _examine_3672227 = (_examine_3672227 - (_bump_3671693) : stdgo.GoInt);
                    _gotoNext = 3672315i32;
                } else if (__value__ == (3672315i32)) {
                    var __blank__ = 0i32;
                    outerloopBreak = false;
                    _gotoNext = 3672327i32;
                } else if (__value__ == (3672327i32)) {
                    if (!outerloopBreak) {
                        _gotoNext = 3672331i32;
                    } else {
                        _gotoNext = 3673098i32;
                    };
                } else if (__value__ == (3672331i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3672395i32;
                } else if (__value__ == (3672395i32)) {
                    if (true) {
                        _gotoNext = 3672399i32;
                    } else {
                        _gotoNext = 3672531i32;
                    };
                } else if (__value__ == (3672399i32)) {
                    if (_examine_3672227 == (_beforefirst_3671674)) {
                        _gotoNext = 3672430i32;
                    } else {
                        _gotoNext = 3672460i32;
                    };
                } else if (__value__ == (3672430i32)) {
                    outerloopBreak = true;
                    _gotoNext = 3672327i32;
                } else if (__value__ == (3672460i32)) {
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_examine_3672227 : stdgo.GoInt)] == (_ch_3672244)) {
                        _gotoNext = 3672488i32;
                    } else {
                        _gotoNext = 3672508i32;
                    };
                } else if (__value__ == (3672488i32)) {
                    _gotoNext = 3672531i32;
                } else if (__value__ == (3672508i32)) {
                    _examine_3672227 = (_examine_3672227 - (_bump_3671693) : stdgo.GoInt);
                    _gotoNext = 3672395i32;
                } else if (__value__ == (3672531i32)) {
                    _match_3671713 = _last_3671687;
                    _scan_3671707 = _examine_3672227;
                    var __blank__ = 0i32;
                    _gotoNext = 3672598i32;
                } else if (__value__ == (3672598i32)) {
                    if (true) {
                        _gotoNext = 3672602i32;
                    } else {
                        _gotoNext = 3673077i32;
                    };
                } else if (__value__ == (3672602i32)) {
                    if (((_scan_3671707 == _beforefirst_3671674) || ((@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_match_3671713 : stdgo.GoInt)] != (@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_scan_3671707 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3672669i32;
                    } else {
                        _gotoNext = 3673040i32;
                    };
                } else if (__value__ == (3672669i32)) {
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._positive[(_match_3671713 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3672878i32;
                    } else {
                        _gotoNext = 3673025i32;
                    };
                } else if (__value__ == (3672878i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._positive[(_match_3671713 : stdgo.GoInt)] = (_match_3671713 - _scan_3671707 : stdgo.GoInt);
                    _gotoNext = 3673025i32;
                } else if (__value__ == (3673025i32)) {
                    _gotoNext = 3673077i32;
                } else if (__value__ == (3673040i32)) {
                    _scan_3671707 = (_scan_3671707 - (_bump_3671693) : stdgo.GoInt);
                    _match_3671713 = (_match_3671713 - (_bump_3671693) : stdgo.GoInt);
                    _gotoNext = 3672598i32;
                } else if (__value__ == (3673077i32)) {
                    _examine_3672227 = (_examine_3672227 - (_bump_3671693) : stdgo.GoInt);
                    _gotoNext = 3672327i32;
                } else if (__value__ == (3673098i32)) {
                    _match_3671713 = (_last_3671687 - _bump_3671693 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3673448i32;
                } else if (__value__ == (3673448i32)) {
                    if (_match_3671713 != (_beforefirst_3671674)) {
                        _gotoNext = 3673473i32;
                    } else {
                        _gotoNext = 3674059i32;
                    };
                } else if (__value__ == (3673473i32)) {
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._positive[(_match_3671713 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3673503i32;
                    } else {
                        _gotoNext = 3673540i32;
                    };
                } else if (__value__ == (3673503i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._positive[(_match_3671713 : stdgo.GoInt)] = _bump_3671693;
                    _gotoNext = 3673540i32;
                } else if (__value__ == (3673540i32)) {
                    _match_3671713 = (_match_3671713 - (_bump_3671693) : stdgo.GoInt);
                    _gotoNext = 3673448i32;
                } else if (__value__ == (3674059i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII = (new stdgo.Slice<stdgo.GoInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _i_3674100 = (0 : stdgo.GoInt);
                    _gotoNext = 3674096i32;
                } else if (__value__ == (3674096i32)) {
                    if ((_i_3674100 < ((@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII.length) : Bool)) {
                        _gotoNext = 3674138i32;
                    } else {
                        _gotoNext = 3674187i32;
                    };
                } else if (__value__ == (3674138i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII[(_i_3674100 : stdgo.GoInt)] = (_last_3671687 - _beforefirst_3671674 : stdgo.GoInt);
                    _i_3674100++;
                    _gotoNext = 3674096i32;
                } else if (__value__ == (3674187i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._lowASCII = (127 : stdgo.GoInt32);
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._highASCII = (0 : stdgo.GoInt32);
                    _examine_3672227 = _last_3671687;
                    _gotoNext = 3674223i32;
                } else if (__value__ == (3674223i32)) {
                    if (_examine_3672227 != (_beforefirst_3671674)) {
                        _gotoNext = 3674283i32;
                    } else {
                        _gotoNext = 3675214i32;
                    };
                } else if (__value__ == (3674267i32)) {
                    _examine_3672227 = (_examine_3672227 - (_bump_3671693) : stdgo.GoInt);
                    _gotoNext = 3674223i32;
                } else if (__value__ == (3674283i32)) {
                    _ch_3672244 = (@:checkr _b_3671130 ?? throw "null pointer dereference")._pattern[(_examine_3672227 : stdgo.GoInt)];
                    _gotoNext = 3674314i32;
                } else if (__value__ == (3674314i32)) {
                    if ((_ch_3672244 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3674325i32;
                    } else if ((_ch_3672244 <= (65535 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3674538i32;
                    } else {
                        _gotoNext = 3675091i32;
                    };
                } else if (__value__ == (3674325i32)) {
                    if (((@:checkr _b_3671130 ?? throw "null pointer dereference")._lowASCII > _ch_3672244 : Bool)) {
                        _gotoNext = 3674362i32;
                    } else {
                        _gotoNext = 3674393i32;
                    };
                } else if (__value__ == (3674362i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._lowASCII = _ch_3672244;
                    _gotoNext = 3674393i32;
                } else if (__value__ == (3674393i32)) {
                    if (((@:checkr _b_3671130 ?? throw "null pointer dereference")._highASCII < _ch_3672244 : Bool)) {
                        _gotoNext = 3674413i32;
                    } else {
                        _gotoNext = 3674445i32;
                    };
                } else if (__value__ == (3674413i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._highASCII = _ch_3672244;
                    _gotoNext = 3674445i32;
                } else if (__value__ == (3674445i32)) {
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII[(_ch_3672244 : stdgo.GoInt)] == ((_last_3671687 - _beforefirst_3671674 : stdgo.GoInt))) {
                        _gotoNext = 3674488i32;
                    } else {
                        _gotoNext = 3674267i32;
                    };
                } else if (__value__ == (3674488i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII[(_ch_3672244 : stdgo.GoInt)] = (_last_3671687 - _examine_3672227 : stdgo.GoInt);
                    _gotoNext = 3674267i32;
                } else if (__value__ == (3674538i32)) {
                    {
                        final __tmp__0 = (_ch_3672244 >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                        final __tmp__1 = (_ch_3672244 & (255 : stdgo.GoInt32) : stdgo.GoInt32);
                        _i_3674560 = __tmp__0;
                        _j_3674563 = __tmp__1;
                    };
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeUnicode == null) {
                        _gotoNext = 3674615i32;
                    } else {
                        _gotoNext = 3674669i32;
                    };
                } else if (__value__ == (3674615i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeUnicode = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    _gotoNext = 3674669i32;
                } else if (__value__ == (3674669i32)) {
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeUnicode[(_i_3674560 : stdgo.GoInt)] == null) {
                        _gotoNext = 3674700i32;
                    } else {
                        _gotoNext = 3674990i32;
                    };
                } else if (__value__ == (3674700i32)) {
                    _newarray_3674706 = (new stdgo.Slice<stdgo.GoInt>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _k_3674744 = (0 : stdgo.GoInt);
                    _gotoNext = 3674740i32;
                } else if (__value__ == (3674740i32)) {
                    if ((_k_3674744 < (_newarray_3674706.length) : Bool)) {
                        _gotoNext = 3674775i32;
                    } else {
                        _gotoNext = 3674826i32;
                    };
                } else if (__value__ == (3674775i32)) {
                    _newarray_3674706[(_k_3674744 : stdgo.GoInt)] = (_last_3671687 - _beforefirst_3671674 : stdgo.GoInt);
                    _k_3674744++;
                    _gotoNext = 3674740i32;
                } else if (__value__ == (3674826i32)) {
                    if (_i_3674560 == ((0 : stdgo.GoInt32))) {
                        _gotoNext = 3674836i32;
                    } else {
                        _gotoNext = 3674949i32;
                    };
                } else if (__value__ == (3674836i32)) {
                    _newarray_3674706.__copyTo__((@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII);
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeASCII = _newarray_3674706;
                    _gotoNext = 3674949i32;
                } else if (__value__ == (3674949i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeUnicode[(_i_3674560 : stdgo.GoInt)] = _newarray_3674706;
                    _gotoNext = 3674990i32;
                } else if (__value__ == (3674990i32)) {
                    if ((@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeUnicode[(_i_3674560 : stdgo.GoInt)][(_j_3674563 : stdgo.GoInt)] == ((_last_3671687 - _beforefirst_3671674 : stdgo.GoInt))) {
                        _gotoNext = 3675037i32;
                    } else {
                        _gotoNext = 3674267i32;
                    };
                } else if (__value__ == (3675037i32)) {
                    (@:checkr _b_3671130 ?? throw "null pointer dereference")._negativeUnicode[(_i_3674560 : stdgo.GoInt)][(_j_3674563 : stdgo.GoInt)] = (_last_3671687 - _examine_3672227 : stdgo.GoInt);
                    _gotoNext = 3674267i32;
                } else if (__value__ == (3675091i32)) {
                    return null;
                    _gotoNext = 3674267i32;
                } else if (__value__ == (3675214i32)) {
                    return _b_3671130;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
