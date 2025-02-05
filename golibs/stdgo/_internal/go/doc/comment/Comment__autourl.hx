package stdgo._internal.go.doc.comment;
function _autoURL(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _url = ("" : stdgo.GoString), _ok = false;
        var pathBreak = false;
        var _stk_3657958:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _end_3657504:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3656994:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3657001i32;
                } else if (__value__ == (3657001i32)) {
                    if (((_s.length) < (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3657011i32;
                    } else if (_s[(3 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657048i32;
                    } else if (_s[(4 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657075i32;
                    } else if (_s[(5 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657102i32;
                    } else if (_s[(6 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3657129i32;
                    } else {
                        _gotoNext = 3657156i32;
                    };
                } else if (__value__ == (3657011i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3657188i32;
                } else if (__value__ == (3657048i32)) {
                    _i_3656994 = (3 : stdgo.GoInt);
                    _gotoNext = 3657188i32;
                } else if (__value__ == (3657075i32)) {
                    _i_3656994 = (4 : stdgo.GoInt);
                    _gotoNext = 3657188i32;
                } else if (__value__ == (3657102i32)) {
                    _i_3656994 = (5 : stdgo.GoInt);
                    _gotoNext = 3657188i32;
                } else if (__value__ == (3657129i32)) {
                    _i_3656994 = (6 : stdgo.GoInt);
                    _gotoNext = 3657188i32;
                } else if (__value__ == (3657156i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3657188i32;
                } else if (__value__ == (3657188i32)) {
                    if ((((_i_3656994 + (3 : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool) || ((_s.__slice__(_i_3656994, (_i_3656994 + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("://" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3657225i32;
                    } else {
                        _gotoNext = 3657275i32;
                    };
                } else if (__value__ == (3657225i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3657275i32;
                } else if (__value__ == (3657275i32)) {
                    if (!stdgo._internal.go.doc.comment.Comment__isscheme._isScheme((_s.__slice__(0, _i_3656994) : stdgo.GoString)?.__copy__())) {
                        _gotoNext = 3657295i32;
                    } else {
                        _gotoNext = 3657417i32;
                    };
                } else if (__value__ == (3657295i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3657417i32;
                } else if (__value__ == (3657417i32)) {
                    _i_3656994 = (_i_3656994 + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    if ((((_i_3656994 >= (_s.length) : Bool) || !stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_3656994 : stdgo.GoInt)]) : Bool) || stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_3656994 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3657474i32;
                    } else {
                        _gotoNext = 3657499i32;
                    };
                } else if (__value__ == (3657474i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3657499i32;
                } else if (__value__ == (3657499i32)) {
                    _i_3656994++;
                    _end_3657504 = _i_3656994;
                    var __blank__ = 0i32;
                    _gotoNext = 3657514i32;
                } else if (__value__ == (3657514i32)) {
                    if (((_i_3656994 < (_s.length) : Bool) && stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_3656994 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3657545i32;
                    } else {
                        _gotoNext = 3657598i32;
                    };
                } else if (__value__ == (3657545i32)) {
                    if (!stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_3656994 : stdgo.GoInt)])) {
                        _gotoNext = 3657567i32;
                    } else {
                        _gotoNext = 3657590i32;
                    };
                } else if (__value__ == (3657567i32)) {
                    _end_3657504 = (_i_3656994 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3657590i32;
                } else if (__value__ == (3657590i32)) {
                    _i_3656994++;
                    _gotoNext = 3657514i32;
                } else if (__value__ == (3657598i32)) {
                    _i_3656994 = _end_3657504;
                    _stk_3657958 = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _end_3657504 = _i_3656994;
                    _gotoNext = 3657983i32;
                } else if (__value__ == (3657983i32)) {
                    var __blank__ = 0i32;
                    pathBreak = false;
                    _gotoNext = 3657990i32;
                } else if (__value__ == (3657990i32)) {
                    if (!pathBreak && ((_i_3656994 < (_s.length) : Bool))) {
                        _gotoNext = 3658012i32;
                    } else {
                        _gotoNext = 3658381i32;
                    };
                } else if (__value__ == (3658008i32)) {
                    _i_3656994++;
                    _gotoNext = 3657990i32;
                } else if (__value__ == (3658012i32)) {
                    if (stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_3656994 : stdgo.GoInt)])) {
                        _gotoNext = 3658033i32;
                    } else {
                        _gotoNext = 3658053i32;
                    };
                } else if (__value__ == (3658033i32)) {
                    _i_3656994++;
                    _gotoNext = 3657990i32;
                } else if (__value__ == (3658053i32)) {
                    if (!stdgo._internal.go.doc.comment.Comment__ispath._isPath(_s[(_i_3656994 : stdgo.GoInt)])) {
                        _gotoNext = 3658070i32;
                    } else {
                        _gotoNext = 3658087i32;
                    };
                } else if (__value__ == (3658070i32)) {
                    _gotoNext = 3658381i32;
                } else if (__value__ == (3658087i32)) {
                    _gotoNext = 3658087i32;
                    {
                        final __value__ = _s[(_i_3656994 : stdgo.GoInt)];
                        if (__value__ == ((40 : stdgo.GoUInt8))) {
                            _gotoNext = 3658103i32;
                        } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                            _gotoNext = 3658141i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3658179i32;
                        } else if (__value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3658217i32;
                        } else {
                            _gotoNext = 3658338i32;
                        };
                    };
                } else if (__value__ == (3658103i32)) {
                    _stk_3657958 = (_stk_3657958.__append__((41 : stdgo.GoUInt8)));
                    _gotoNext = 3658338i32;
                } else if (__value__ == (3658141i32)) {
                    _stk_3657958 = (_stk_3657958.__append__((125 : stdgo.GoUInt8)));
                    _gotoNext = 3658338i32;
                } else if (__value__ == (3658179i32)) {
                    _stk_3657958 = (_stk_3657958.__append__((93 : stdgo.GoUInt8)));
                    _gotoNext = 3658338i32;
                } else if (__value__ == (3658217i32)) {
                    if (((_stk_3657958.length == (0 : stdgo.GoInt)) || (_stk_3657958[((_stk_3657958.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _s[(_i_3656994 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3658284i32;
                    } else {
                        _gotoNext = 3658309i32;
                    };
                } else if (__value__ == (3658284i32)) {
                    pathBreak = true;
                    _gotoNext = 3657990i32;
                } else if (__value__ == (3658309i32)) {
                    _stk_3657958 = (_stk_3657958.__slice__(0, ((_stk_3657958.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3658338i32;
                } else if (__value__ == (3658338i32)) {
                    if ((_stk_3657958.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3658355i32;
                    } else {
                        _gotoNext = 3658008i32;
                    };
                } else if (__value__ == (3658355i32)) {
                    _end_3657504 = (_i_3656994 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3658008i32;
                } else if (__value__ == (3658381i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__(0, _end_3657504) : stdgo.GoString)?.__copy__(), _1 : true };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
