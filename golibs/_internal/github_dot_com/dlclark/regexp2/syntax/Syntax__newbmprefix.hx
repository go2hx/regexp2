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
        var _newarray_3665391:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _j_3665248:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bump_3662378:stdgo.GoInt = (0 : stdgo.GoInt);
        var _beforefirst_3662359:stdgo.GoInt = (0 : stdgo.GoInt);
        var outerloopBreak = false;
        var _match_3662398:stdgo.GoInt = (0 : stdgo.GoInt);
        var _scan_3662392:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3662372:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3661959:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_3661815:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
        var _k_3665429:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3662929:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _examine_3662912:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3665245:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _i_3664785:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _b_3661815 = (stdgo.Go.setRef(({ _rightToLeft : _rightToLeft, _caseInsensitive : _caseInsensitive, _pattern : _pattern } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
                    if (_caseInsensitive) {
                        _gotoNext = 3661951i32;
                    } else {
                        _gotoNext = 3662355i32;
                    };
                } else if (__value__ == (3661951i32)) {
                    _i_3661959 = (0 : stdgo.GoInt);
                    _gotoNext = 3661955i32;
                } else if (__value__ == (3661955i32)) {
                    if ((_i_3661959 < ((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern.length) : Bool)) {
                        _gotoNext = 3661991i32;
                    } else {
                        _gotoNext = 3662355i32;
                    };
                } else if (__value__ == (3661991i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_i_3661959 : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_tolower.toLower((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_i_3661959 : stdgo.GoInt)]);
                    _i_3661959++;
                    _gotoNext = 3661955i32;
                } else if (__value__ == (3662355i32)) {
                    if (!_rightToLeft) {
                        _gotoNext = 3662426i32;
                    } else {
                        _gotoNext = 3662494i32;
                    };
                } else if (__value__ == (3662426i32)) {
                    _beforefirst_3662359 = (-1 : stdgo.GoInt);
                    _last_3662372 = (((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _bump_3662378 = (1 : stdgo.GoInt);
                    _gotoNext = 3662869i32;
                } else if (__value__ == (3662494i32)) {
                    _gotoNext = 3662494i32;
                    _beforefirst_3662359 = ((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern.length);
                    _last_3662372 = (0 : stdgo.GoInt);
                    _bump_3662378 = (-1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3662869i32;
                } else if (__value__ == (3662869i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._positive = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _examine_3662912 = _last_3662372;
                    _ch_3662929 = (@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_examine_3662912 : stdgo.GoInt)];
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._positive[(_examine_3662912 : stdgo.GoInt)] = _bump_3662378;
                    _examine_3662912 = (_examine_3662912 - (_bump_3662378) : stdgo.GoInt);
                    _gotoNext = 3663000i32;
                } else if (__value__ == (3663000i32)) {
                    var __blank__ = 0i32;
                    outerloopBreak = false;
                    _gotoNext = 3663012i32;
                } else if (__value__ == (3663012i32)) {
                    if (!outerloopBreak) {
                        _gotoNext = 3663016i32;
                    } else {
                        _gotoNext = 3663783i32;
                    };
                } else if (__value__ == (3663016i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3663080i32;
                } else if (__value__ == (3663080i32)) {
                    if (true) {
                        _gotoNext = 3663084i32;
                    } else {
                        _gotoNext = 3663216i32;
                    };
                } else if (__value__ == (3663084i32)) {
                    if (_examine_3662912 == (_beforefirst_3662359)) {
                        _gotoNext = 3663115i32;
                    } else {
                        _gotoNext = 3663145i32;
                    };
                } else if (__value__ == (3663115i32)) {
                    outerloopBreak = true;
                    _gotoNext = 3663012i32;
                } else if (__value__ == (3663145i32)) {
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_examine_3662912 : stdgo.GoInt)] == (_ch_3662929)) {
                        _gotoNext = 3663173i32;
                    } else {
                        _gotoNext = 3663193i32;
                    };
                } else if (__value__ == (3663173i32)) {
                    _gotoNext = 3663216i32;
                } else if (__value__ == (3663193i32)) {
                    _examine_3662912 = (_examine_3662912 - (_bump_3662378) : stdgo.GoInt);
                    _gotoNext = 3663080i32;
                } else if (__value__ == (3663216i32)) {
                    _match_3662398 = _last_3662372;
                    _scan_3662392 = _examine_3662912;
                    var __blank__ = 0i32;
                    _gotoNext = 3663283i32;
                } else if (__value__ == (3663283i32)) {
                    if (true) {
                        _gotoNext = 3663287i32;
                    } else {
                        _gotoNext = 3663762i32;
                    };
                } else if (__value__ == (3663287i32)) {
                    if (((_scan_3662392 == _beforefirst_3662359) || ((@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_match_3662398 : stdgo.GoInt)] != (@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_scan_3662392 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3663354i32;
                    } else {
                        _gotoNext = 3663725i32;
                    };
                } else if (__value__ == (3663354i32)) {
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._positive[(_match_3662398 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3663563i32;
                    } else {
                        _gotoNext = 3663710i32;
                    };
                } else if (__value__ == (3663563i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._positive[(_match_3662398 : stdgo.GoInt)] = (_match_3662398 - _scan_3662392 : stdgo.GoInt);
                    _gotoNext = 3663710i32;
                } else if (__value__ == (3663710i32)) {
                    _gotoNext = 3663762i32;
                } else if (__value__ == (3663725i32)) {
                    _scan_3662392 = (_scan_3662392 - (_bump_3662378) : stdgo.GoInt);
                    _match_3662398 = (_match_3662398 - (_bump_3662378) : stdgo.GoInt);
                    _gotoNext = 3663283i32;
                } else if (__value__ == (3663762i32)) {
                    _examine_3662912 = (_examine_3662912 - (_bump_3662378) : stdgo.GoInt);
                    _gotoNext = 3663012i32;
                } else if (__value__ == (3663783i32)) {
                    _match_3662398 = (_last_3662372 - _bump_3662378 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 3664133i32;
                } else if (__value__ == (3664133i32)) {
                    if (_match_3662398 != (_beforefirst_3662359)) {
                        _gotoNext = 3664158i32;
                    } else {
                        _gotoNext = 3664744i32;
                    };
                } else if (__value__ == (3664158i32)) {
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._positive[(_match_3662398 : stdgo.GoInt)] == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3664188i32;
                    } else {
                        _gotoNext = 3664225i32;
                    };
                } else if (__value__ == (3664188i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._positive[(_match_3662398 : stdgo.GoInt)] = _bump_3662378;
                    _gotoNext = 3664225i32;
                } else if (__value__ == (3664225i32)) {
                    _match_3662398 = (_match_3662398 - (_bump_3662378) : stdgo.GoInt);
                    _gotoNext = 3664133i32;
                } else if (__value__ == (3664744i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII = (new stdgo.Slice<stdgo.GoInt>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _i_3664785 = (0 : stdgo.GoInt);
                    _gotoNext = 3664781i32;
                } else if (__value__ == (3664781i32)) {
                    if ((_i_3664785 < ((@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII.length) : Bool)) {
                        _gotoNext = 3664823i32;
                    } else {
                        _gotoNext = 3664872i32;
                    };
                } else if (__value__ == (3664823i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII[(_i_3664785 : stdgo.GoInt)] = (_last_3662372 - _beforefirst_3662359 : stdgo.GoInt);
                    _i_3664785++;
                    _gotoNext = 3664781i32;
                } else if (__value__ == (3664872i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._lowASCII = (127 : stdgo.GoInt32);
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._highASCII = (0 : stdgo.GoInt32);
                    _examine_3662912 = _last_3662372;
                    _gotoNext = 3664908i32;
                } else if (__value__ == (3664908i32)) {
                    if (_examine_3662912 != (_beforefirst_3662359)) {
                        _gotoNext = 3664968i32;
                    } else {
                        _gotoNext = 3665899i32;
                    };
                } else if (__value__ == (3664952i32)) {
                    _examine_3662912 = (_examine_3662912 - (_bump_3662378) : stdgo.GoInt);
                    _gotoNext = 3664908i32;
                } else if (__value__ == (3664968i32)) {
                    _ch_3662929 = (@:checkr _b_3661815 ?? throw "null pointer dereference")._pattern[(_examine_3662912 : stdgo.GoInt)];
                    _gotoNext = 3664999i32;
                } else if (__value__ == (3664999i32)) {
                    if ((_ch_3662929 < (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3665010i32;
                    } else if ((_ch_3662929 <= (65535 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3665223i32;
                    } else {
                        _gotoNext = 3665776i32;
                    };
                } else if (__value__ == (3665010i32)) {
                    if (((@:checkr _b_3661815 ?? throw "null pointer dereference")._lowASCII > _ch_3662929 : Bool)) {
                        _gotoNext = 3665047i32;
                    } else {
                        _gotoNext = 3665078i32;
                    };
                } else if (__value__ == (3665047i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._lowASCII = _ch_3662929;
                    _gotoNext = 3665078i32;
                } else if (__value__ == (3665078i32)) {
                    if (((@:checkr _b_3661815 ?? throw "null pointer dereference")._highASCII < _ch_3662929 : Bool)) {
                        _gotoNext = 3665098i32;
                    } else {
                        _gotoNext = 3665130i32;
                    };
                } else if (__value__ == (3665098i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._highASCII = _ch_3662929;
                    _gotoNext = 3665130i32;
                } else if (__value__ == (3665130i32)) {
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII[(_ch_3662929 : stdgo.GoInt)] == ((_last_3662372 - _beforefirst_3662359 : stdgo.GoInt))) {
                        _gotoNext = 3665173i32;
                    } else {
                        _gotoNext = 3664952i32;
                    };
                } else if (__value__ == (3665173i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII[(_ch_3662929 : stdgo.GoInt)] = (_last_3662372 - _examine_3662912 : stdgo.GoInt);
                    _gotoNext = 3664952i32;
                } else if (__value__ == (3665223i32)) {
                    {
                        final __tmp__0 = (_ch_3662929 >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                        final __tmp__1 = (_ch_3662929 & (255 : stdgo.GoInt32) : stdgo.GoInt32);
                        _i_3665245 = __tmp__0;
                        _j_3665248 = __tmp__1;
                    };
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeUnicode == null) {
                        _gotoNext = 3665300i32;
                    } else {
                        _gotoNext = 3665354i32;
                    };
                } else if (__value__ == (3665300i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeUnicode = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((256 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
                    _gotoNext = 3665354i32;
                } else if (__value__ == (3665354i32)) {
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeUnicode[(_i_3665245 : stdgo.GoInt)] == null) {
                        _gotoNext = 3665385i32;
                    } else {
                        _gotoNext = 3665675i32;
                    };
                } else if (__value__ == (3665385i32)) {
                    _newarray_3665391 = (new stdgo.Slice<stdgo.GoInt>((256 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _k_3665429 = (0 : stdgo.GoInt);
                    _gotoNext = 3665425i32;
                } else if (__value__ == (3665425i32)) {
                    if ((_k_3665429 < (_newarray_3665391.length) : Bool)) {
                        _gotoNext = 3665460i32;
                    } else {
                        _gotoNext = 3665511i32;
                    };
                } else if (__value__ == (3665460i32)) {
                    _newarray_3665391[(_k_3665429 : stdgo.GoInt)] = (_last_3662372 - _beforefirst_3662359 : stdgo.GoInt);
                    _k_3665429++;
                    _gotoNext = 3665425i32;
                } else if (__value__ == (3665511i32)) {
                    if (_i_3665245 == ((0 : stdgo.GoInt32))) {
                        _gotoNext = 3665521i32;
                    } else {
                        _gotoNext = 3665634i32;
                    };
                } else if (__value__ == (3665521i32)) {
                    _newarray_3665391.__copyTo__((@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII);
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeASCII = _newarray_3665391;
                    _gotoNext = 3665634i32;
                } else if (__value__ == (3665634i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeUnicode[(_i_3665245 : stdgo.GoInt)] = _newarray_3665391;
                    _gotoNext = 3665675i32;
                } else if (__value__ == (3665675i32)) {
                    if ((@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeUnicode[(_i_3665245 : stdgo.GoInt)][(_j_3665248 : stdgo.GoInt)] == ((_last_3662372 - _beforefirst_3662359 : stdgo.GoInt))) {
                        _gotoNext = 3665722i32;
                    } else {
                        _gotoNext = 3664952i32;
                    };
                } else if (__value__ == (3665722i32)) {
                    (@:checkr _b_3661815 ?? throw "null pointer dereference")._negativeUnicode[(_i_3665245 : stdgo.GoInt)][(_j_3665248 : stdgo.GoInt)] = (_last_3662372 - _examine_3662912 : stdgo.GoInt);
                    _gotoNext = 3664952i32;
                } else if (__value__ == (3665776i32)) {
                    return null;
                    _gotoNext = 3664952i32;
                } else if (__value__ == (3665899i32)) {
                    return _b_3661815;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
