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
function _newBmPrefix(_pattern:stdgo.Slice<stdgo.GoInt32>, _caseInsensitive:Bool, _rightToLeft:Bool):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix> {
        var _examine_3755849:stdgo.GoInt = (0 : stdgo.GoInt);
        var _scan_3755329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _bump_3755315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _k_3758366:stdgo.GoInt = (0 : stdgo.GoInt);
        var _beforefirst_3755296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3758182:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var outerloopBreak = false;
        var _ch_3755866:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _match_3755335:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3757722:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3755309:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3754896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3754752:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix>);
        var _newarray_3758328:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _j_3758185:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _b_3754752 = (stdgo.Go.setRef(({ _rightToLeft : _rightToLeft, _caseInsensitive : _caseInsensitive, _pattern : _pattern } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix>);
                    if (_caseInsensitive) {
                        _gotoNext = 3754888i32;
                    } else {
                        _gotoNext = 3755292i32;
                    };
                } else if (__value__ == (3754888i32)) {
                    _i_3754896 = (0 : stdgo.GoInt);
                    _gotoNext = 3754892i32;
                } else if (__value__ == (3754892i32)) {
                    if ((_i_3754896 < ((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern.length) : Bool)) {
                        _gotoNext = 3754928i32;
                    } else {
                        _gotoNext = 3755292i32;
                    };
                } else if (__value__ == (3754928i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_i_3754896 : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_toLower.toLower((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_i_3754896 : stdgo.GoInt)]);
                    _i_3754896++;
                    _gotoNext = 3754892i32;
                } else if (__value__ == (3755292i32)) {
                    if (!_rightToLeft) {
                        _gotoNext = 3755363i32;
                    } else {
                        _gotoNext = 3755431i32;
                    };
                } else if (__value__ == (3755363i32)) {
                    _beforefirst_3755296 = (-1 : stdgo.GoInt);
                    _last_3755309 = (((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _bump_3755315 = (1 : stdgo.GoInt);
                    _gotoNext = 3755806i32;
                } else if (__value__ == (3755431i32)) {
                    _gotoNext = 3755431i32;
                    _beforefirst_3755296 = ((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern.length);
                    _last_3755309 = (0 : stdgo.GoInt);
                    _bump_3755315 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3755806i32;
                } else if (__value__ == (3755806i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._positive = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _examine_3755849 = _last_3755309;
                    _ch_3755866 = (@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_examine_3755849 : stdgo.GoInt)];
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._positive[(_examine_3755849 : stdgo.GoInt)] = _bump_3755315;
                    _examine_3755849 = (_examine_3755849 - (_bump_3755315) : stdgo.GoInt);
                    _gotoNext = 3755937i32;
                } else if (__value__ == (3755937i32)) {
                    var __blank__ = 0i32;
                    outerloopBreak = false;
                    _gotoNext = 3755949i32;
                } else if (__value__ == (3755949i32)) {
                    if (!outerloopBreak) {
                        _gotoNext = 3755953i32;
                    } else {
                        _gotoNext = 3756720i32;
                    };
                } else if (__value__ == (3755953i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3756017i32;
                } else if (__value__ == (3756017i32)) {
                    if (true) {
                        _gotoNext = 3756021i32;
                    } else {
                        _gotoNext = 3756153i32;
                    };
                } else if (__value__ == (3756021i32)) {
                    if (_examine_3755849 == (_beforefirst_3755296)) {
                        _gotoNext = 3756052i32;
                    } else {
                        _gotoNext = 3756082i32;
                    };
                } else if (__value__ == (3756052i32)) {
                    outerloopBreak = true;
                    _gotoNext = 3755949i32;
                } else if (__value__ == (3756082i32)) {
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_examine_3755849 : stdgo.GoInt)] == (_ch_3755866)) {
                        _gotoNext = 3756110i32;
                    } else {
                        _gotoNext = 3756130i32;
                    };
                } else if (__value__ == (3756110i32)) {
                    _gotoNext = 3756153i32;
                } else if (__value__ == (3756130i32)) {
                    _examine_3755849 = (_examine_3755849 - (_bump_3755315) : stdgo.GoInt);
                    _gotoNext = 3756017i32;
                } else if (__value__ == (3756153i32)) {
                    _match_3755335 = _last_3755309;
                    _scan_3755329 = _examine_3755849;
                    var __blank__ = 0i32;
                    _gotoNext = 3756220i32;
                } else if (__value__ == (3756220i32)) {
                    if (true) {
                        _gotoNext = 3756224i32;
                    } else {
                        _gotoNext = 3756699i32;
                    };
                } else if (__value__ == (3756224i32)) {
                    if (((_scan_3755329 == _beforefirst_3755296) || ((@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_match_3755335 : stdgo.GoInt)] != (@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_scan_3755329 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3756291i32;
                    } else {
                        _gotoNext = 3756662i32;
                    };
                } else if (__value__ == (3756291i32)) {
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._positive[(_match_3755335 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3756500i32;
                    } else {
                        _gotoNext = 3756647i32;
                    };
                } else if (__value__ == (3756500i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._positive[(_match_3755335 : stdgo.GoInt)] = (_match_3755335 - _scan_3755329 : stdgo.GoInt);
                    _gotoNext = 3756647i32;
                } else if (__value__ == (3756647i32)) {
                    _gotoNext = 3756699i32;
                } else if (__value__ == (3756662i32)) {
                    _scan_3755329 = (_scan_3755329 - (_bump_3755315) : stdgo.GoInt);
                    _match_3755335 = (_match_3755335 - (_bump_3755315) : stdgo.GoInt);
                    _gotoNext = 3756220i32;
                } else if (__value__ == (3756699i32)) {
                    _examine_3755849 = (_examine_3755849 - (_bump_3755315) : stdgo.GoInt);
                    _gotoNext = 3755949i32;
                } else if (__value__ == (3756720i32)) {
                    _match_3755335 = (_last_3755309 - _bump_3755315 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3757070i32;
                } else if (__value__ == (3757070i32)) {
                    if (_match_3755335 != (_beforefirst_3755296)) {
                        _gotoNext = 3757095i32;
                    } else {
                        _gotoNext = 3757681i32;
                    };
                } else if (__value__ == (3757095i32)) {
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._positive[(_match_3755335 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3757125i32;
                    } else {
                        _gotoNext = 3757162i32;
                    };
                } else if (__value__ == (3757125i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._positive[(_match_3755335 : stdgo.GoInt)] = _bump_3755315;
                    _gotoNext = 3757162i32;
                } else if (__value__ == (3757162i32)) {
                    _match_3755335 = (_match_3755335 - (_bump_3755315) : stdgo.GoInt);
                    _gotoNext = 3757070i32;
                } else if (__value__ == (3757681i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII = (new stdgo.Slice<stdgo.GoInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _i_3757722 = (0 : stdgo.GoInt);
                    _gotoNext = 3757718i32;
                } else if (__value__ == (3757718i32)) {
                    if ((_i_3757722 < ((@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII.length) : Bool)) {
                        _gotoNext = 3757760i32;
                    } else {
                        _gotoNext = 3757809i32;
                    };
                } else if (__value__ == (3757760i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII[(_i_3757722 : stdgo.GoInt)] = (_last_3755309 - _beforefirst_3755296 : stdgo.GoInt);
                    _i_3757722++;
                    _gotoNext = 3757718i32;
                } else if (__value__ == (3757809i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._lowASCII = (127 : stdgo.GoInt32);
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._highASCII = (0 : stdgo.GoInt32);
                    _examine_3755849 = _last_3755309;
                    _gotoNext = 3757845i32;
                } else if (__value__ == (3757845i32)) {
                    if (_examine_3755849 != (_beforefirst_3755296)) {
                        _gotoNext = 3757905i32;
                    } else {
                        _gotoNext = 3758836i32;
                    };
                } else if (__value__ == (3757889i32)) {
                    _examine_3755849 = (_examine_3755849 - (_bump_3755315) : stdgo.GoInt);
                    _gotoNext = 3757845i32;
                } else if (__value__ == (3757905i32)) {
                    _ch_3755866 = (@:checkr _b_3754752 ?? throw "null pointer dereference")._pattern[(_examine_3755849 : stdgo.GoInt)];
                    _gotoNext = 3757936i32;
                } else if (__value__ == (3757936i32)) {
                    if ((_ch_3755866 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3757947i32;
                    } else if ((_ch_3755866 <= (65535 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3758160i32;
                    } else {
                        _gotoNext = 3758713i32;
                    };
                } else if (__value__ == (3757947i32)) {
                    if (((@:checkr _b_3754752 ?? throw "null pointer dereference")._lowASCII > _ch_3755866 : Bool)) {
                        _gotoNext = 3757984i32;
                    } else {
                        _gotoNext = 3758015i32;
                    };
                } else if (__value__ == (3757984i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._lowASCII = _ch_3755866;
                    _gotoNext = 3758015i32;
                } else if (__value__ == (3758015i32)) {
                    if (((@:checkr _b_3754752 ?? throw "null pointer dereference")._highASCII < _ch_3755866 : Bool)) {
                        _gotoNext = 3758035i32;
                    } else {
                        _gotoNext = 3758067i32;
                    };
                } else if (__value__ == (3758035i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._highASCII = _ch_3755866;
                    _gotoNext = 3758067i32;
                } else if (__value__ == (3758067i32)) {
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII[(_ch_3755866 : stdgo.GoInt)] == ((_last_3755309 - _beforefirst_3755296 : stdgo.GoInt))) {
                        _gotoNext = 3758110i32;
                    } else {
                        _gotoNext = 3757889i32;
                    };
                } else if (__value__ == (3758110i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII[(_ch_3755866 : stdgo.GoInt)] = (_last_3755309 - _examine_3755849 : stdgo.GoInt);
                    _gotoNext = 3757889i32;
                } else if (__value__ == (3758160i32)) {
                    {
                        final __tmp__0 = (_ch_3755866 >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                        final __tmp__1 = (_ch_3755866 & (255 : stdgo.GoInt32) : stdgo.GoInt32);
                        _i_3758182 = __tmp__0;
                        _j_3758185 = __tmp__1;
                    };
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeUnicode == null) {
                        _gotoNext = 3758237i32;
                    } else {
                        _gotoNext = 3758291i32;
                    };
                } else if (__value__ == (3758237i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeUnicode = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    _gotoNext = 3758291i32;
                } else if (__value__ == (3758291i32)) {
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeUnicode[(_i_3758182 : stdgo.GoInt)] == null) {
                        _gotoNext = 3758322i32;
                    } else {
                        _gotoNext = 3758612i32;
                    };
                } else if (__value__ == (3758322i32)) {
                    _newarray_3758328 = (new stdgo.Slice<stdgo.GoInt>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _k_3758366 = (0 : stdgo.GoInt);
                    _gotoNext = 3758362i32;
                } else if (__value__ == (3758362i32)) {
                    if ((_k_3758366 < (_newarray_3758328.length) : Bool)) {
                        _gotoNext = 3758397i32;
                    } else {
                        _gotoNext = 3758448i32;
                    };
                } else if (__value__ == (3758397i32)) {
                    _newarray_3758328[(_k_3758366 : stdgo.GoInt)] = (_last_3755309 - _beforefirst_3755296 : stdgo.GoInt);
                    _k_3758366++;
                    _gotoNext = 3758362i32;
                } else if (__value__ == (3758448i32)) {
                    if (_i_3758182 == ((0 : stdgo.GoInt32))) {
                        _gotoNext = 3758458i32;
                    } else {
                        _gotoNext = 3758571i32;
                    };
                } else if (__value__ == (3758458i32)) {
                    _newarray_3758328.__copyTo__((@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII);
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeASCII = _newarray_3758328;
                    _gotoNext = 3758571i32;
                } else if (__value__ == (3758571i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeUnicode[(_i_3758182 : stdgo.GoInt)] = _newarray_3758328;
                    _gotoNext = 3758612i32;
                } else if (__value__ == (3758612i32)) {
                    if ((@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeUnicode[(_i_3758182 : stdgo.GoInt)][(_j_3758185 : stdgo.GoInt)] == ((_last_3755309 - _beforefirst_3755296 : stdgo.GoInt))) {
                        _gotoNext = 3758659i32;
                    } else {
                        _gotoNext = 3757889i32;
                    };
                } else if (__value__ == (3758659i32)) {
                    (@:checkr _b_3754752 ?? throw "null pointer dereference")._negativeUnicode[(_i_3758182 : stdgo.GoInt)][(_j_3758185 : stdgo.GoInt)] = (_last_3755309 - _examine_3755849 : stdgo.GoInt);
                    _gotoNext = 3757889i32;
                } else if (__value__ == (3758713i32)) {
                    return null;
                    _gotoNext = 3757889i32;
                } else if (__value__ == (3758836i32)) {
                    return _b_3754752;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
