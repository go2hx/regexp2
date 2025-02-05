package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_operand_asInterface) class T_operand_static_extension {
    @:keep
    @:tdfield
    static public function _assignableTo( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):{ var _0 : Bool; var _1 : stdgo._internal.internal.types.errors.Errors_code.Code; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        if ((((@:checkr _x ?? throw "null pointer dereference")._mode == (0 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || (stdgo.Go.toInterface(t) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool)) {
            return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        var v = ((@:checkr _x ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        if (stdgo._internal.go.types.Types_identical.identical(v, t)) {
            return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        var vu = (stdgo._internal.go.types.Types__under._under(v) : stdgo._internal.go.types.Types_type_.Type_);
        var tu = (stdgo._internal.go.types.Types__under._under(t) : stdgo._internal.go.types.Types_type_.Type_);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(v) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, vp = __tmp__._0, __0 = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, tp = __tmp__._0, __1 = __tmp__._1;
        if (stdgo._internal.go.types.Types__isuntyped._isUntyped(vu)) {
            stdgo._internal.go.types.Types__assert._assert((vp == null || (vp : Dynamic).__nil__));
            if ((tp != null && ((tp : Dynamic).__nil__ == null || !(tp : Dynamic).__nil__))) {
                return { _0 : @:check2r tp._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                    if ((_t == null || (_t : Dynamic).__nil__)) {
                        return false;
                    };
                    var __tmp__ = @:check2r _check._implicitTypeAndValue(_x, (@:checkr _t ?? throw "null pointer dereference")._typ), _newType:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __18:stdgo._internal.go.constant.Constant_value.Value = __tmp__._1, __19:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._2;
                    return _newType != null;
                }), _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
            };
            var __tmp__ = @:check2r _check._implicitTypeAndValue(_x, t), _newType:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __10:stdgo._internal.go.constant.Constant_value.Value = __tmp__._1, __11:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._2;
            return { _0 : _newType != null, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        if ((((stdgo._internal.go.types.Types_identical.identical(vu, tu) && ((!stdgo._internal.go.types.Types__hasname._hasName(v) || !stdgo._internal.go.types.Types__hasname._hasName(t) : Bool)) : Bool) && (vp == null || (vp : Dynamic).__nil__) : Bool) && (tp == null || (tp : Dynamic).__nil__) : Bool)) {
            return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(tu) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
            }, __2 = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && (tp == null || (tp : Dynamic).__nil__) : Bool) || stdgo._internal.go.types.Types__isinterfaceptr._isInterfacePtr(tu) : Bool)) {
                if (@:check2r _check._implements(@:check2r _x.pos(), v, t, false, _cause)) {
                    return { _0 : true, _1 : (0 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                };
                if ((vp == null || (vp : Dynamic).__nil__)) {
                    return { _0 : false, _1 : (21 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                };
                if (_cause != null) {
                    _cause.value = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(vu) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
            }, vi = __tmp__._0, __3 = __tmp__._1;
            if (((vi != null && ((vi : Dynamic).__nil__ == null || !(vi : Dynamic).__nil__)) && (vp == null || (vp : Dynamic).__nil__) : Bool)) {
                if (@:check2r _check._implements(@:check2r _x.pos(), t, v, false, (null : stdgo.Pointer<stdgo.GoString>))) {
                    if (_cause != null) {
                        _cause.value = ("need type assertion" : stdgo.GoString);
                    };
                    return { _0 : false, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                };
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(vu) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
            }, vc = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && ((@:checkr vc ?? throw "null pointer dereference")._dir == (0 : stdgo._internal.go.types.Types_chandir.ChanDir)) : Bool)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(tu) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                    }, tc = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && stdgo._internal.go.types.Types_identical.identical((@:checkr vc ?? throw "null pointer dereference")._elem, (@:checkr tc ?? throw "null pointer dereference")._elem) : Bool)) {
                        return { _0 : (!stdgo._internal.go.types.Types__hasname._hasName(v) || !stdgo._internal.go.types.Types__hasname._hasName(t) : Bool), _1 : (22 : stdgo._internal.internal.types.errors.Errors_code.Code) };
                    };
                };
            };
        };
        if (((vp == null || (vp : Dynamic).__nil__) && (tp == null || (tp : Dynamic).__nil__) : Bool)) {
            return { _0 : false, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
        };
        var _errorf = function(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
            var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
            if (((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && (_cause != null) : Bool)) {
                var _msg = (@:check2r _check._sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
                if (_cause.value != ((stdgo.Go.str() : stdgo.GoString))) {
                    _msg = (_msg + ((("\n\t" : stdgo.GoString) + _cause.value?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _cause.value = _msg?.__copy__();
            };
        };
        if ((!stdgo._internal.go.types.Types__hasname._hasName(v) && (tp != null && ((tp : Dynamic).__nil__ == null || !(tp : Dynamic).__nil__)) : Bool)) {
            var _ok = (false : Bool);
            var _code = (23 : stdgo._internal.internal.types.errors.Errors_code.Code);
            @:check2r tp._is(function(t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                if ((t == null || (t : Dynamic).__nil__)) {
                    return false;
                };
                {
                    var __tmp__ = @:check2r _x._assignableTo(_check, (@:checkr t ?? throw "null pointer dereference")._typ, _cause);
                    _ok = @:tmpset0 __tmp__._0;
                    _code = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    _errorf(("cannot assign %s to %s (in %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface((@:checkr t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(tp)));
                    return false;
                };
                return true;
            });
            return { _0 : _ok, _1 : _code };
        };
        if (((vp != null && ((vp : Dynamic).__nil__ == null || !(vp : Dynamic).__nil__)) && !stdgo._internal.go.types.Types__hasname._hasName(t) : Bool)) {
            var _x = ((_x : stdgo._internal.go.types.Types_t_operand.T_operand)?.__copy__() : stdgo._internal.go.types.Types_t_operand.T_operand);
            var _ok = (false : Bool);
            var _code = (23 : stdgo._internal.internal.types.errors.Errors_code.Code);
            @:check2r vp._is(function(v:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                if ((v == null || (v : Dynamic).__nil__)) {
                    return false;
                };
                _x._typ = (@:checkr v ?? throw "null pointer dereference")._typ;
                {
                    var __tmp__ = @:check2 _x._assignableTo(_check, t, _cause);
                    _ok = @:tmpset0 __tmp__._0;
                    _code = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    _errorf(("cannot assign %s (in %s) to %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr v ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(vp)), stdgo.Go.toInterface(t));
                    return false;
                };
                return true;
            });
            return { _0 : _ok, _1 : _code };
        };
        return { _0 : false, _1 : (23 : stdgo._internal.internal.types.errors.Errors_code.Code) };
    }
    @:keep
    @:tdfield
    static public function _isNil( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        return (((@:checkr _x ?? throw "null pointer dereference")._mode == (7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) && (stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((25 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool);
    }
    @:keep
    @:tdfield
    static public function _setConst( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _tok:stdgo._internal.go.token.Token_token.Token, _lit:stdgo.GoString):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        var _kind:stdgo._internal.go.types.Types_basickind.BasicKind = ((0 : stdgo.GoInt) : stdgo._internal.go.types.Types_basickind.BasicKind);
        {
            final __value__ = _tok;
            if (__value__ == ((5 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (20 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((6 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (22 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((7 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (23 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((8 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (21 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else if (__value__ == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                _kind = (24 : stdgo._internal.go.types.Types_basickind.BasicKind);
            } else {
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        var _val = (stdgo._internal.go.constant.Constant_makefromliteral.makeFromLiteral(_lit?.__copy__(), _tok, (0u32 : stdgo.GoUInt)) : stdgo._internal.go.constant.Constant_value.Value);
        if (_val.kind() == ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
            (@:checkr _x ?? throw "null pointer dereference")._mode = (0 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
            (@:checkr _x ?? throw "null pointer dereference")._typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
            return;
        };
        (@:checkr _x ?? throw "null pointer dereference")._mode = (4 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode);
        (@:checkr _x ?? throw "null pointer dereference")._typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[(_kind : stdgo.GoInt)]);
        (@:checkr _x ?? throw "null pointer dereference")._val = _val;
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        return stdgo._internal.go.types.Types__operandstring._operandString(_x, null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        if ((@:checkr _x ?? throw "null pointer dereference")._expr == null) {
            return stdgo._internal.go.types.Types__nopos._nopos;
        };
        return (@:checkr _x ?? throw "null pointer dereference")._expr.pos();
    }
    @:keep
    @:tdfield
    static public function _convertibleTo( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>, _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, t:stdgo._internal.go.types.Types_type_.Type_, _cause:stdgo.Pointer<stdgo.GoString>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = _x;
        {
            var __tmp__ = @:check2r _x._assignableTo(_check, t, _cause), _ok:Bool = __tmp__._0, __0:stdgo._internal.internal.types.errors.Errors_code.Code = __tmp__._1;
            if (_ok) {
                return true;
            };
        };
        var v = ((@:checkr _x ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        var vu = (stdgo._internal.go.types.Types__under._under(v) : stdgo._internal.go.types.Types_type_.Type_);
        var tu = (stdgo._internal.go.types.Types__under._under(t) : stdgo._internal.go.types.Types_type_.Type_);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(v) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, vp = __tmp__._0, __1 = __tmp__._1;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, tp = __tmp__._0, __2 = __tmp__._1;
        if (((stdgo._internal.go.types.Types_identicalignoretags.identicalIgnoreTags(vu, tu) && (vp == null || (vp : Dynamic).__nil__) : Bool) && (tp == null || (tp : Dynamic).__nil__) : Bool)) {
            return true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(v) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
            }, v = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                    }, t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (((stdgo._internal.go.types.Types_identicalignoretags.identicalIgnoreTags(stdgo._internal.go.types.Types__under._under((@:checkr v ?? throw "null pointer dereference")._base), stdgo._internal.go.types.Types__under._under((@:checkr t ?? throw "null pointer dereference")._base)) && !stdgo._internal.go.types.Types__istypeparam._isTypeParam((@:checkr v ?? throw "null pointer dereference")._base) : Bool) && !stdgo._internal.go.types.Types__istypeparam._isTypeParam((@:checkr t ?? throw "null pointer dereference")._base) : Bool)) {
                            return true;
                        };
                    };
                };
            };
        };
        if ((stdgo._internal.go.types.Types__isintegerorfloat._isIntegerOrFloat(vu) && stdgo._internal.go.types.Types__isintegerorfloat._isIntegerOrFloat(tu) : Bool)) {
            return true;
        };
        if ((stdgo._internal.go.types.Types__iscomplex._isComplex(vu) && stdgo._internal.go.types.Types__iscomplex._isComplex(tu) : Bool)) {
            return true;
        };
        if ((((stdgo._internal.go.types.Types__isinteger._isInteger(vu) || stdgo._internal.go.types.Types__isbytesorrunes._isBytesOrRunes(vu) : Bool)) && stdgo._internal.go.types.Types__isstring._isString(tu) : Bool)) {
            return true;
        };
        if ((stdgo._internal.go.types.Types__isstring._isString(vu) && stdgo._internal.go.types.Types__isbytesorrunes._isBytesOrRunes(tu) : Bool)) {
            return true;
        };
        if ((((stdgo._internal.go.types.Types__ispointer._isPointer(vu) || stdgo._internal.go.types.Types__isuintptr._isUintptr(vu) : Bool)) && stdgo._internal.go.types.Types__isunsafepointer._isUnsafePointer(tu) : Bool)) {
            return true;
        };
        if ((stdgo._internal.go.types.Types__isunsafepointer._isUnsafePointer(vu) && ((stdgo._internal.go.types.Types__ispointer._isPointer(tu) || stdgo._internal.go.types.Types__isuintptr._isUintptr(tu) : Bool)) : Bool)) {
            return true;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(vu) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
            }, _s = __tmp__._0, __3 = __tmp__._1;
            if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                {
                    final __type__ = tu;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                        var _a:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                        if (stdgo._internal.go.types.Types_identical.identical(@:check2r _s.elem(), @:check2r _a.elem())) {
                            if (((_check == null || (_check : Dynamic).__nil__) || @:check2r _check._allowVersion((@:checkr _check ?? throw "null pointer dereference")._pkg, stdgo.Go.asInterface(_x), stdgo._internal.go.types.Types__go1_20._go1_20?.__copy__()) : Bool)) {
                                return true;
                            };
                            if (_cause != null) {
                                _cause.value = ("conversion of slices to arrays requires go1.20 or later" : stdgo.GoString);
                            };
                            return false;
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                        var _a:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(@:check2r _a.elem())) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                            }, _a = __tmp__._0, __4 = __tmp__._1;
                            if ((_a != null && ((_a : Dynamic).__nil__ == null || !(_a : Dynamic).__nil__))) {
                                if (stdgo._internal.go.types.Types_identical.identical(@:check2r _s.elem(), @:check2r _a.elem())) {
                                    if (((_check == null || (_check : Dynamic).__nil__) || @:check2r _check._allowVersion((@:checkr _check ?? throw "null pointer dereference")._pkg, stdgo.Go.asInterface(_x), stdgo._internal.go.types.Types__go1_17._go1_17?.__copy__()) : Bool)) {
                                        return true;
                                    };
                                    if (_cause != null) {
                                        _cause.value = ("conversion of slices to array pointers requires go1.17 or later" : stdgo.GoString);
                                    };
                                    return false;
                                };
                            };
                        };
                    };
                };
            };
        };
        if (((vp == null || (vp : Dynamic).__nil__) && (tp == null || (tp : Dynamic).__nil__) : Bool)) {
            return false;
        };
        var _errorf = function(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
            var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
            if (((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && (_cause != null) : Bool)) {
                var _msg = (@:check2r _check._sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
                if (_cause.value != ((stdgo.Go.str() : stdgo.GoString))) {
                    _msg = (_msg + ((("\n\t" : stdgo.GoString) + _cause.value?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _cause.value = _msg?.__copy__();
            };
        };
        if (((vp != null && ((vp : Dynamic).__nil__ == null || !(vp : Dynamic).__nil__)) && (tp != null && ((tp : Dynamic).__nil__ == null || !(tp : Dynamic).__nil__)) : Bool)) {
            var _x = ((_x : stdgo._internal.go.types.Types_t_operand.T_operand)?.__copy__() : stdgo._internal.go.types.Types_t_operand.T_operand);
            return @:check2r vp._is(function(v:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                if ((v == null || (v : Dynamic).__nil__)) {
                    return false;
                };
                _x._typ = (@:checkr v ?? throw "null pointer dereference")._typ;
                return @:check2r tp._is(function(t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                    if ((t == null || (t : Dynamic).__nil__)) {
                        return false;
                    };
                    if (!@:check2 _x._convertibleTo(_check, (@:checkr t ?? throw "null pointer dereference")._typ, _cause)) {
                        _errorf(("cannot convert %s (in %s) to type %s (in %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr v ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(vp)), stdgo.Go.toInterface((@:checkr t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(tp)));
                        return false;
                    };
                    return true;
                });
            });
        } else if ((vp != null && ((vp : Dynamic).__nil__ == null || !(vp : Dynamic).__nil__))) {
            var _x = ((_x : stdgo._internal.go.types.Types_t_operand.T_operand)?.__copy__() : stdgo._internal.go.types.Types_t_operand.T_operand);
            return @:check2r vp._is(function(v:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                if ((v == null || (v : Dynamic).__nil__)) {
                    return false;
                };
                _x._typ = (@:checkr v ?? throw "null pointer dereference")._typ;
                if (!@:check2 _x._convertibleTo(_check, t, _cause)) {
                    _errorf(("cannot convert %s (in %s) to type %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr v ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(vp)), stdgo.Go.toInterface(t));
                    return false;
                };
                return true;
            });
        } else if ((tp != null && ((tp : Dynamic).__nil__ == null || !(tp : Dynamic).__nil__))) {
            return @:check2r tp._is(function(t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                if ((t == null || (t : Dynamic).__nil__)) {
                    return false;
                };
                if (!@:check2r _x._convertibleTo(_check, (@:checkr t ?? throw "null pointer dereference")._typ, _cause)) {
                    _errorf(("cannot convert %s to type %s (in %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface((@:checkr t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(stdgo.Go.asInterface(tp)));
                    return false;
                };
                return true;
            });
        };
        return false;
    }
}
