package stdgo._internal.go.constant;
function binaryOp(_x_:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        var _a_5214382:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_5214360:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _a_5214089:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _b_5212503:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _x_5215116:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        var _x_5212331:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _dd_5214927:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ac_5214832:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bc_5214870:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bc_5214689:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_5213337:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y_5212271:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_5213298:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _x_5212268:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _cc_5214908:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_5213315:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _x_5214356:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _x_5214085:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _x_5213822:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _s_5214946:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ad_5214708:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_5214670:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _im_5214432:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_5214102:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _x_5212483:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _ac_5214651:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_5213861:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _y_5212362:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _ad_5214889:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_5214851:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_5214428:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_5214126:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _b_5213839:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _a_5213826:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _a_5213302:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _c_5212534:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _x_5212358:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _c_5214403:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_5214385:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _d_5214406:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_5212487:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    var __blank__ = _x_5212358;
                    _gotoNext = 5215195i32;
                    var __blank__ = _x_5215116;
                    _gotoNext = 5215195i32;
                    {
                        var __tmp__ = stdgo._internal.go.constant.Constant__match._match(_x_, _y_);
                        _x_5212268 = @:tmpset0 __tmp__._0;
                        _y_5212271 = @:tmpset0 __tmp__._1;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5212292i32;
                } else if (__value__ == (5212292i32)) {
                    {
                        final __type__ = _x_5212268;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _x_5212331 = _x;
                            _gotoNext = 5212316i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value;
                            _x_5212358 = _x;
                            _gotoNext = 5212346i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                            _x_5212483 = _x;
                            _gotoNext = 5212470i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                            _x_5213298 = _x;
                            _gotoNext = 5213287i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                            _x_5213822 = _x;
                            _gotoNext = 5213811i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value;
                            _x_5214085 = _x;
                            _gotoNext = 5214072i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value;
                            _x_5214356 = _x;
                            _gotoNext = 5214341i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__().value;
                            _x_5215116 = _x;
                            _gotoNext = 5215101i32;
                        } else {
                            var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5215195i32;
                        };
                    };
                } else if (__value__ == (5212316i32)) {
                    return stdgo.Go.asInterface(_x_5212331);
                    var __blank__ = _x_5212331;
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5212346i32)) {
                    _y_5212362 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal)) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
                    _gotoNext = 5212381i32;
                } else if (__value__ == (5212381i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((34 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212395i32;
                        } else if (__value__ == ((35 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212431i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (5212395i32)) {
                    return stdgo.Go.asInterface((_x_5212358 && _y_5212362 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i32;
                } else if (__value__ == (5212431i32)) {
                    return stdgo.Go.asInterface((_x_5212358 || _y_5212362 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i32;
                } else if (__value__ == (5212470i32)) {
                    _a_5212487 = (_x_5212483 : stdgo.GoInt64);
                    _b_5212503 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.GoInt64);
                    _gotoNext = 5212544i32;
                } else if (__value__ == (5212544i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212558i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212692i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212826i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212960i32;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213014i32;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213078i32;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213109i32;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213140i32;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213170i32;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213201i32;
                        } else {
                            _gotoNext = 5213237i32;
                        };
                    };
                } else if (__value__ == (5212558i32)) {
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_5212487) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_5212503) : Bool)) {
                        _gotoNext = 5212607i32;
                    } else {
                        _gotoNext = 5212680i32;
                    };
                } else if (__value__ == (5212607i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().add(stdgo._internal.math.big.Big_newint.newInt(_a_5212487), stdgo._internal.math.big.Big_newint.newInt(_b_5212503)));
                    _gotoNext = 5212680i32;
                } else if (__value__ == (5212680i32)) {
                    _c_5212534 = (_a_5212487 + _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5212692i32)) {
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_5212487) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_5212503) : Bool)) {
                        _gotoNext = 5212741i32;
                    } else {
                        _gotoNext = 5212814i32;
                    };
                } else if (__value__ == (5212741i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().sub(stdgo._internal.math.big.Big_newint.newInt(_a_5212487), stdgo._internal.math.big.Big_newint.newInt(_b_5212503)));
                    _gotoNext = 5212814i32;
                } else if (__value__ == (5212814i32)) {
                    _c_5212534 = (_a_5212487 - _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5212826i32)) {
                    if ((!stdgo._internal.go.constant.Constant__is32bit._is32bit(_a_5212487) || !stdgo._internal.go.constant.Constant__is32bit._is32bit(_b_5212503) : Bool)) {
                        _gotoNext = 5212875i32;
                    } else {
                        _gotoNext = 5212948i32;
                    };
                } else if (__value__ == (5212875i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().mul(stdgo._internal.math.big.Big_newint.newInt(_a_5212487), stdgo._internal.math.big.Big_newint.newInt(_b_5212503)));
                    _gotoNext = 5212948i32;
                } else if (__value__ == (5212948i32)) {
                    _c_5212534 = (_a_5212487 * _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5212960i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.math.big.Big_newrat.newRat(_a_5212487, _b_5212503));
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213014i32)) {
                    _c_5212534 = (_a_5212487 / _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213078i32)) {
                    _c_5212534 = (_a_5212487 % _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213109i32)) {
                    _c_5212534 = (_a_5212487 & _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213140i32)) {
                    _c_5212534 = (_a_5212487 | _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213170i32)) {
                    _c_5212534 = (_a_5212487 ^ _b_5212503 : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213201i32)) {
                    _c_5212534 = (_a_5212487 & ((_b_5212503 ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _gotoNext = 5213266i32;
                } else if (__value__ == (5213237i32)) {
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5213266i32)) {
                    return stdgo.Go.asInterface((_c_5212534 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    var __blank__ = _x_5212483;
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5213287i32)) {
                    _a_5213302 = _x_5213298._val;
                    _b_5213315 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)._val;
                    _c_5213337 = stdgo._internal.go.constant.Constant__newint._newInt();
                    _gotoNext = 5213353i32;
                } else if (__value__ == (5213353i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213367i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213400i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213433i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213466i32;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213526i32;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213592i32;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213625i32;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213658i32;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213689i32;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213722i32;
                        } else {
                            _gotoNext = 5213762i32;
                        };
                    };
                } else if (__value__ == (5213367i32)) {
                    @:check2r _c_5213337.add(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213400i32)) {
                    @:check2r _c_5213337.sub(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213433i32)) {
                    @:check2r _c_5213337.mul(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213466i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(@:check2r stdgo._internal.go.constant.Constant__newrat._newRat().setFrac(_a_5213302, _b_5213315));
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213526i32)) {
                    @:check2r _c_5213337.quo(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213592i32)) {
                    @:check2r _c_5213337.rem(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213625i32)) {
                    @:check2r _c_5213337.and(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213658i32)) {
                    @:check2r _c_5213337.or(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213689i32)) {
                    @:check2r _c_5213337.xor(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213722i32)) {
                    @:check2r _c_5213337.andNot(_a_5213302, _b_5213315);
                    _gotoNext = 5213791i32;
                } else if (__value__ == (5213762i32)) {
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5213791i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_c_5213337);
                    var __blank__ = _x_5213298;
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5213811i32)) {
                    _a_5213826 = _x_5213822._val;
                    _b_5213839 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)._val;
                    _c_5213861 = stdgo._internal.go.constant.Constant__newrat._newRat();
                    _gotoNext = 5213877i32;
                } else if (__value__ == (5213877i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213891i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213924i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213957i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213990i32;
                        } else {
                            _gotoNext = 5214023i32;
                        };
                    };
                } else if (__value__ == (5213891i32)) {
                    @:check2r _c_5213861.add(_a_5213826, _b_5213839);
                    _gotoNext = 5214052i32;
                } else if (__value__ == (5213924i32)) {
                    @:check2r _c_5213861.sub(_a_5213826, _b_5213839);
                    _gotoNext = 5214052i32;
                } else if (__value__ == (5213957i32)) {
                    @:check2r _c_5213861.mul(_a_5213826, _b_5213839);
                    _gotoNext = 5214052i32;
                } else if (__value__ == (5213990i32)) {
                    @:check2r _c_5213861.quo(_a_5213826, _b_5213839);
                    _gotoNext = 5214052i32;
                } else if (__value__ == (5214023i32)) {
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5214052i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(_c_5213861);
                    var __blank__ = _x_5213822;
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5214072i32)) {
                    _a_5214089 = _x_5214085._val;
                    _b_5214102 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)._val;
                    _c_5214126 = stdgo._internal.go.constant.Constant__newfloat._newFloat();
                    _gotoNext = 5214144i32;
                } else if (__value__ == (5214144i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214158i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214191i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214224i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214257i32;
                        } else {
                            _gotoNext = 5214290i32;
                        };
                    };
                } else if (__value__ == (5214158i32)) {
                    @:check2r _c_5214126.add(_a_5214089, _b_5214102);
                    _gotoNext = 5214319i32;
                } else if (__value__ == (5214191i32)) {
                    @:check2r _c_5214126.sub(_a_5214089, _b_5214102);
                    _gotoNext = 5214319i32;
                } else if (__value__ == (5214224i32)) {
                    @:check2r _c_5214126.mul(_a_5214089, _b_5214102);
                    _gotoNext = 5214319i32;
                } else if (__value__ == (5214257i32)) {
                    @:check2r _c_5214126.quo(_a_5214089, _b_5214102);
                    _gotoNext = 5214319i32;
                } else if (__value__ == (5214290i32)) {
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5214319i32)) {
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_c_5214126);
                    var __blank__ = _x_5214085;
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5214341i32)) {
                    _y_5214360 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)?.__copy__();
                    {
                        final __tmp__0 = _x_5214356._re;
                        final __tmp__1 = _x_5214356._im;
                        _a_5214382 = __tmp__0;
                        _b_5214385 = __tmp__1;
                    };
                    {
                        final __tmp__0 = _y_5214360._re;
                        final __tmp__1 = _y_5214360._im;
                        _c_5214403 = __tmp__0;
                        _d_5214406 = __tmp__1;
                    };
                    _gotoNext = 5214443i32;
                } else if (__value__ == (5214443i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214457i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214532i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214607i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214766i32;
                        } else {
                            _gotoNext = 5215043i32;
                        };
                    };
                } else if (__value__ == (5214457i32)) {
                    _re_5214428 = stdgo._internal.go.constant.Constant__add._add(_a_5214382, _c_5214403);
                    _im_5214432 = stdgo._internal.go.constant.Constant__add._add(_b_5214385, _d_5214406);
                    _gotoNext = 5215072i32;
                } else if (__value__ == (5214532i32)) {
                    _re_5214428 = stdgo._internal.go.constant.Constant__sub._sub(_a_5214382, _c_5214403);
                    _im_5214432 = stdgo._internal.go.constant.Constant__sub._sub(_b_5214385, _d_5214406);
                    _gotoNext = 5215072i32;
                } else if (__value__ == (5214607i32)) {
                    _ac_5214651 = stdgo._internal.go.constant.Constant__mul._mul(_a_5214382, _c_5214403);
                    _bd_5214670 = stdgo._internal.go.constant.Constant__mul._mul(_b_5214385, _d_5214406);
                    _bc_5214689 = stdgo._internal.go.constant.Constant__mul._mul(_b_5214385, _c_5214403);
                    _ad_5214708 = stdgo._internal.go.constant.Constant__mul._mul(_a_5214382, _d_5214406);
                    _re_5214428 = stdgo._internal.go.constant.Constant__sub._sub(_ac_5214651, _bd_5214670);
                    _im_5214432 = stdgo._internal.go.constant.Constant__add._add(_bc_5214689, _ad_5214708);
                    _gotoNext = 5215072i32;
                } else if (__value__ == (5214766i32)) {
                    _ac_5214832 = stdgo._internal.go.constant.Constant__mul._mul(_a_5214382, _c_5214403);
                    _bd_5214851 = stdgo._internal.go.constant.Constant__mul._mul(_b_5214385, _d_5214406);
                    _bc_5214870 = stdgo._internal.go.constant.Constant__mul._mul(_b_5214385, _c_5214403);
                    _ad_5214889 = stdgo._internal.go.constant.Constant__mul._mul(_a_5214382, _d_5214406);
                    _cc_5214908 = stdgo._internal.go.constant.Constant__mul._mul(_c_5214403, _c_5214403);
                    _dd_5214927 = stdgo._internal.go.constant.Constant__mul._mul(_d_5214406, _d_5214406);
                    _s_5214946 = stdgo._internal.go.constant.Constant__add._add(_cc_5214908, _dd_5214927);
                    _re_5214428 = stdgo._internal.go.constant.Constant__add._add(_ac_5214832, _bd_5214851);
                    _re_5214428 = stdgo._internal.go.constant.Constant__quo._quo(_re_5214428, _s_5214946);
                    _im_5214432 = stdgo._internal.go.constant.Constant__sub._sub(_bc_5214870, _ad_5214889);
                    _im_5214432 = stdgo._internal.go.constant.Constant__quo._quo(_im_5214432, _s_5214946);
                    _gotoNext = 5215072i32;
                } else if (__value__ == (5215043i32)) {
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5215072i32)) {
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_5214428, _im_5214432);
                    var __blank__ = _x_5214356;
                    _gotoNext = 5215195i32;
                } else if (__value__ == (5215101i32)) {
                    if (_op == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 5215139i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (5215139i32)) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : _x_5215116, _r : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_5212271) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
                    _gotoNext = 0i32;
                } else if (__value__ == (5215195i32)) {
                    _gotoNext = 5215195i32;
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid binary operation %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
