package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.T_importReader_asInterface) class T_importReader_static_extension {
    @:keep
    @:tdfield
    static public function _readImport( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (@:check2r _r._peekByte(true) : stdgo.GoUInt8);
        if (_c == ((46 : stdgo.GoUInt8))) {
            (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        } else if (stdgo._internal.go.build.Build__isident._isIdent(_c)) {
            @:check2r _r._readIdent();
        };
        @:check2r _r._readString();
    }
    @:keep
    @:tdfield
    static public function _readString( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = @:check2r _r._nextByte(true);
                    if (__value__ == ((96 : stdgo.GoUInt8))) {
                        while ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                            if (@:check2r _r._nextByte(false) == ((96 : stdgo.GoUInt8))) {
                                break;
                            };
                            if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                                @:check2r _r._syntaxError();
                            };
                        };
                        break;
                    } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                        while ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                            var _c = (@:check2r _r._nextByte(false) : stdgo.GoUInt8);
                            if (_c == ((34 : stdgo.GoUInt8))) {
                                break;
                            };
                            if (((@:checkr _r ?? throw "null pointer dereference")._eof || (_c == (10 : stdgo.GoUInt8)) : Bool)) {
                                @:check2r _r._syntaxError();
                            };
                            if (_c == ((92 : stdgo.GoUInt8))) {
                                @:check2r _r._nextByte(false);
                            };
                        };
                        break;
                    } else {
                        @:check2r _r._syntaxError();
                    };
                };
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readIdent( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (@:check2r _r._peekByte(true) : stdgo.GoUInt8);
        if (!stdgo._internal.go.build.Build__isident._isIdent(_c)) {
            @:check2r _r._syntaxError();
            return;
        };
        while (stdgo._internal.go.build.Build__isident._isIdent(@:check2r _r._peekByte(false))) {
            (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _readKeyword( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _kw:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        @:check2r _r._peekByte(true);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_kw.length) : Bool)) {
                if (@:check2r _r._nextByte(false) != (_kw[(_i : stdgo.GoInt)])) {
                    @:check2r _r._syntaxError();
                    return;
                };
                _i++;
            };
        };
        if (stdgo._internal.go.build.Build__isident._isIdent(@:check2r _r._peekByte(false))) {
            @:check2r _r._syntaxError();
        };
    }
    @:keep
    @:tdfield
    static public function _findEmbed( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _first:Bool):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var reswitchBreak = false;
        var skipSlashSlashBreak = false;
        var _i_4368845:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c1_4368587:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_4367381:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _startLine_4367356:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startLine_4367356 = !_first;
                    var __blank__ = 0i32;
                    _gotoNext = 4367389i32;
                } else if (__value__ == (4367389i32)) {
                    if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                        _gotoNext = 4367416i32;
                    } else {
                        _gotoNext = 4369205i32;
                    };
                } else if (__value__ == (4367416i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4367443i32;
                } else if (__value__ == (4367443i32)) {
                    reswitchBreak = false;
                    _gotoNext = 4367455i32;
                } else if (__value__ == (4367455i32)) {
                    if (!reswitchBreak) {
                        {
                            final __value__ = _c_4367381;
                            if (__value__ == ((10 : stdgo.GoUInt8))) {
                                _gotoNext = 4367501i32;
                            } else if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))) {
                                _gotoNext = 4367535i32;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4367582i32;
                            } else if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4367931i32;
                            } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                                _gotoNext = 4368130i32;
                            } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                                _gotoNext = 4368464i32;
                            } else {
                                _gotoNext = 4367468i32;
                            };
                        };
                    } else {
                        _gotoNext = 4367389i32;
                    };
                } else if (__value__ == (4367468i32)) {
                    _startLine_4367356 = false;
                    _gotoNext = 4367389i32;
                } else if (__value__ == (4367501i32)) {
                    _startLine_4367356 = true;
                    _gotoNext = 4367389i32;
                } else if (__value__ == (4367535i32)) {
                    _gotoNext = 4367389i32;
                } else if (__value__ == (4367582i32)) {
                    _startLine_4367356 = false;
                    var __blank__ = 0i32;
                    _gotoNext = 4367616i32;
                } else if (__value__ == (4367616i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4367633i32;
                    } else {
                        _gotoNext = 4367914i32;
                    };
                } else if (__value__ == (4367633i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4367648i32;
                    } else {
                        _gotoNext = 4367681i32;
                    };
                } else if (__value__ == (4367648i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4367681i32;
                } else if (__value__ == (4367681i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    if (_c_4367381 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4367720i32;
                    } else {
                        _gotoNext = 4367840i32;
                    };
                } else if (__value__ == (4367720i32)) {
                    @:check2r _r._readByteNoBuf();
                    if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 4367766i32;
                    } else {
                        _gotoNext = 4367821i32;
                    };
                } else if (__value__ == (4367766i32)) {
                    @:check2r _r._syntaxError();
                    return false;
                    _gotoNext = 4367821i32;
                } else if (__value__ == (4367821i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4367616i32;
                } else if (__value__ == (4367840i32)) {
                    if (_c_4367381 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4367852i32;
                    } else {
                        _gotoNext = 4367616i32;
                    };
                } else if (__value__ == (4367852i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4367443i32;
                } else if (__value__ == (4367914i32)) {
                    _gotoNext = 4367443i32;
                } else if (__value__ == (4367931i32)) {
                    _startLine_4367356 = false;
                    var __blank__ = 0i32;
                    _gotoNext = 4367965i32;
                } else if (__value__ == (4367965i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4367982i32;
                    } else {
                        _gotoNext = 4367389i32;
                    };
                } else if (__value__ == (4367982i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4367997i32;
                    } else {
                        _gotoNext = 4368030i32;
                    };
                } else if (__value__ == (4367997i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4368030i32;
                } else if (__value__ == (4368030i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    if (_c_4367381 == ((96 : stdgo.GoUInt8))) {
                        _gotoNext = 4368068i32;
                    } else {
                        _gotoNext = 4367965i32;
                    };
                } else if (__value__ == (4368068i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4367443i32;
                } else if (__value__ == (4368130i32)) {
                    _startLine_4367356 = false;
                    var __blank__ = 0i32;
                    _gotoNext = 4368165i32;
                } else if (__value__ == (4368165i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4368182i32;
                    } else {
                        _gotoNext = 4367389i32;
                    };
                } else if (__value__ == (4368182i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4368197i32;
                    } else {
                        _gotoNext = 4368230i32;
                    };
                } else if (__value__ == (4368197i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4368230i32;
                } else if (__value__ == (4368230i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    if (_c_4367381 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4368269i32;
                    } else {
                        _gotoNext = 4368389i32;
                    };
                } else if (__value__ == (4368269i32)) {
                    @:check2r _r._readByteNoBuf();
                    if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 4368315i32;
                    } else {
                        _gotoNext = 4368370i32;
                    };
                } else if (__value__ == (4368315i32)) {
                    @:check2r _r._syntaxError();
                    return false;
                    _gotoNext = 4368370i32;
                } else if (__value__ == (4368370i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4368165i32;
                } else if (__value__ == (4368389i32)) {
                    if (_c_4367381 == ((39 : stdgo.GoUInt8))) {
                        _gotoNext = 4368402i32;
                    } else {
                        _gotoNext = 4368165i32;
                    };
                } else if (__value__ == (4368402i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4367443i32;
                } else if (__value__ == (4368464i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4368502i32;
                } else if (__value__ == (4368502i32)) {
                    {
                        final __value__ = _c_4367381;
                        if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4368569i32;
                        } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 4368757i32;
                        } else {
                            _gotoNext = 4368516i32;
                        };
                    };
                } else if (__value__ == (4368516i32)) {
                    _startLine_4367356 = false;
                    _gotoNext = 4367443i32;
                } else if (__value__ == (4368569i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4368599i32;
                } else if (__value__ == (4368599i32)) {
                    if (((((_c_4367381 != (42 : stdgo.GoUInt8)) || (_c1_4368587 != (47 : stdgo.GoUInt8)) : Bool)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                        _gotoNext = 4368643i32;
                    } else {
                        _gotoNext = 4368735i32;
                    };
                } else if (__value__ == (4368643i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4368659i32;
                    } else {
                        _gotoNext = 4368695i32;
                    };
                } else if (__value__ == (4368659i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4368695i32;
                } else if (__value__ == (4368695i32)) {
                    {
                        final __tmp__0 = _c1_4368587;
                        final __tmp__1 = @:check2r _r._readByteNoBuf();
                        _c_4367381 = __tmp__0;
                        _c1_4368587 = __tmp__1;
                    };
                    _gotoNext = 4368599i32;
                } else if (__value__ == (4368735i32)) {
                    _startLine_4367356 = false;
                    _gotoNext = 4367389i32;
                } else if (__value__ == (4368757i32)) {
                    if (_startLine_4367356) {
                        _gotoNext = 4368784i32;
                    } else {
                        _gotoNext = 4369076i32;
                    };
                } else if (__value__ == (4368784i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.go.build.Build__goembed._goEmbed.length)) {
                        _gotoNext = 4368960i32;
                    } else {
                        _gotoNext = 4368968i32;
                    };
                } else if (__value__ == (4368845i32)) {
                    _i_4368845++;
                    _gotoNext = 4368961i32;
                } else if (__value__ == (4368864i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    if (_c_4367381 != (stdgo._internal.go.build.Build__goembed._goEmbed[(_i_4368845 : stdgo.GoInt)])) {
                        _gotoNext = 4368919i32;
                    } else {
                        _gotoNext = 4368845i32;
                    };
                } else if (__value__ == (4368919i32)) {
                    _gotoNext = 4369076i32;
                } else if (__value__ == (4368960i32)) {
                    _i_4368845 = 0i32;
                    _gotoNext = 4368961i32;
                } else if (__value__ == (4368961i32)) {
                    if (_i_4368845 < (stdgo._internal.go.build.Build__goembed._goEmbed.length)) {
                        _gotoNext = 4368864i32;
                    } else {
                        _gotoNext = 4368968i32;
                    };
                } else if (__value__ == (4368968i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    if (((_c_4367381 == (32 : stdgo.GoUInt8)) || (_c_4367381 == (9 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4369020i32;
                    } else {
                        _gotoNext = 4369076i32;
                    };
                } else if (__value__ == (4369020i32)) {
                    return true;
                    _gotoNext = 4369076i32;
                } else if (__value__ == (4369076i32)) {
                    _gotoNext = 4369076i32;
                    var __blank__ = 0i32;
                    skipSlashSlashBreak = false;
                    _gotoNext = 4369096i32;
                } else if (__value__ == (4369096i32)) {
                    if (!skipSlashSlashBreak && (((_c_4367381 != ((10 : stdgo.GoUInt8)) && (@:checkr _r ?? throw "null pointer dereference")._err == null : Bool) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool))) {
                        _gotoNext = 4369136i32;
                    } else {
                        _gotoNext = 4369175i32;
                    };
                } else if (__value__ == (4369136i32)) {
                    _c_4367381 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4369096i32;
                } else if (__value__ == (4369175i32)) {
                    _startLine_4367356 = true;
                    _gotoNext = 4367389i32;
                } else if (__value__ == (4369205i32)) {
                    return false;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _nextByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _skipSpace:Bool):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (@:check2r _r._peekByte(_skipSpace) : stdgo.GoUInt8);
        (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        return _c;
    }
    @:keep
    @:tdfield
    static public function _peekByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _skipSpace:Bool):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            {
                (@:checkr _r ?? throw "null pointer dereference")._nerr++;
                if (((@:checkr _r ?? throw "null pointer dereference")._nerr > (10000 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("go/build: import reader looping" : stdgo.GoString));
                };
            };
            return (0 : stdgo.GoUInt8);
        };
        var _c = ((@:checkr _r ?? throw "null pointer dereference")._peek : stdgo.GoUInt8);
        if (_c == ((0 : stdgo.GoUInt8))) {
            _c = @:check2r _r._readByte();
        };
        while ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            if (_skipSpace) {
                {
                    final __value__ = _c;
                    if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8))) {
                        _c = @:check2r _r._readByte();
                        continue;
                    } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                        _c = @:check2r _r._readByte();
                        if (_c == ((47 : stdgo.GoUInt8))) {
                            while (((_c != ((10 : stdgo.GoUInt8)) && (@:checkr _r ?? throw "null pointer dereference")._err == null : Bool) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                                _c = @:check2r _r._readByte();
                            };
                        } else if (_c == ((42 : stdgo.GoUInt8))) {
                            var _c1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                            while (((((_c != (42 : stdgo.GoUInt8)) || (_c1 != (47 : stdgo.GoUInt8)) : Bool)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                                if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                                    @:check2r _r._syntaxError();
                                };
                                {
                                    final __tmp__0 = _c1;
                                    final __tmp__1 = @:check2r _r._readByte();
                                    _c = __tmp__0;
                                    _c1 = __tmp__1;
                                };
                            };
                        } else {
                            @:check2r _r._syntaxError();
                        };
                        _c = @:check2r _r._readByte();
                        continue;
                    };
                };
            };
            break;
        };
        (@:checkr _r ?? throw "null pointer dereference")._peek = _c;
        return (@:checkr _r ?? throw "null pointer dereference")._peek;
    }
    @:keep
    @:tdfield
    static public function _readByteNoBuf( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((((@:checkr _r ?? throw "null pointer dereference")._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            _c = (@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._b.readByte();
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (((_err == null) && (_c == (0 : stdgo.GoUInt8)) : Bool)) {
                _err = stdgo._internal.go.build.Build__errnul._errNUL;
            };
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _r ?? throw "null pointer dereference")._eof = true;
            } else if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                (@:checkr _r ?? throw "null pointer dereference")._err = _err;
            };
            return (0 : stdgo.GoUInt8);
        };
        (@:checkr _r ?? throw "null pointer dereference")._pos.offset++;
        if (_c == ((10 : stdgo.GoUInt8))) {
            (@:checkr _r ?? throw "null pointer dereference")._pos.line++;
            (@:checkr _r ?? throw "null pointer dereference")._pos.column = (1 : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._pos.column++;
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _readByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__append__(_c));
            if (_c == ((0 : stdgo.GoUInt8))) {
                _err = stdgo._internal.go.build.Build__errnul._errNUL;
            };
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _r ?? throw "null pointer dereference")._eof = true;
            } else if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                (@:checkr _r ?? throw "null pointer dereference")._err = _err;
            };
            _c = (0 : stdgo.GoUInt8);
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.go.build.Build__errsyntax._errSyntax;
        };
    }
}
