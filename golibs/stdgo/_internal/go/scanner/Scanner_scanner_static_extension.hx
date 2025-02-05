package stdgo._internal.go.scanner;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _tok = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _lit = ("" : stdgo.GoString);
        var _insertSemi_3691069:Bool = false;
        var _nlOffset_3693225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_3693216:stdgo.GoString = ("" : stdgo.GoString);
        var _ch_3691097:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3690737i32;
                } else if (__value__ == (3690737i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._nlPos.isValid()) {
                        _gotoNext = 3690770i32;
                    } else {
                        _gotoNext = 3690969i32;
                    };
                } else if (__value__ == (3690770i32)) {
                    {
                        final __tmp__0 = (@:checkr _s ?? throw "null pointer dereference")._nlPos;
                        final __tmp__1 = (57 : stdgo._internal.go.token.Token_token.Token);
                        final __tmp__2 = ("\n" : stdgo.GoString);
                        _pos = __tmp__0;
                        _tok = __tmp__1;
                        _lit = __tmp__2;
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._nlPos = (0 : stdgo._internal.go.token.Token_pos.Pos);
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = 3690969i32;
                } else if (__value__ == (3690969i32)) {
                    @:check2r _s._skipWhitespace();
                    _pos = @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos((@:checkr _s ?? throw "null pointer dereference")._offset);
                    _insertSemi_3691069 = false;
                    _gotoNext = 3691090i32;
                } else if (__value__ == (3691090i32)) {
                    {
                        _ch_3691097 = (@:checkr _s ?? throw "null pointer dereference")._ch;
                        if (stdgo._internal.go.scanner.Scanner__isletter._isLetter(_ch_3691097)) {
                            _gotoNext = 3691112i32;
                        } else if ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal(_ch_3691097) || (_ch_3691097 == ((46 : stdgo.GoInt32)) && stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((@:check2r _s._peek() : stdgo.GoInt32)) : Bool) : Bool)) {
                            _gotoNext = 3691456i32;
                        } else {
                            _gotoNext = 3691567i32;
                        };
                    };
                } else if (__value__ == (3691112i32)) {
                    _lit = @:check2r _s._scanIdentifier()?.__copy__();
                    if (((_lit.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3691176i32;
                    } else {
                        _gotoNext = 3691407i32;
                    };
                } else if (__value__ == (3691176i32)) {
                    _tok = stdgo._internal.go.token.Token_lookup.lookup(_lit?.__copy__());
                    _gotoNext = 3691275i32;
                } else if (__value__ == (3691275i32)) {
                    {
                        final __value__ = _tok;
                        if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 3691291i32;
                        } else {
                            _gotoNext = 3694744i32;
                        };
                    };
                } else if (__value__ == (3691291i32)) {
                    _insertSemi_3691069 = true;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3691407i32)) {
                    _gotoNext = 3691407i32;
                    _insertSemi_3691069 = true;
                    _tok = (4 : stdgo._internal.go.token.Token_token.Token);
                    var __blank__ = 0i32;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3691456i32)) {
                    _insertSemi_3691069 = true;
                    {
                        var __tmp__ = @:check2r _s._scanNumber();
                        _tok = @:tmpset0 __tmp__._0;
                        _lit = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3691567i32)) {
                    @:check2r _s._next();
                    _gotoNext = 3691613i32;
                } else if (__value__ == (3691613i32)) {
                    {
                        final __value__ = _ch_3691097;
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 3691627i32;
                        } else if (__value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3691763i32;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3691978i32;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3692057i32;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 3692133i32;
                        } else if (__value__ == ((58 : stdgo.GoInt32))) {
                            _gotoNext = 3692215i32;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 3692273i32;
                        } else if (__value__ == ((44 : stdgo.GoInt32))) {
                            _gotoNext = 3692486i32;
                        } else if (__value__ == ((59 : stdgo.GoInt32))) {
                            _gotoNext = 3692519i32;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 3692569i32;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3692603i32;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 3692658i32;
                        } else if (__value__ == ((93 : stdgo.GoInt32))) {
                            _gotoNext = 3692692i32;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 3692747i32;
                        } else if (__value__ == ((125 : stdgo.GoInt32))) {
                            _gotoNext = 3692781i32;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 3692836i32;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 3692964i32;
                        } else if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 3693092i32;
                        } else if (__value__ == ((47 : stdgo.GoInt32))) {
                            _gotoNext = 3693152i32;
                        } else if (__value__ == ((37 : stdgo.GoInt32))) {
                            _gotoNext = 3693724i32;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 3693784i32;
                        } else if (__value__ == ((60 : stdgo.GoInt32))) {
                            _gotoNext = 3693844i32;
                        } else if (__value__ == ((62 : stdgo.GoInt32))) {
                            _gotoNext = 3694004i32;
                        } else if (__value__ == ((61 : stdgo.GoInt32))) {
                            _gotoNext = 3694091i32;
                        } else if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 3694147i32;
                        } else if (__value__ == ((38 : stdgo.GoInt32))) {
                            _gotoNext = 3694200i32;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 3694385i32;
                        } else if (__value__ == ((126 : stdgo.GoInt32))) {
                            _gotoNext = 3694459i32;
                        } else {
                            _gotoNext = 3694492i32;
                        };
                    };
                } else if (__value__ == (3691627i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._insertSemi) {
                        _gotoNext = 3691656i32;
                    } else {
                        _gotoNext = 3691745i32;
                    };
                } else if (__value__ == (3691656i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3691745i32;
                } else if (__value__ == (3691745i32)) {
                    _tok = (1 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3691763i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3691978i32)) {
                    _insertSemi_3691069 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = @:check2r _s._scanString()?.__copy__();
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692057i32)) {
                    _insertSemi_3691069 = true;
                    _tok = (8 : stdgo._internal.go.token.Token_token.Token);
                    _lit = @:check2r _s._scanRune()?.__copy__();
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692133i32)) {
                    _insertSemi_3691069 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = @:check2r _s._scanRawString()?.__copy__();
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692215i32)) {
                    _tok = @:check2r _s._switch2((58 : stdgo._internal.go.token.Token_token.Token), (47 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692273i32)) {
                    _tok = (53 : stdgo._internal.go.token.Token_token.Token);
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (46 : stdgo.GoInt32)) && (@:check2r _s._peek() == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3692406i32;
                    } else {
                        _gotoNext = 3694744i32;
                    };
                } else if (__value__ == (3692406i32)) {
                    @:check2r _s._next();
                    @:check2r _s._next();
                    _tok = (48 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692486i32)) {
                    _tok = (52 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692519i32)) {
                    _tok = (57 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (";" : stdgo.GoString);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692569i32)) {
                    _tok = (49 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692603i32)) {
                    _insertSemi_3691069 = true;
                    _tok = (54 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692658i32)) {
                    _tok = (50 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692692i32)) {
                    _insertSemi_3691069 = true;
                    _tok = (55 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692747i32)) {
                    _tok = (51 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692781i32)) {
                    _insertSemi_3691069 = true;
                    _tok = (56 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692836i32)) {
                    _tok = @:check2r _s._switch3((12 : stdgo._internal.go.token.Token_token.Token), (23 : stdgo._internal.go.token.Token_token.Token), (43 : stdgo.GoInt32), (37 : stdgo._internal.go.token.Token_token.Token));
                    if (_tok == ((37 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 3692933i32;
                    } else {
                        _gotoNext = 3694744i32;
                    };
                } else if (__value__ == (3692933i32)) {
                    _insertSemi_3691069 = true;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3692964i32)) {
                    _tok = @:check2r _s._switch3((13 : stdgo._internal.go.token.Token_token.Token), (24 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo.GoInt32), (38 : stdgo._internal.go.token.Token_token.Token));
                    if (_tok == ((38 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 3693061i32;
                    } else {
                        _gotoNext = 3694744i32;
                    };
                } else if (__value__ == (3693061i32)) {
                    _insertSemi_3691069 = true;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693092i32)) {
                    _tok = @:check2r _s._switch2((14 : stdgo._internal.go.token.Token_token.Token), (25 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693152i32)) {
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (47 : stdgo.GoInt32)) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (42 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3693195i32;
                    } else {
                        _gotoNext = 3693650i32;
                    };
                } else if (__value__ == (3693195i32)) {
                    {
                        var __tmp__ = @:check2r _s._scanComment();
                        _comment_3693216 = @:tmpset0 __tmp__._0?.__copy__();
                        _nlOffset_3693225 = @:tmpset0 __tmp__._1;
                    };
                    if (((@:checkr _s ?? throw "null pointer dereference")._insertSemi && (_nlOffset_3693225 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3693290i32;
                    } else {
                        _gotoNext = 3693450i32;
                    };
                } else if (__value__ == (3693290i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._nlPos = @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos(_nlOffset_3693225);
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    _gotoNext = 3693521i32;
                } else if (__value__ == (3693450i32)) {
                    _gotoNext = 3693450i32;
                    _insertSemi_3691069 = (@:checkr _s ?? throw "null pointer dereference")._insertSemi;
                    var __blank__ = 0i32;
                    _gotoNext = 3693521i32;
                } else if (__value__ == (3693521i32)) {
                    if (((@:checkr _s ?? throw "null pointer dereference")._mode & (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 3693549i32;
                    } else {
                        _gotoNext = 3693602i32;
                    };
                } else if (__value__ == (3693549i32)) {
                    _gotoNext = 3690737i32;
                } else if (__value__ == (3693602i32)) {
                    _tok = (2 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _comment_3693216?.__copy__();
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693650i32)) {
                    _gotoNext = 3693650i32;
                    _tok = @:check2r _s._switch2((15 : stdgo._internal.go.token.Token_token.Token), (26 : stdgo._internal.go.token.Token_token.Token));
                    var __blank__ = 0i32;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693724i32)) {
                    _tok = @:check2r _s._switch2((16 : stdgo._internal.go.token.Token_token.Token), (27 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693784i32)) {
                    _tok = @:check2r _s._switch2((19 : stdgo._internal.go.token.Token_token.Token), (30 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693844i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 3693872i32;
                    } else {
                        _gotoNext = 3693919i32;
                    };
                } else if (__value__ == (3693872i32)) {
                    @:check2r _s._next();
                    _tok = (36 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3693919i32)) {
                    _gotoNext = 3693919i32;
                    _tok = @:check2r _s._switch4((40 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo._internal.go.token.Token_token.Token), (60 : stdgo.GoInt32), (20 : stdgo._internal.go.token.Token_token.Token), (31 : stdgo._internal.go.token.Token_token.Token));
                    var __blank__ = 0i32;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694004i32)) {
                    _tok = @:check2r _s._switch4((41 : stdgo._internal.go.token.Token_token.Token), (46 : stdgo._internal.go.token.Token_token.Token), (62 : stdgo.GoInt32), (21 : stdgo._internal.go.token.Token_token.Token), (32 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694091i32)) {
                    _tok = @:check2r _s._switch2((42 : stdgo._internal.go.token.Token_token.Token), (39 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694147i32)) {
                    _tok = @:check2r _s._switch2((43 : stdgo._internal.go.token.Token_token.Token), (44 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694200i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((94 : stdgo.GoInt32))) {
                        _gotoNext = 3694228i32;
                    } else {
                        _gotoNext = 3694310i32;
                    };
                } else if (__value__ == (3694228i32)) {
                    @:check2r _s._next();
                    _tok = @:check2r _s._switch2((22 : stdgo._internal.go.token.Token_token.Token), (33 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694310i32)) {
                    _gotoNext = 3694310i32;
                    _tok = @:check2r _s._switch3((17 : stdgo._internal.go.token.Token_token.Token), (28 : stdgo._internal.go.token.Token_token.Token), (38 : stdgo.GoInt32), (34 : stdgo._internal.go.token.Token_token.Token));
                    var __blank__ = 0i32;
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694385i32)) {
                    _tok = @:check2r _s._switch3((18 : stdgo._internal.go.token.Token_token.Token), (29 : stdgo._internal.go.token.Token_token.Token), (124 : stdgo.GoInt32), (35 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694459i32)) {
                    _tok = (88 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694492i32)) {
                    if (_ch_3691097 != ((65279 : stdgo.GoInt32))) {
                        _gotoNext = 3694567i32;
                    } else {
                        _gotoNext = 3694639i32;
                    };
                } else if (__value__ == (3694567i32)) {
                    @:check2r _s._errorf(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.offset(_pos), ("illegal character %#U" : stdgo.GoString), stdgo.Go.toInterface(_ch_3691097));
                    _gotoNext = 3694639i32;
                } else if (__value__ == (3694639i32)) {
                    _insertSemi_3691069 = (@:checkr _s ?? throw "null pointer dereference")._insertSemi;
                    _tok = (0 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (_ch_3691097 : stdgo.GoString)?.__copy__();
                    _gotoNext = 3694744i32;
                } else if (__value__ == (3694744i32)) {
                    if (((@:checkr _s ?? throw "null pointer dereference")._mode & (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 3694775i32;
                    } else {
                        _gotoNext = 3694810i32;
                    };
                } else if (__value__ == (3694775i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = _insertSemi_3691069;
                    _gotoNext = 3694810i32;
                } else if (__value__ == (3694810i32)) {
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _switch4( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token, _tok3:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            @:check2r _s._next();
            return _tok1;
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == (_ch2)) {
            @:check2r _s._next();
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
                @:check2r _s._next();
                return _tok3;
            };
            return _tok2;
        };
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch3( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            @:check2r _s._next();
            return _tok1;
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == (_ch2)) {
            @:check2r _s._next();
            return _tok2;
        };
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch2( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            @:check2r _s._next();
            return _tok1;
        };
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _skipWhitespace( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        while (((((@:checkr _s ?? throw "null pointer dereference")._ch == ((32 : stdgo.GoInt32)) || (@:checkr _s ?? throw "null pointer dereference")._ch == ((9 : stdgo.GoInt32)) : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32)) && !(@:checkr _s ?? throw "null pointer dereference")._insertSemi : Bool) : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (13 : stdgo.GoInt32)) : Bool)) {
            @:check2r _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _scanRawString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _hasCR = (false : Bool);
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                @:check2r _s._error(_offs, ("raw string literal not terminated" : stdgo.GoString));
                break;
            };
            @:check2r _s._next();
            if (_ch == ((96 : stdgo.GoInt32))) {
                break;
            };
            if (_ch == ((13 : stdgo.GoInt32))) {
                _hasCR = true;
            };
        };
        var _lit = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
        if (_hasCR) {
            _lit = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit, false);
        };
        return (_lit : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                @:check2r _s._error(_offs, ("string literal not terminated" : stdgo.GoString));
                break;
            };
            @:check2r _s._next();
            if (_ch == ((34 : stdgo.GoInt32))) {
                break;
            };
            if (_ch == ((92 : stdgo.GoInt32))) {
                @:check2r _s._scanEscape((34 : stdgo.GoInt32));
            };
        };
        return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanRune( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _valid = (true : Bool);
        var _n = (0 : stdgo.GoInt);
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                if (_valid) {
                    @:check2r _s._error(_offs, ("rune literal not terminated" : stdgo.GoString));
                    _valid = false;
                };
                break;
            };
            @:check2r _s._next();
            if (_ch == ((39 : stdgo.GoInt32))) {
                break;
            };
            _n++;
            if (_ch == ((92 : stdgo.GoInt32))) {
                if (!@:check2r _s._scanEscape((39 : stdgo.GoInt32))) {
                    _valid = false;
                };
            };
        };
        if ((_valid && (_n != (1 : stdgo.GoInt)) : Bool)) {
            @:check2r _s._error(_offs, ("illegal rune literal" : stdgo.GoString));
        };
        return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanEscape( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _quote:stdgo.GoInt32):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _max = __1, _base = __0;
        {
            final __value__ = (@:checkr _s ?? throw "null pointer dereference")._ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                @:check2r _s._next();
                return true;
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                {
                    final __tmp__0 = (3 : stdgo.GoInt);
                    final __tmp__1 = (8u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = __tmp__0;
                    _base = __tmp__1;
                    _max = __tmp__2;
                };
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __tmp__0 = (2 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = __tmp__0;
                    _base = __tmp__1;
                    _max = __tmp__2;
                };
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __tmp__0 = (4 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = __tmp__0;
                    _base = __tmp__1;
                    _max = __tmp__2;
                };
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __tmp__0 = (8 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = __tmp__0;
                    _base = __tmp__1;
                    _max = __tmp__2;
                };
            } else {
                var _msg = (("unknown escape sequence" : stdgo.GoString) : stdgo.GoString);
                if (((@:checkr _s ?? throw "null pointer dereference")._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                @:check2r _s._error(_offs, _msg?.__copy__());
                return false;
            };
        };
        var _x:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _d = (stdgo._internal.go.scanner.Scanner__digitval._digitVal((@:checkr _s ?? throw "null pointer dereference")._ch) : stdgo.GoUInt32);
            if ((_d >= _base : Bool)) {
                var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character %#U in escape sequence" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch))?.__copy__() : stdgo.GoString);
                if (((@:checkr _s ?? throw "null pointer dereference")._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, _msg?.__copy__());
                return false;
            };
            _x = ((_x * _base : stdgo.GoUInt32) + _d : stdgo.GoUInt32);
            @:check2r _s._next();
            _n--;
        };
        if (((_x > _max : Bool) || (((55296u32 : stdgo.GoUInt32) <= _x : Bool) && (_x < (57344u32 : stdgo.GoUInt32) : Bool) : Bool) : Bool)) {
            @:check2r _s._error(_offs, ("escape sequence is invalid Unicode code point" : stdgo.GoString));
            return false;
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        var _tok = (0 : stdgo._internal.go.token.Token_token.Token);
        var _base = (10 : stdgo.GoInt);
        var _prefix = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _digsep = (0 : stdgo.GoInt);
        var _invalid = (-1 : stdgo.GoInt);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        if ((@:checkr _s ?? throw "null pointer dereference")._ch != ((46 : stdgo.GoInt32))) {
            _tok = (5 : stdgo._internal.go.token.Token_token.Token);
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((48 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __value__ = stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw "null pointer dereference")._ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        @:check2r _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        @:check2r _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        @:check2r _s._next();
                        {
                            final __tmp__0 = (2 : stdgo.GoInt);
                            final __tmp__1 = (98 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                    } else {
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (48 : stdgo.GoInt32);
                            _base = __tmp__0;
                            _prefix = __tmp__1;
                        };
                        _digsep = (1 : stdgo.GoInt);
                    };
                };
            };
            _digsep = (_digsep | (@:check2r _s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((46 : stdgo.GoInt32))) {
            _tok = (6 : stdgo._internal.go.token.Token_token.Token);
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, (("invalid radix point in " : stdgo.GoString) + stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            @:check2r _s._next();
            _digsep = (_digsep | (@:check2r _s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, (stdgo._internal.go.scanner.Scanner__litname._litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        {
            var _e = (stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw "null pointer dereference")._ch) : stdgo.GoInt32);
            if (((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) {
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _s._errorf((@:checkr _s ?? throw "null pointer dereference")._offset, ("%q exponent requires decimal mantissa" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _s._errorf((@:checkr _s ?? throw "null pointer dereference")._offset, ("%q exponent requires hexadecimal mantissa" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch));
                };
                @:check2r _s._next();
                _tok = (6 : stdgo._internal.go.token.Token_token.Token);
                if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (43 : stdgo.GoInt32)) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (45 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _s._next();
                };
                var _ds = (@:check2r _s._digits((10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.GoInt);
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (6 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((105 : stdgo.GoInt32))) {
            _tok = (7 : stdgo._internal.go.token.Token_token.Token);
            @:check2r _s._next();
        };
        var _lit = ((((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_tok == (5 : stdgo._internal.go.token.Token_token.Token)) && (_invalid >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _s._errorf(_invalid, ("invalid digit %q in %s" : stdgo.GoString), stdgo.Go.toInterface(_lit[(_invalid - _offs : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)));
        };
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            {
                var _i = (stdgo._internal.go.scanner.Scanner__invalidsep._invalidSep(_lit?.__copy__()) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _s._error((_offs + _i : stdgo.GoInt), ("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        return { _0 : _tok, _1 : _lit?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _digits( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _digsep = (0 : stdgo.GoInt);
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = (((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoInt32);
            while ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((@:checkr _s ?? throw "null pointer dereference")._ch) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if ((((@:checkr _s ?? throw "null pointer dereference")._ch >= _max : Bool) && (_invalid.value < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _invalid.value = (@:checkr _s ?? throw "null pointer dereference")._offset;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                @:check2r _s._next();
            };
        } else {
            while ((stdgo._internal.go.scanner.Scanner__ishex._isHex((@:checkr _s ?? throw "null pointer dereference")._ch) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                @:check2r _s._next();
            };
        };
        return _digsep;
    }
    @:keep
    @:tdfield
    static public function _scanIdentifier( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _b_3679889:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _rdOffset_3679879:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offs_3679577:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _offs_3679577 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    if ((0i32 : stdgo.GoInt) < (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 3680838i32;
                    } else {
                        _gotoNext = 3680842i32;
                    };
                } else if (__value__ == (3679919i32)) {
                    _b_3679889 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(_rdOffset_3679879 : stdgo.GoInt)];
                    if (((((((97 : stdgo.GoUInt8) <= _b_3679889 : Bool) && (_b_3679889 <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b_3679889 : Bool) && (_b_3679889 <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b_3679889 == ((95 : stdgo.GoUInt8)) : Bool) || (((48 : stdgo.GoUInt8) <= _b_3679889 : Bool) && (_b_3679889 <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 3680007i32;
                    } else {
                        _gotoNext = 3680099i32;
                    };
                } else if (__value__ == (3680007i32)) {
                    _rdOffset_3679879++;
                    _gotoNext = 3680839i32;
                } else if (__value__ == (3680099i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._rdOffset + (_rdOffset_3679879) : stdgo.GoInt);
                    if ((((0 : stdgo.GoUInt8) < _b_3679889 : Bool) && (_b_3679889 < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3680154i32;
                    } else {
                        _gotoNext = 3680761i32;
                    };
                } else if (__value__ == (3680154i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._ch = (_b_3679889 : stdgo.GoInt32);
                    (@:checkr _s ?? throw "null pointer dereference")._offset = (@:checkr _s ?? throw "null pointer dereference")._rdOffset;
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset++;
                    _gotoNext = 3680902i32;
                } else if (__value__ == (3680761i32)) {
                    @:check2r _s._next();
                    var __blank__ = 0i32;
                    _gotoNext = 3680772i32;
                } else if (__value__ == (3680772i32)) {
                    if ((stdgo._internal.go.scanner.Scanner__isletter._isLetter((@:checkr _s ?? throw "null pointer dereference")._ch) || stdgo._internal.go.scanner.Scanner__isdigit._isDigit((@:checkr _s ?? throw "null pointer dereference")._ch) : Bool)) {
                        _gotoNext = 3680808i32;
                    } else {
                        _gotoNext = 3680828i32;
                    };
                } else if (__value__ == (3680808i32)) {
                    @:check2r _s._next();
                    _gotoNext = 3680772i32;
                } else if (__value__ == (3680828i32)) {
                    _gotoNext = 3680902i32;
                } else if (__value__ == (3680838i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(0i32 : stdgo.GoInt)];
                        _rdOffset_3679879 = __tmp__0;
                        _b_3679889 = __tmp__1;
                    };
                    _gotoNext = 3680839i32;
                } else if (__value__ == (3680839i32)) {
                    if (_rdOffset_3679879 < (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 3679919i32;
                    } else {
                        _gotoNext = 3680842i32;
                    };
                } else if (__value__ == (3680842i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._offset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
                    (@:checkr _s ?? throw "null pointer dereference")._ch = (-1 : stdgo.GoInt32);
                    _gotoNext = 3680902i32;
                } else if (__value__ == (3680902i32)) {
                    return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs_3679577, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _updateLineInfo( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _next:stdgo.GoInt, _offs:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (_text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
            _text = (_text.__slice__(0, ((_text.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _text = (_text.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _offs = (_offs + ((7 : stdgo.GoInt)) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits(_text), _i:stdgo.GoInt = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        if (_i == ((0 : stdgo.GoInt))) {
            return;
        };
        if (!_ok) {
            @:check2r _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return;
        };
        {};
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _col = __1, _line = __0;
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _i2:stdgo.GoInt = __tmp__._0, _n2:stdgo.GoInt = __tmp__._1, _ok2:Bool = __tmp__._2;
        if (_ok2) {
            {
                final __tmp__0 = _i2;
                final __tmp__1 = _i;
                _i = __tmp__0;
                _i2 = __tmp__1;
            };
            {
                final __tmp__0 = _n2;
                final __tmp__1 = _n;
                _line = __tmp__0;
                _col = __tmp__1;
            };
            if (((_col == (0 : stdgo.GoInt)) || (_col > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _s._error((_offs + _i2 : stdgo.GoInt), (("invalid column number: " : stdgo.GoString) + ((_text.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                return;
            };
            _text = (_text.__slice__(0, (_i2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _line = _n;
        };
        if (((_line == (0 : stdgo.GoInt)) || (_line > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return;
        };
        var _filename = (((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_filename == (stdgo.Go.str() : stdgo.GoString)) && _ok2 : Bool)) {
            _filename = @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.position(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos(_offs)).filename?.__copy__();
        } else if (_filename != ((stdgo.Go.str() : stdgo.GoString))) {
            _filename = stdgo._internal.path.filepath.Filepath_clean.clean(_filename?.__copy__())?.__copy__();
            if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_filename?.__copy__())) {
                _filename = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._dir?.__copy__(), _filename?.__copy__())?.__copy__();
            };
        };
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.addLineColumnInfo(_next, _filename?.__copy__(), _line, _col);
    }
    @:keep
    @:tdfield
    static public function _scanComment( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _nlOffset_3675301:stdgo.GoInt = (0 : stdgo.GoInt);
        var _numCR_3675289:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_3675194:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offs_3675145:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lit_3676006:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ch_3675753:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _offs_3675145 = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _next_3675194 = (-1 : stdgo.GoInt);
                    _numCR_3675289 = (0 : stdgo.GoInt);
                    _nlOffset_3675301 = (0 : stdgo.GoInt);
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((47 : stdgo.GoInt32))) {
                        _gotoNext = 3675382i32;
                    } else {
                        _gotoNext = 3675725i32;
                    };
                } else if (__value__ == (3675382i32)) {
                    @:check2r _s._next();
                    var __blank__ = 0i32;
                    _gotoNext = 3675476i32;
                } else if (__value__ == (3675476i32)) {
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch != (10 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3675506i32;
                    } else {
                        _gotoNext = 3675637i32;
                    };
                } else if (__value__ == (3675506i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 3675527i32;
                    } else {
                        _gotoNext = 3675549i32;
                    };
                } else if (__value__ == (3675527i32)) {
                    _numCR_3675289++;
                    _gotoNext = 3675549i32;
                } else if (__value__ == (3675549i32)) {
                    @:check2r _s._next();
                    _gotoNext = 3675476i32;
                } else if (__value__ == (3675637i32)) {
                    _next_3675194 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 3675671i32;
                    } else {
                        _gotoNext = 3675689i32;
                    };
                } else if (__value__ == (3675671i32)) {
                    _next_3675194++;
                    _gotoNext = 3675689i32;
                } else if (__value__ == (3675689i32)) {
                    _gotoNext = 3675999i32;
                } else if (__value__ == (3675725i32)) {
                    @:check2r _s._next();
                    var __blank__ = 0i32;
                    _gotoNext = 3675735i32;
                } else if (__value__ == (3675735i32)) {
                    if (((@:checkr _s ?? throw "null pointer dereference")._ch >= (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3675749i32;
                    } else {
                        _gotoNext = 3675958i32;
                    };
                } else if (__value__ == (3675749i32)) {
                    _ch_3675753 = (@:checkr _s ?? throw "null pointer dereference")._ch;
                    if (_ch_3675753 == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 3675780i32;
                    } else if (((_ch_3675753 == (10 : stdgo.GoInt32)) && (_nlOffset_3675301 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3675833i32;
                    } else {
                        _gotoNext = 3675864i32;
                    };
                } else if (__value__ == (3675780i32)) {
                    _numCR_3675289++;
                    _gotoNext = 3675864i32;
                } else if (__value__ == (3675833i32)) {
                    _nlOffset_3675301 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    _gotoNext = 3675864i32;
                } else if (__value__ == (3675864i32)) {
                    @:check2r _s._next();
                    if (((_ch_3675753 == (42 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._ch == (47 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3675903i32;
                    } else {
                        _gotoNext = 3675735i32;
                    };
                } else if (__value__ == (3675903i32)) {
                    @:check2r _s._next();
                    _next_3675194 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    _gotoNext = 3675999i32;
                } else if (__value__ == (3675958i32)) {
                    @:check2r _s._error(_offs_3675145, ("comment not terminated" : stdgo.GoString));
                    _gotoNext = 3675999i32;
                } else if (__value__ == (3675999i32)) {
                    _lit_3676006 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs_3675145, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((((_numCR_3675289 > (0 : stdgo.GoInt) : Bool) && ((_lit_3676006.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && _lit_3676006[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_lit_3676006[((_lit_3676006.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3676362i32;
                    } else {
                        _gotoNext = 3676506i32;
                    };
                } else if (__value__ == (3676362i32)) {
                    _lit_3676006 = (_lit_3676006.__slice__(0, ((_lit_3676006.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _numCR_3675289--;
                    _gotoNext = 3676506i32;
                } else if (__value__ == (3676506i32)) {
                    if ((((_next_3675194 >= (0 : stdgo.GoInt) : Bool) && (((_lit_3676006[(1 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) || (_offs_3675145 == (@:checkr _s ?? throw "null pointer dereference")._lineOffset) : Bool)) : Bool) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix((_lit_3676006.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.scanner.Scanner__prefix._prefix) : Bool)) {
                        _gotoNext = 3676626i32;
                    } else {
                        _gotoNext = 3676669i32;
                    };
                } else if (__value__ == (3676626i32)) {
                    @:check2r _s._updateLineInfo(_next_3675194, _offs_3675145, _lit_3676006);
                    _gotoNext = 3676669i32;
                } else if (__value__ == (3676669i32)) {
                    if ((_numCR_3675289 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3676682i32;
                    } else {
                        _gotoNext = 3676725i32;
                    };
                } else if (__value__ == (3676682i32)) {
                    _lit_3676006 = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit_3676006, _lit_3676006[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)));
                    _gotoNext = 3676725i32;
                } else if (__value__ == (3676725i32)) {
                    return { _0 : (_lit_3676006 : stdgo.GoString)?.__copy__(), _1 : _nlOffset_3675301 };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        @:check2r _s._error(_offs, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._err != null) {
            (@:checkr _s ?? throw "null pointer dereference")._err(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.position(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos(_offs))?.__copy__(), _msg?.__copy__());
        };
        (@:checkr _s ?? throw "null pointer dereference").errorCount++;
    }
    @:keep
    @:tdfield
    static public function init( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _src:stdgo.Slice<stdgo.GoUInt8>, _err:stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler, _mode:stdgo._internal.go.scanner.Scanner_mode.Mode):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (@:check2r _file.size() != ((_src.length))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file size (%d) does not match src len (%d)" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _file.size()), stdgo.Go.toInterface((_src.length))));
        };
        (@:checkr _s ?? throw "null pointer dereference")._file = _file;
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(@:check2r _file.name()?.__copy__());
            (@:checkr _s ?? throw "null pointer dereference")._dir = @:tmpset0 __tmp__._0?.__copy__();
        };
        (@:checkr _s ?? throw "null pointer dereference")._src = _src;
        (@:checkr _s ?? throw "null pointer dereference")._err = _err;
        (@:checkr _s ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _s ?? throw "null pointer dereference")._ch = (32 : stdgo.GoInt32);
        (@:checkr _s ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._rdOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
        (@:checkr _s ?? throw "null pointer dereference").errorCount = (0 : stdgo.GoInt);
        @:check2r _s._next();
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((65279 : stdgo.GoInt32))) {
            @:check2r _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoUInt8 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._rdOffset < ((@:checkr _s ?? throw "null pointer dereference")._src.length) : Bool)) {
            return (@:checkr _s ?? throw "null pointer dereference")._src[((@:checkr _s ?? throw "null pointer dereference")._rdOffset : stdgo.GoInt)];
        };
        return (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _next( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._rdOffset < ((@:checkr _s ?? throw "null pointer dereference")._src.length) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._offset = (@:checkr _s ?? throw "null pointer dereference")._rdOffset;
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (@:checkr _s ?? throw "null pointer dereference")._offset;
                @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.addLine((@:checkr _s ?? throw "null pointer dereference")._offset);
            };
            var __0 = ((@:checkr _s ?? throw "null pointer dereference")._src[((@:checkr _s ?? throw "null pointer dereference")._rdOffset : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _w = __1, _r = __0;
            if (_r == ((0 : stdgo.GoInt32))) {
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal character NUL" : stdgo.GoString));
            } else if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
                if (((_r == (65533 : stdgo.GoInt32)) && (_w == (1 : stdgo.GoInt)) : Bool)) {
                    @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal UTF-8 encoding" : stdgo.GoString));
                } else if (((_r == (65279 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._offset > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal byte order mark" : stdgo.GoString));
                };
            };
            (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._rdOffset + (_w) : stdgo.GoInt);
            (@:checkr _s ?? throw "null pointer dereference")._ch = _r;
        } else {
            (@:checkr _s ?? throw "null pointer dereference")._offset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (@:checkr _s ?? throw "null pointer dereference")._offset;
                @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.addLine((@:checkr _s ?? throw "null pointer dereference")._offset);
            };
            (@:checkr _s ?? throw "null pointer dereference")._ch = (-1 : stdgo.GoInt32);
        };
    }
}
