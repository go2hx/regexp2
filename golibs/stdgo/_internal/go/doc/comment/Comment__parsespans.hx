package stdgo._internal.go.doc.comment;
function _parseSpans(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> {
        var _start_3640822:stdgo.GoInt = (0 : stdgo.GoInt);
        var _kind_3640806:stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
        var spansBreak = false;
        var _forceIndent_3640557:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3640549:stdgo.GoInt = (0 : stdgo.GoInt);
        var _watchdog_3640520:stdgo.GoInt = (0 : stdgo.GoInt);
        var _spans_3640122:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
        var _unindentedListOK_3641259:Bool = false;
        var _end_3640835:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _watchdog_3640520 = ((2 : stdgo.GoInt) * (_lines.length) : stdgo.GoInt);
                    _i_3640549 = (0 : stdgo.GoInt);
                    _forceIndent_3640557 = (0 : stdgo.GoInt);
                    _gotoNext = 3640574i32;
                } else if (__value__ == (3640574i32)) {
                    var __blank__ = 0i32;
                    spansBreak = false;
                    _gotoNext = 3640582i32;
                } else if (__value__ == (3640582i32)) {
                    if (!spansBreak) {
                        _gotoNext = 3640586i32;
                    } else {
                        _gotoNext = 3644079i32;
                    };
                } else if (__value__ == (3640586i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3640613i32;
                } else if (__value__ == (3640613i32)) {
                    if (((_i_3640549 < (_lines.length) : Bool) && (_lines[(_i_3640549 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3640650i32;
                    } else {
                        _gotoNext = 3640665i32;
                    };
                } else if (__value__ == (3640650i32)) {
                    _i_3640549++;
                    _gotoNext = 3640613i32;
                } else if (__value__ == (3640665i32)) {
                    if ((_i_3640549 >= (_lines.length) : Bool)) {
                        _gotoNext = 3640684i32;
                    } else {
                        _gotoNext = 3640701i32;
                    };
                } else if (__value__ == (3640684i32)) {
                    _gotoNext = 3644079i32;
                } else if (__value__ == (3640701i32)) {
                    {
                        _watchdog_3640520--;
                        if ((_watchdog_3640520 < (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3640729i32;
                        } else {
                            _gotoNext = 3640802i32;
                        };
                    };
                } else if (__value__ == (3640729i32)) {
                    throw stdgo.Go.toInterface(("go/doc/comment: internal error: not making progress" : stdgo.GoString));
                    _gotoNext = 3640802i32;
                } else if (__value__ == (3640802i32)) {
                    _start_3640822 = _i_3640549;
                    _end_3640835 = _i_3640549;
                    if (((_i_3640549 < _forceIndent_3640557 : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_3640549 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3640887i32;
                    } else {
                        _gotoNext = 3642278i32;
                    };
                } else if (__value__ == (3640887i32)) {
                    _unindentedListOK_3641259 = (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_3640549 : stdgo.GoInt)]?.__copy__()) && (_i_3640549 < _forceIndent_3640557 : Bool) : Bool);
                    _i_3640549++;
                    var __blank__ = 0i32;
                    _gotoNext = 3641325i32;
                } else if (__value__ == (3641325i32)) {
                    if (((_i_3640549 < (_lines.length) : Bool) && ((((_lines[(_i_3640549 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) || (_i_3640549 < _forceIndent_3640557 : Bool) : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_3640549 : stdgo.GoInt)]?.__copy__()) : Bool) || ((_unindentedListOK_3641259 && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_3640549 : stdgo.GoInt)]?.__copy__()) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 3641447i32;
                    } else {
                        _gotoNext = 3641559i32;
                    };
                } else if (__value__ == (3641447i32)) {
                    if (_lines[(_i_3640549 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3641471i32;
                    } else {
                        _gotoNext = 3641513i32;
                    };
                } else if (__value__ == (3641471i32)) {
                    _unindentedListOK_3641259 = false;
                    _gotoNext = 3641513i32;
                } else if (__value__ == (3641513i32)) {
                    _i_3640549++;
                    _gotoNext = 3641325i32;
                } else if (__value__ == (3641559i32)) {
                    _end_3640835 = _i_3640549;
                    var __blank__ = 0i32;
                    _gotoNext = 3641570i32;
                } else if (__value__ == (3641570i32)) {
                    if (((_end_3640835 > _start_3640822 : Bool) && (_lines[(_end_3640835 - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3641608i32;
                    } else {
                        _gotoNext = 3642107i32;
                    };
                } else if (__value__ == (3641608i32)) {
                    _end_3640835--;
                    _gotoNext = 3641570i32;
                } else if (__value__ == (3642107i32)) {
                    if (((_end_3640835 < (_lines.length) : Bool) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lines[(_end_3640835 : stdgo.GoInt)]?.__copy__(), ("}" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3642165i32;
                    } else {
                        _gotoNext = 3642186i32;
                    };
                } else if (__value__ == (3642165i32)) {
                    _end_3640835++;
                    _gotoNext = 3642186i32;
                } else if (__value__ == (3642186i32)) {
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_start_3640822 : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3642210i32;
                    } else {
                        _gotoNext = 3642242i32;
                    };
                } else if (__value__ == (3642210i32)) {
                    _kind_3640806 = (3 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3644018i32;
                } else if (__value__ == (3642242i32)) {
                    _gotoNext = 3642242i32;
                    _kind_3640806 = (1 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    var __blank__ = 0i32;
                    _gotoNext = 3644018i32;
                } else if (__value__ == (3642278i32)) {
                    _gotoNext = 3642278i32;
                    _i_3640549++;
                    var __blank__ = 0i32;
                    _gotoNext = 3642345i32;
                } else if (__value__ == (3642345i32)) {
                    if ((((_i_3640549 < (_lines.length) : Bool) && _lines[(_i_3640549 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_3640549 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3642405i32;
                    } else {
                        _gotoNext = 3642423i32;
                    };
                } else if (__value__ == (3642405i32)) {
                    _i_3640549++;
                    _gotoNext = 3642345i32;
                } else if (__value__ == (3642423i32)) {
                    _end_3640835 = _i_3640549;
                    if ((((_i_3640549 < (_lines.length) : Bool) && _lines[(_i_3640549 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_3640549 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3642968i32;
                    } else {
                        _gotoNext = 3643804i32;
                    };
                } else if (__value__ == (3642968i32)) {
                    _gotoNext = 3642974i32;
                } else if (__value__ == (3642974i32)) {
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_3640549 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3642987i32;
                    } else if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_3640549 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("{" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_3640549 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3643313i32;
                    } else {
                        _gotoNext = 3643670i32;
                    };
                } else if (__value__ == (3642987i32)) {
                    _forceIndent_3640557 = _end_3640835;
                    _end_3640835--;
                    var __blank__ = 0i32;
                    _gotoNext = 3643247i32;
                } else if (__value__ == (3643247i32)) {
                    if (((_end_3640835 > _start_3640822 : Bool) && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_end_3640835 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3643287i32;
                    } else {
                        _gotoNext = 3643670i32;
                    };
                } else if (__value__ == (3643287i32)) {
                    _end_3640835--;
                    _gotoNext = 3643247i32;
                } else if (__value__ == (3643313i32)) {
                    _forceIndent_3640557 = _end_3640835;
                    _end_3640835--;
                    _gotoNext = 3643670i32;
                } else if (__value__ == (3643670i32)) {
                    if (((_start_3640822 == _end_3640835) && (_forceIndent_3640557 > _start_3640822 : Bool) : Bool)) {
                        _gotoNext = 3643709i32;
                    } else {
                        _gotoNext = 3643804i32;
                    };
                } else if (__value__ == (3643709i32)) {
                    _i_3640549 = _start_3640822;
                    _gotoNext = 3640582i32;
                } else if (__value__ == (3643804i32)) {
                    if ((((_end_3640835 - _start_3640822 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isheading._isHeading(_lines[(_start_3640822 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3643849i32;
                    } else if ((((_end_3640835 - _start_3640822 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isoldheading._isOldHeading(_lines[(_start_3640822 : stdgo.GoInt)]?.__copy__(), _lines, _start_3640822) : Bool)) {
                        _gotoNext = 3643946i32;
                    } else {
                        _gotoNext = 3643984i32;
                    };
                } else if (__value__ == (3643849i32)) {
                    _kind_3640806 = (2 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3644018i32;
                } else if (__value__ == (3643946i32)) {
                    _kind_3640806 = (4 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3644018i32;
                } else if (__value__ == (3643984i32)) {
                    _gotoNext = 3643984i32;
                    _kind_3640806 = (5 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    var __blank__ = 0i32;
                    _gotoNext = 3644018i32;
                } else if (__value__ == (3644018i32)) {
                    _spans_3640122 = (_spans_3640122.__append__((new stdgo._internal.go.doc.comment.Comment_t_span.T_span(_start_3640822, _end_3640835, _kind_3640806) : stdgo._internal.go.doc.comment.Comment_t_span.T_span)));
                    _i_3640549 = _end_3640835;
                    _gotoNext = 3640582i32;
                } else if (__value__ == (3644079i32)) {
                    return _spans_3640122;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
