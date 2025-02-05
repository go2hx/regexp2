package stdgo._internal.go.build;
function _parseGoEmbed(_args:stdgo.GoString, _pos:stdgo._internal.go.token.Token_position.Position):{ var _0 : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>; var _1 : stdgo.Error; } {
        var _keys_4376190 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _ok_4376331:Bool = false;
        var _j_4376194:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4376202 = @:invalid_type null;
        var _i_4376172:stdgo.GoInt = (0 : stdgo.GoInt);
        var _path_4376101:stdgo.GoString = ("" : stdgo.GoString);
        var _list_4376034:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
        var _err_4376647:stdgo.Error = (null : stdgo.Error);
        var _q_4376644:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4376524:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_4376190 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _pathPos_4376115:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
        var _trimSpace_4375914:() -> Void = null;
        var _trimBytes_4375798:stdgo.GoInt -> Void = null;
        var _r_4376989:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var switchBreak = false;
        var _c_4376197:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _trimBytes_4375798 = function(_n:stdgo.GoInt):Void {
                        _pos.offset = (_pos.offset + (_n) : stdgo.GoInt);
                        _pos.column = (_pos.column + (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString((_args.__slice__(0, _n) : stdgo.GoString)?.__copy__())) : stdgo.GoInt);
                        _args = (_args.__slice__(_n) : stdgo.GoString)?.__copy__();
                    };
                    _trimSpace_4375914 = function():Void {
                        var _trim = (stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_args?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__() : stdgo.GoString);
                        _trimBytes_4375798(((_args.length) - (_trim.length) : stdgo.GoInt));
                    };
                    _trimSpace_4375914();
                    _gotoNext = 4376052i32;
                } else if (__value__ == (4376052i32)) {
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4376093i32;
                    } else {
                        _gotoNext = 4377192i32;
                    };
                } else if (__value__ == (4376093i32)) {
                    _pathPos_4376115 = _pos?.__copy__();
                    _gotoNext = 4376131i32;
                } else if (__value__ == (4376131i32)) {
                    switchBreak = false;
                    _gotoNext = 4376141i32;
                } else if (__value__ == (4376141i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _args[(0 : stdgo.GoInt)];
                            if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4376314i32;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4376511i32;
                            } else {
                                _gotoNext = 4376160i32;
                            };
                        };
                    } else {
                        _gotoNext = 4376970i32;
                    };
                } else if (__value__ == (4376160i32)) {
                    _i_4376172 = (_args.length);
                    _keys_4376190 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_4376190 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _args) {
                        _keys_4376190 = (_keys_4376190.__append__(_key));
                        _values_4376190 = (_values_4376190.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_4376190.length)) {
                        _gotoNext = 4376273i32;
                    } else {
                        _gotoNext = 4376279i32;
                    };
                } else if (__value__ == (4376202i32)) {
                    _i_4376202++;
                    _gotoNext = 4376274i32;
                } else if (__value__ == (4376213i32)) {
                    _c_4376197 = _values_4376190[@:invalid_index_invalid_type _i_4376202];
                    _j_4376194 = _keys_4376190[@:invalid_index_invalid_type _i_4376202];
                    if (stdgo._internal.unicode.Unicode_isspace.isSpace(_c_4376197)) {
                        _gotoNext = 4376241i32;
                    } else {
                        _gotoNext = 4376202i32;
                    };
                } else if (__value__ == (4376241i32)) {
                    _i_4376172 = _j_4376194;
                    _gotoNext = 4376279i32;
                } else if (__value__ == (4376273i32)) {
                    _i_4376202 = 0i32;
                    _gotoNext = 4376274i32;
                } else if (__value__ == (4376274i32)) {
                    if (_i_4376202 < (_keys_4376190.length)) {
                        _gotoNext = 4376213i32;
                    } else {
                        _gotoNext = 4376279i32;
                    };
                } else if (__value__ == (4376279i32)) {
                    _path_4376101 = (_args.__slice__(0, _i_4376172) : stdgo.GoString)?.__copy__();
                    _trimBytes_4375798(_i_4376172);
                    _gotoNext = 4376970i32;
                } else if (__value__ == (4376314i32)) {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_args.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("`" : stdgo.GoString));
                        _path_4376101 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_4376331 = @:tmpset0 __tmp__._2;
                    };
                    if (!_ok_4376331) {
                        _gotoNext = 4376393i32;
                    } else {
                        _gotoNext = 4376479i32;
                    };
                } else if (__value__ == (4376393i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4376479i32;
                } else if (__value__ == (4376479i32)) {
                    _trimBytes_4375798((((1 : stdgo.GoInt) + (_path_4376101.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4376970i32;
                } else if (__value__ == (4376511i32)) {
                    _i_4376524 = (1 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 4376534i32;
                } else if (__value__ == (4376534i32)) {
                    if ((_i_4376524 < (_args.length) : Bool)) {
                        _gotoNext = 4376559i32;
                    } else {
                        _gotoNext = 4376862i32;
                    };
                } else if (__value__ == (4376555i32)) {
                    _i_4376524++;
                    _gotoNext = 4376534i32;
                } else if (__value__ == (4376559i32)) {
                    if (_args[(_i_4376524 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4376584i32;
                    } else {
                        _gotoNext = 4376619i32;
                    };
                } else if (__value__ == (4376584i32)) {
                    _i_4376524++;
                    _i_4376524++;
                    _gotoNext = 4376534i32;
                } else if (__value__ == (4376619i32)) {
                    if (_args[(_i_4376524 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4376637i32;
                    } else {
                        _gotoNext = 4376555i32;
                    };
                } else if (__value__ == (4376637i32)) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((_args.__slice__(0, (_i_4376524 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _q_4376644 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_4376647 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4376647 != null) {
                        _gotoNext = 4376701i32;
                    } else {
                        _gotoNext = 4376799i32;
                    };
                } else if (__value__ == (4376701i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface((_args.__slice__(0, (_i_4376524 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString))) };
                    _gotoNext = 4376799i32;
                } else if (__value__ == (4376799i32)) {
                    _path_4376101 = _q_4376644?.__copy__();
                    _trimBytes_4375798((_i_4376524 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    switchBreak = true;
                    _gotoNext = 4376141i32;
                } else if (__value__ == (4376862i32)) {
                    if ((_i_4376524 >= (_args.length) : Bool)) {
                        _gotoNext = 4376880i32;
                    } else {
                        _gotoNext = 4376970i32;
                    };
                } else if (__value__ == (4376880i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4376970i32;
                } else if (__value__ == (4376970i32)) {
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4376984i32;
                    } else {
                        _gotoNext = 4377142i32;
                    };
                } else if (__value__ == (4376984i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_args?.__copy__());
                        _r_4376989 = @:tmpset0 __tmp__._0;
                    };
                    if (!stdgo._internal.unicode.Unicode_isspace.isSpace(_r_4376989)) {
                        _gotoNext = 4377053i32;
                    } else {
                        _gotoNext = 4377142i32;
                    };
                } else if (__value__ == (4377053i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4377142i32;
                } else if (__value__ == (4377142i32)) {
                    _list_4376034 = (_list_4376034.__append__((new stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed(_path_4376101?.__copy__(), _pathPos_4376115?.__copy__()) : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed)));
                    _trimSpace_4375914();
                    _gotoNext = 4376052i32;
                } else if (__value__ == (4377192i32)) {
                    return { _0 : _list_4376034, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
