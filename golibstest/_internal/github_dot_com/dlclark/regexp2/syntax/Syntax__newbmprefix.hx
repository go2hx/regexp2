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
        var _i_4317722:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newarray_4318328:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _j_4318185:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_4318182:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bump_4315315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _beforefirst_4315296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _examine_4315849:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_4315309:stdgo.GoInt = (0 : stdgo.GoInt);
        var _k_4318366:stdgo.GoInt = (0 : stdgo.GoInt);
        var outerloopBreak = false;
        var _ch_4315866:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _match_4315335:stdgo.GoInt = (0 : stdgo.GoInt);
        var _scan_4315329:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4314896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_4314752:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _b_4314752 = (stdgo.Go.setRef(({ _rightToLeft : _rightToLeft, _caseInsensitive : _caseInsensitive, _pattern : _pattern } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
                    if (_caseInsensitive) {
                        _gotoNext = 4314888i32;
                    } else {
                        _gotoNext = 4315292i32;
                    };
                } else if (__value__ == (4314888i32)) {
                    _i_4314896 = (0 : stdgo.GoInt);
                    _gotoNext = 4314892i32;
                } else if (__value__ == (4314892i32)) {
                    if ((_i_4314896 < ((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern.length) : Bool)) {
                        _gotoNext = 4314928i32;
                    } else {
                        _gotoNext = 4315292i32;
                    };
                } else if (__value__ == (4314928i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_i_4314896 : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_i_4314896 : stdgo.GoInt)]);
                    _i_4314896++;
                    _gotoNext = 4314892i32;
                } else if (__value__ == (4315292i32)) {
                    if (!_rightToLeft) {
                        _gotoNext = 4315363i32;
                    } else {
                        _gotoNext = 4315431i32;
                    };
                } else if (__value__ == (4315363i32)) {
                    _beforefirst_4315296 = (-1 : stdgo.GoInt);
                    _last_4315309 = (((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _bump_4315315 = (1 : stdgo.GoInt);
                    _gotoNext = 4315806i32;
                } else if (__value__ == (4315431i32)) {
                    _gotoNext = 4315431i32;
                    _beforefirst_4315296 = ((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern.length);
                    _last_4315309 = (0 : stdgo.GoInt);
                    _bump_4315315 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 4315806i32;
                } else if (__value__ == (4315806i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._positive = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _examine_4315849 = _last_4315309;
                    _ch_4315866 = (@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_examine_4315849 : stdgo.GoInt)];
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._positive[(_examine_4315849 : stdgo.GoInt)] = _bump_4315315;
                    _examine_4315849 = (_examine_4315849 - (_bump_4315315) : stdgo.GoInt);
                    _gotoNext = 4315937i32;
                } else if (__value__ == (4315937i32)) {
                    var __blank__ = 0i32;
                    outerloopBreak = false;
                    _gotoNext = 4315949i32;
                } else if (__value__ == (4315949i32)) {
                    if (!outerloopBreak) {
                        _gotoNext = 4315953i32;
                    } else {
                        _gotoNext = 4316720i32;
                    };
                } else if (__value__ == (4315953i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4316017i32;
                } else if (__value__ == (4316017i32)) {
                    if (true) {
                        _gotoNext = 4316021i32;
                    } else {
                        _gotoNext = 4316153i32;
                    };
                } else if (__value__ == (4316021i32)) {
                    if (_examine_4315849 == (_beforefirst_4315296)) {
                        _gotoNext = 4316052i32;
                    } else {
                        _gotoNext = 4316082i32;
                    };
                } else if (__value__ == (4316052i32)) {
                    outerloopBreak = true;
                    _gotoNext = 4315949i32;
                } else if (__value__ == (4316082i32)) {
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_examine_4315849 : stdgo.GoInt)] == (_ch_4315866)) {
                        _gotoNext = 4316110i32;
                    } else {
                        _gotoNext = 4316130i32;
                    };
                } else if (__value__ == (4316110i32)) {
                    _gotoNext = 4316153i32;
                } else if (__value__ == (4316130i32)) {
                    _examine_4315849 = (_examine_4315849 - (_bump_4315315) : stdgo.GoInt);
                    _gotoNext = 4316017i32;
                } else if (__value__ == (4316153i32)) {
                    _match_4315335 = _last_4315309;
                    _scan_4315329 = _examine_4315849;
                    var __blank__ = 0i32;
                    _gotoNext = 4316220i32;
                } else if (__value__ == (4316220i32)) {
                    if (true) {
                        _gotoNext = 4316224i32;
                    } else {
                        _gotoNext = 4316699i32;
                    };
                } else if (__value__ == (4316224i32)) {
                    if (((_scan_4315329 == _beforefirst_4315296) || ((@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_match_4315335 : stdgo.GoInt)] != (@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_scan_4315329 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 4316291i32;
                    } else {
                        _gotoNext = 4316662i32;
                    };
                } else if (__value__ == (4316291i32)) {
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._positive[(_match_4315335 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4316500i32;
                    } else {
                        _gotoNext = 4316647i32;
                    };
                } else if (__value__ == (4316500i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._positive[(_match_4315335 : stdgo.GoInt)] = (_match_4315335 - _scan_4315329 : stdgo.GoInt);
                    _gotoNext = 4316647i32;
                } else if (__value__ == (4316647i32)) {
                    _gotoNext = 4316699i32;
                } else if (__value__ == (4316662i32)) {
                    _scan_4315329 = (_scan_4315329 - (_bump_4315315) : stdgo.GoInt);
                    _match_4315335 = (_match_4315335 - (_bump_4315315) : stdgo.GoInt);
                    _gotoNext = 4316220i32;
                } else if (__value__ == (4316699i32)) {
                    _examine_4315849 = (_examine_4315849 - (_bump_4315315) : stdgo.GoInt);
                    _gotoNext = 4315949i32;
                } else if (__value__ == (4316720i32)) {
                    _match_4315335 = (_last_4315309 - _bump_4315315 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 4317070i32;
                } else if (__value__ == (4317070i32)) {
                    if (_match_4315335 != (_beforefirst_4315296)) {
                        _gotoNext = 4317095i32;
                    } else {
                        _gotoNext = 4317681i32;
                    };
                } else if (__value__ == (4317095i32)) {
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._positive[(_match_4315335 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4317125i32;
                    } else {
                        _gotoNext = 4317162i32;
                    };
                } else if (__value__ == (4317125i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._positive[(_match_4315335 : stdgo.GoInt)] = _bump_4315315;
                    _gotoNext = 4317162i32;
                } else if (__value__ == (4317162i32)) {
                    _match_4315335 = (_match_4315335 - (_bump_4315315) : stdgo.GoInt);
                    _gotoNext = 4317070i32;
                } else if (__value__ == (4317681i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII = (new stdgo.Slice<stdgo.GoInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _i_4317722 = (0 : stdgo.GoInt);
                    _gotoNext = 4317718i32;
                } else if (__value__ == (4317718i32)) {
                    if ((_i_4317722 < ((@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII.length) : Bool)) {
                        _gotoNext = 4317760i32;
                    } else {
                        _gotoNext = 4317809i32;
                    };
                } else if (__value__ == (4317760i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII[(_i_4317722 : stdgo.GoInt)] = (_last_4315309 - _beforefirst_4315296 : stdgo.GoInt);
                    _i_4317722++;
                    _gotoNext = 4317718i32;
                } else if (__value__ == (4317809i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._lowASCII = (127 : stdgo.GoInt32);
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._highASCII = (0 : stdgo.GoInt32);
                    _examine_4315849 = _last_4315309;
                    _gotoNext = 4317845i32;
                } else if (__value__ == (4317845i32)) {
                    if (_examine_4315849 != (_beforefirst_4315296)) {
                        _gotoNext = 4317905i32;
                    } else {
                        _gotoNext = 4318836i32;
                    };
                } else if (__value__ == (4317889i32)) {
                    _examine_4315849 = (_examine_4315849 - (_bump_4315315) : stdgo.GoInt);
                    _gotoNext = 4317845i32;
                } else if (__value__ == (4317905i32)) {
                    _ch_4315866 = (@:checkr _b_4314752 ?? throw "null pointer dereference")._pattern[(_examine_4315849 : stdgo.GoInt)];
                    _gotoNext = 4317936i32;
                } else if (__value__ == (4317936i32)) {
                    if ((_ch_4315866 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4317947i32;
                    } else if ((_ch_4315866 <= (65535 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4318160i32;
                    } else {
                        _gotoNext = 4318713i32;
                    };
                } else if (__value__ == (4317947i32)) {
                    if (((@:checkr _b_4314752 ?? throw "null pointer dereference")._lowASCII > _ch_4315866 : Bool)) {
                        _gotoNext = 4317984i32;
                    } else {
                        _gotoNext = 4318015i32;
                    };
                } else if (__value__ == (4317984i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._lowASCII = _ch_4315866;
                    _gotoNext = 4318015i32;
                } else if (__value__ == (4318015i32)) {
                    if (((@:checkr _b_4314752 ?? throw "null pointer dereference")._highASCII < _ch_4315866 : Bool)) {
                        _gotoNext = 4318035i32;
                    } else {
                        _gotoNext = 4318067i32;
                    };
                } else if (__value__ == (4318035i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._highASCII = _ch_4315866;
                    _gotoNext = 4318067i32;
                } else if (__value__ == (4318067i32)) {
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII[(_ch_4315866 : stdgo.GoInt)] == ((_last_4315309 - _beforefirst_4315296 : stdgo.GoInt))) {
                        _gotoNext = 4318110i32;
                    } else {
                        _gotoNext = 4317889i32;
                    };
                } else if (__value__ == (4318110i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII[(_ch_4315866 : stdgo.GoInt)] = (_last_4315309 - _examine_4315849 : stdgo.GoInt);
                    _gotoNext = 4317889i32;
                } else if (__value__ == (4318160i32)) {
                    {
                        final __tmp__0 = (_ch_4315866 >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                        final __tmp__1 = (_ch_4315866 & (255 : stdgo.GoInt32) : stdgo.GoInt32);
                        _i_4318182 = __tmp__0;
                        _j_4318185 = __tmp__1;
                    };
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeUnicode == null) {
                        _gotoNext = 4318237i32;
                    } else {
                        _gotoNext = 4318291i32;
                    };
                } else if (__value__ == (4318237i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeUnicode = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    _gotoNext = 4318291i32;
                } else if (__value__ == (4318291i32)) {
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeUnicode[(_i_4318182 : stdgo.GoInt)] == null) {
                        _gotoNext = 4318322i32;
                    } else {
                        _gotoNext = 4318612i32;
                    };
                } else if (__value__ == (4318322i32)) {
                    _newarray_4318328 = (new stdgo.Slice<stdgo.GoInt>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _k_4318366 = (0 : stdgo.GoInt);
                    _gotoNext = 4318362i32;
                } else if (__value__ == (4318362i32)) {
                    if ((_k_4318366 < (_newarray_4318328.length) : Bool)) {
                        _gotoNext = 4318397i32;
                    } else {
                        _gotoNext = 4318448i32;
                    };
                } else if (__value__ == (4318397i32)) {
                    _newarray_4318328[(_k_4318366 : stdgo.GoInt)] = (_last_4315309 - _beforefirst_4315296 : stdgo.GoInt);
                    _k_4318366++;
                    _gotoNext = 4318362i32;
                } else if (__value__ == (4318448i32)) {
                    if (_i_4318182 == ((0 : stdgo.GoInt32))) {
                        _gotoNext = 4318458i32;
                    } else {
                        _gotoNext = 4318571i32;
                    };
                } else if (__value__ == (4318458i32)) {
                    _newarray_4318328.__copyTo__((@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII);
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeASCII = _newarray_4318328;
                    _gotoNext = 4318571i32;
                } else if (__value__ == (4318571i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeUnicode[(_i_4318182 : stdgo.GoInt)] = _newarray_4318328;
                    _gotoNext = 4318612i32;
                } else if (__value__ == (4318612i32)) {
                    if ((@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeUnicode[(_i_4318182 : stdgo.GoInt)][(_j_4318185 : stdgo.GoInt)] == ((_last_4315309 - _beforefirst_4315296 : stdgo.GoInt))) {
                        _gotoNext = 4318659i32;
                    } else {
                        _gotoNext = 4317889i32;
                    };
                } else if (__value__ == (4318659i32)) {
                    (@:checkr _b_4314752 ?? throw "null pointer dereference")._negativeUnicode[(_i_4318182 : stdgo.GoInt)][(_j_4318185 : stdgo.GoInt)] = (_last_4315309 - _examine_4315849 : stdgo.GoInt);
                    _gotoNext = 4317889i32;
                } else if (__value__ == (4318713i32)) {
                    return null;
                    _gotoNext = 4317889i32;
                } else if (__value__ == (4318836i32)) {
                    return _b_4314752;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
