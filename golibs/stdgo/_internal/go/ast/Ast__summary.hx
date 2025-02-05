package stdgo._internal.go.ast;
function _summary(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo.GoString {
        var _buf_4764040:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _maxLen_4764023;
        var _i_4764576:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4764296_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _group_4764098:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _i_4764107_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _bytes_4764550:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _comment_4764285:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        var _b_4764579:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _maxLen_4764023 = (40i64 : stdgo.GoUInt64);
                    _gotoNext = 4764084i32;
                } else if (__value__ == (4764084i32)) {
                    if ((0i32 : stdgo.GoInt) < (_list.length)) {
                        _gotoNext = 4764400i32;
                    } else {
                        _gotoNext = 4764430i32;
                    };
                } else if (__value__ == (4764095i32)) {
                    _i_4764107_0++;
                    _gotoNext = 4764401i32;
                } else if (__value__ == (4764118i32)) {
                    _group_4764098 = _list[(_i_4764107_0 : stdgo.GoInt)];
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _group_4764098 ?? throw "null pointer dereference").list.length)) {
                        _gotoNext = 4764397i32;
                    } else {
                        _gotoNext = 4764095i32;
                    };
                } else if (__value__ == (4764313i32)) {
                    _comment_4764285 = (@:checkr _group_4764098 ?? throw "null pointer dereference").list[(_i_4764296_0 : stdgo.GoInt)];
                    if ((@:check2 _buf_4764040.len() >= (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4764341i32;
                    } else {
                        _gotoNext = 4764366i32;
                    };
                } else if (__value__ == (4764341i32)) {
                    stdgo._internal.go.ast.Ast__loopbreak._loopBreak = true;
                    _gotoNext = 4764401i32;
                } else if (__value__ == (4764366i32)) {
                    @:check2 _buf_4764040.writeString((@:checkr _comment_4764285 ?? throw "null pointer dereference").text?.__copy__());
                    _i_4764296_0++;
                    _gotoNext = 4764398i32;
                } else if (__value__ == (4764397i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _group_4764098 ?? throw "null pointer dereference").list[(0i32 : stdgo.GoInt)];
                        _i_4764296_0 = __tmp__0;
                        _comment_4764285 = __tmp__1;
                    };
                    _gotoNext = 4764398i32;
                } else if (__value__ == (4764398i32)) {
                    if (_i_4764296_0 < ((@:checkr _group_4764098 ?? throw "null pointer dereference").list.length)) {
                        _gotoNext = 4764313i32;
                    } else {
                        _gotoNext = 4764095i32;
                    };
                } else if (__value__ == (4764400i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _list[(0i32 : stdgo.GoInt)];
                        _i_4764107_0 = __tmp__0;
                        _group_4764098 = __tmp__1;
                    };
                    _gotoNext = 4764401i32;
                } else if (__value__ == (4764401i32)) {
                    if (_i_4764107_0 < (_list.length)) {
                        _gotoNext = 4764118i32;
                    } else {
                        _gotoNext = 4764430i32;
                    };
                } else if (__value__ == (4764430i32)) {
                    if ((@:check2 _buf_4764040.len() > (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4764452i32;
                    } else {
                        _gotoNext = 4764550i32;
                    };
                } else if (__value__ == (4764452i32)) {
                    @:check2 _buf_4764040.truncate((37 : stdgo.GoInt));
                    @:check2 _buf_4764040.writeString(("..." : stdgo.GoString));
                    _gotoNext = 4764550i32;
                } else if (__value__ == (4764550i32)) {
                    _bytes_4764550 = @:check2 _buf_4764040.bytes();
                    if ((0i32 : stdgo.GoInt) < (_bytes_4764550.length)) {
                        _gotoNext = 4764658i32;
                    } else {
                        _gotoNext = 4764663i32;
                    };
                } else if (__value__ == (4764576i32)) {
                    _i_4764576++;
                    _gotoNext = 4764659i32;
                } else if (__value__ == (4764596i32)) {
                    _b_4764579 = _bytes_4764550[(_i_4764576 : stdgo.GoInt)];
                    _gotoNext = 4764600i32;
                } else if (__value__ == (4764600i32)) {
                    {
                        final __value__ = _b_4764579;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {
                            _gotoNext = 4764613i32;
                        } else {
                            _gotoNext = 4764576i32;
                        };
                    };
                } else if (__value__ == (4764613i32)) {
                    _bytes_4764550[(_i_4764576 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                    _gotoNext = 4764576i32;
                } else if (__value__ == (4764658i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _bytes_4764550[(0i32 : stdgo.GoInt)];
                        _i_4764576 = __tmp__0;
                        _b_4764579 = __tmp__1;
                    };
                    _gotoNext = 4764659i32;
                } else if (__value__ == (4764659i32)) {
                    if (_i_4764576 < (_bytes_4764550.length)) {
                        _gotoNext = 4764596i32;
                    } else {
                        _gotoNext = 4764663i32;
                    };
                } else if (__value__ == (4764663i32)) {
                    return (_bytes_4764550 : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
