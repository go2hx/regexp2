package stdgo._internal.go.build;
function _parseFileHeader(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } {
        var _trimmed = (null : stdgo.Slice<stdgo.GoUInt8>), _goBuild = (null : stdgo.Slice<stdgo.GoUInt8>), _sawBinaryOnly = false, _err = (null : stdgo.Error);
        var _p_4427373:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _line_4427549:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var linesBreak = false;
        var _inSlashStar_4427480:Bool = false;
        var _ended_4427387:Bool = false;
        var _end_4427363:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4428656:stdgo.GoInt = (0 : stdgo.GoInt);
        var commentsBreak = false;
        var _i_4427564:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _end_4427363 = (0 : stdgo.GoInt);
                    _p_4427373 = _content;
                    _ended_4427387 = false;
                    _inSlashStar_4427480 = false;
                    _gotoNext = 4427522i32;
                } else if (__value__ == (4427522i32)) {
                    var __blank__ = 0i32;
                    linesBreak = false;
                    _gotoNext = 4427530i32;
                } else if (__value__ == (4427530i32)) {
                    if (!linesBreak && (((_p_4427373.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4427545i32;
                    } else {
                        _gotoNext = 4429092i32;
                    };
                } else if (__value__ == (4427545i32)) {
                    _line_4427549 = _p_4427373;
                    {
                        _i_4427564 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line_4427549, (10 : stdgo.GoUInt8));
                        if ((_i_4427564 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4427605i32;
                        } else {
                            _gotoNext = 4427647i32;
                        };
                    };
                } else if (__value__ == (4427605i32)) {
                    {
                        final __tmp__0 = (_line_4427549.__slice__(0, _i_4427564) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = (_p_4427373.__slice__((_i_4427564 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _line_4427549 = __tmp__0;
                        _p_4427373 = __tmp__1;
                    };
                    _gotoNext = 4427673i32;
                } else if (__value__ == (4427647i32)) {
                    _gotoNext = 4427647i32;
                    _p_4427373 = (_p_4427373.__slice__((_p_4427373.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    var __blank__ = 0i32;
                    _gotoNext = 4427673i32;
                } else if (__value__ == (4427673i32)) {
                    _line_4427549 = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line_4427549);
                    if (((_line_4427549.length == (0 : stdgo.GoInt)) && !_ended_4427387 : Bool)) {
                        _gotoNext = 4427732i32;
                    } else {
                        _gotoNext = 4428283i32;
                    };
                } else if (__value__ == (4427732i32)) {
                    _end_4427363 = ((_content.length) - (_p_4427373.length) : stdgo.GoInt);
                    _gotoNext = 4427530i32;
                } else if (__value__ == (4428283i32)) {
                    if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_4427549, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        _gotoNext = 4428321i32;
                    } else {
                        _gotoNext = 4428366i32;
                    };
                } else if (__value__ == (4428321i32)) {
                    _ended_4427387 = true;
                    _gotoNext = 4428366i32;
                } else if (__value__ == (4428366i32)) {
                    if ((!_inSlashStar_4427480 && stdgo._internal.go.build.Build__isgobuildcomment._isGoBuildComment(_line_4427549) : Bool)) {
                        _gotoNext = 4428408i32;
                    } else {
                        _gotoNext = 4428509i32;
                    };
                } else if (__value__ == (4428408i32)) {
                    if (_goBuild != null) {
                        _gotoNext = 4428431i32;
                    } else {
                        _gotoNext = 4428488i32;
                    };
                } else if (__value__ == (4428431i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : false, _3 : stdgo._internal.go.build.Build__errmultiplegobuild._errMultipleGoBuild };
                        _trimmed = __tmp__._0;
                        _goBuild = __tmp__._1;
                        _sawBinaryOnly = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _gotoNext = 4428488i32;
                } else if (__value__ == (4428488i32)) {
                    _goBuild = _line_4427549;
                    _gotoNext = 4428509i32;
                } else if (__value__ == (4428509i32)) {
                    if ((!_inSlashStar_4427480 && stdgo._internal.bytes.Bytes_equal.equal(_line_4427549, stdgo._internal.go.build.Build__binaryonlycomment._binaryOnlyComment) : Bool)) {
                        _gotoNext = 4428565i32;
                    } else {
                        _gotoNext = 4428597i32;
                    };
                } else if (__value__ == (4428565i32)) {
                    _sawBinaryOnly = true;
                    _gotoNext = 4428597i32;
                } else if (__value__ == (4428597i32)) {
                    _gotoNext = 4428597i32;
                    var __blank__ = 0i32;
                    commentsBreak = false;
                    _gotoNext = 4428609i32;
                } else if (__value__ == (4428609i32)) {
                    if (!commentsBreak && (((_line_4427549.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4428627i32;
                    } else {
                        _gotoNext = 4427530i32;
                    };
                } else if (__value__ == (4428627i32)) {
                    if (_inSlashStar_4427480) {
                        _gotoNext = 4428647i32;
                    } else {
                        _gotoNext = 4428834i32;
                    };
                } else if (__value__ == (4428647i32)) {
                    {
                        _i_4428656 = stdgo._internal.bytes.Bytes_index.index(_line_4427549, stdgo._internal.go.build.Build__starslash._starSlash);
                        if ((_i_4428656 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4428698i32;
                        } else {
                            _gotoNext = 4428811i32;
                        };
                    };
                } else if (__value__ == (4428698i32)) {
                    _inSlashStar_4427480 = false;
                    _line_4427549 = stdgo._internal.bytes.Bytes_trimspace.trimSpace((_line_4427549.__slice__((_i_4428656 + (stdgo._internal.go.build.Build__starslash._starSlash.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 4428609i32;
                } else if (__value__ == (4428811i32)) {
                    _gotoNext = 4427530i32;
                } else if (__value__ == (4428834i32)) {
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_4427549, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        _gotoNext = 4428871i32;
                    } else {
                        _gotoNext = 4428900i32;
                    };
                } else if (__value__ == (4428871i32)) {
                    _gotoNext = 4427530i32;
                } else if (__value__ == (4428900i32)) {
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_4427549, stdgo._internal.go.build.Build__slashstar._slashStar)) {
                        _gotoNext = 4428936i32;
                    } else {
                        _gotoNext = 4429071i32;
                    };
                } else if (__value__ == (4428936i32)) {
                    _inSlashStar_4427480 = true;
                    _line_4427549 = stdgo._internal.bytes.Bytes_trimspace.trimSpace((_line_4427549.__slice__((stdgo._internal.go.build.Build__slashstar._slashStar.length)) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 4428609i32;
                } else if (__value__ == (4429071i32)) {
                    linesBreak = true;
                    _gotoNext = 4427530i32;
                } else if (__value__ == (4429092i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (_content.__slice__(0, _end_4427363) : stdgo.Slice<stdgo.GoUInt8>), _1 : _goBuild, _2 : _sawBinaryOnly, _3 : (null : stdgo.Error) };
                        _trimmed = __tmp__._0;
                        _goBuild = __tmp__._1;
                        _sawBinaryOnly = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
