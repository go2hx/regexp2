package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Named_asInterface) class Named_static_extension {
    @:keep
    @:tdfield
    static public function _expandUnderlying( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _check = (@:checkr _n ?? throw "null pointer dereference")._check;
            if (((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && (@:checkr (@:checkr _check ?? throw "null pointer dereference")._conf ?? throw "null pointer dereference").__Trace : Bool)) {
                @:check2r _check._trace((@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos, ("-- Named.expandUnderlying %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)));
                (@:checkr _check ?? throw "null pointer dereference")._indent++;
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            (@:checkr _check ?? throw "null pointer dereference")._indent--;
                            @:check2r _check._trace((@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos, ("=> %s (tparams = %s, under = %s)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), stdgo.Go.toInterface(@:check2r (@:checkr _n ?? throw "null pointer dereference")._tparams._list()), stdgo.Go.toInterface((@:checkr _n ?? throw "null pointer dereference")._underlying));
                        };
                        a();
                    }) });
                };
            };
            stdgo._internal.go.types.Types__assert._assert((@:checkr (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._underlying != null);
            if (((@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt == null || ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__)) {
                (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt = stdgo._internal.go.types.Types_newcontext.newContext();
            };
            var _orig = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
            var _targs = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _orig ?? throw "null pointer dereference")._underlying) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                }, __64 = __tmp__._0, _unexpanded = __tmp__._1;
                if (_unexpanded) {
                    stdgo._internal.go.types.Types__assert._assert((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)));
                };
            };
            if (@:check2r (@:checkr _orig ?? throw "null pointer dereference")._tparams.len() != (@:check2r _targs.len())) {
                {
                    final __ret__:stdgo._internal.go.types.Types_type_.Type_ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _h = (@:check2r (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt._instanceHash(stdgo.Go.asInterface(_orig), @:check2r _targs._list())?.__copy__() : stdgo.GoString);
            var _n2 = (@:check2r (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt._update(_h?.__copy__(), stdgo.Go.asInterface(_orig), @:check2r @:check2r _n.typeArgs()._list(), stdgo.Go.asInterface(_n)) : stdgo._internal.go.types.Types_type_.Type_);
            stdgo._internal.go.types.Types__assert._assert(stdgo.Go.toInterface(stdgo.Go.asInterface(_n)) == (stdgo.Go.toInterface(_n2)));
            var _smap = (stdgo._internal.go.types.Types__makesubstmap._makeSubstMap(@:check2r (@:checkr _orig ?? throw "null pointer dereference")._tparams._list(), @:check2r _targs._list()) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
            var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
            if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
                _ctxt = @:check2r _check._context();
            };
            var _underlying = (@:check2r (@:checkr _n ?? throw "null pointer dereference")._check._subst((@:checkr (@:checkr _n ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pos, (@:checkr _orig ?? throw "null pointer dereference")._underlying, _smap, _n, _ctxt) : stdgo._internal.go.types.Types_type_.Type_);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_underlying) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _iface = __tmp__._0, __137 = __tmp__._1;
                if ((_iface != null && ((_iface : Dynamic).__nil__ == null || !(_iface : Dynamic).__nil__))) {
                    {
                        var __tmp__ = stdgo._internal.go.types.Types__replacerecvtype._replaceRecvType((@:checkr _iface ?? throw "null pointer dereference")._methods, stdgo.Go.asInterface(_orig), stdgo.Go.asInterface(_n)), _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = __tmp__._0, _copied:Bool = __tmp__._1;
                        if (_copied) {
                            if (stdgo.Go.toInterface(stdgo.Go.asInterface(_iface)) == (stdgo.Go.toInterface((@:checkr _orig ?? throw "null pointer dereference")._underlying))) {
                                var _old = _iface;
                                _iface = @:check2r _check._newInterface();
                                (@:checkr _iface ?? throw "null pointer dereference")._embeddeds = (@:checkr _old ?? throw "null pointer dereference")._embeddeds;
                                (@:checkr _iface ?? throw "null pointer dereference")._complete = (@:checkr _old ?? throw "null pointer dereference")._complete;
                                (@:checkr _iface ?? throw "null pointer dereference")._implicit = (@:checkr _old ?? throw "null pointer dereference")._implicit;
                                _underlying = stdgo.Go.asInterface(_iface);
                            };
                            (@:checkr _iface ?? throw "null pointer dereference")._methods = _methods;
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _underlying;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.types.Types_type_.Type_);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _lookupMethod( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        @:check2r _n._resolve();
        var __tmp__ = stdgo._internal.go.types.Types__lookupmethod._lookupMethod(@:check2r _n.origin()._methods, _pkg, _name?.__copy__(), _foldCase), _i:stdgo.GoInt = __tmp__._0, __24:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (-1 : stdgo.GoInt), _1 : null };
        };
        return { _0 : _i, _1 : @:check2r _n.method(_i) };
    }
    @:keep
    @:tdfield
    static public function _setUnderlying( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        if ((_n != null && ((_n : Dynamic).__nil__ == null || !(_n : Dynamic).__nil__))) {
            (@:checkr _n ?? throw "null pointer dereference")._underlying = _typ;
        };
    }
    @:keep
    @:tdfield
    static public function _under( _n0:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _n0:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n0;
        var _i_6452652 = 0i32;
        var _u1_6452539 = @:invalid_type null;
        var _u1_6452494 = @:default_value null;
        var _i_6452339:stdgo.GoInt = (0 : stdgo.GoInt);
        var _path_6452191:stdgo.Slice<stdgo._internal.go.types.Types_object.Object> = (null : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>);
        var _u1_6451830:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _u_6451458:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        var _n_6452647:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _ok_6452342:Bool = false;
        var _seen_6452107:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt>);
        var _keys_6452643:stdgo.Slice<#NULL_TYPE> = (new stdgo.Slice<#NULL_TYPE>(0, 0, ...[]) : stdgo.Slice<#NULL_TYPE>);
        var _loopBreak = false;
        var _n_6452097:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _check_6452078:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
        var _u1_6451664 = @:default_value null;
        var _u1_6452568:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _u1_6451788 = @:invalid_type null;
        var _n1_6451620:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _u_6451458 = @:check2r _n0.underlying();
                    var __blank__ = 0i32;
                    _gotoNext = 6451631i32;
                } else if (__value__ == (6451631i32)) {
                    {
                        final __type__ = _u_6451458;
                        if (__type__ == null) {
                            var _u1:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                            _u1_6451664 = _u1;
                            _gotoNext = 6451656i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _u1:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                            _u1_6451830 = _u1;
                            _gotoNext = 6451819i32;
                        } else {
                            var _u1:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            _u1_6451788 = _u1;
                            _gotoNext = 6451781i32;
                        };
                    };
                } else if (__value__ == (6451656i32)) {
                    throw stdgo.Go.toInterface(("nil underlying" : stdgo.GoString));
                    var __blank__ = _u1_6451664;
                    _gotoNext = 6451866i32;
                } else if (__value__ == (6451781i32)) {
                    return _u_6451458;
                    var __blank__ = _u1_6451788;
                    _gotoNext = 6451866i32;
                } else if (__value__ == (6451819i32)) {
                    _n1_6451620 = _u1_6451830;
                    var __blank__ = _u1_6451830;
                    _gotoNext = 6451866i32;
                } else if (__value__ == (6451866i32)) {
                    if (((@:checkr _n0 ?? throw "null pointer dereference")._check == null || ((@:checkr _n0 ?? throw "null pointer dereference")._check : Dynamic).__nil__)) {
                        _gotoNext = 6451885i32;
                    } else {
                        _gotoNext = 6452078i32;
                    };
                } else if (__value__ == (6451885i32)) {
                    throw stdgo.Go.toInterface(("Named.check == nil but type is incomplete" : stdgo.GoString));
                    _gotoNext = 6452078i32;
                } else if (__value__ == (6452078i32)) {
                    _check_6452078 = (@:checkr _n0 ?? throw "null pointer dereference")._check;
                    _n_6452097 = _n0;
                    _seen_6452107 = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, stdgo.GoInt>);
                    _gotoNext = 6452261i32;
                } else if (__value__ == (6452261i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 6452268i32;
                } else if (__value__ == (6452268i32)) {
                    if (!_loopBreak) {
                        _gotoNext = 6452272i32;
                    } else {
                        _gotoNext = 6452643i32;
                    };
                } else if (__value__ == (6452272i32)) {
                    _seen_6452107[_n_6452097] = (_seen_6452107.length);
                    _path_6452191 = (_path_6452191.__append__(stdgo.Go.asInterface((@:checkr _n_6452097 ?? throw "null pointer dereference")._obj)));
                    _n_6452097 = _n1_6451620;
                    {
                        {
                            var __tmp__ = (_seen_6452107 != null && _seen_6452107.exists(_n_6452097) ? { _0 : _seen_6452107[_n_6452097], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false });
                            _i_6452339 = @:tmpset0 __tmp__._0;
                            _ok_6452342 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_6452342) {
                            _gotoNext = 6452360i32;
                        } else {
                            _gotoNext = 6452439i32;
                        };
                    };
                } else if (__value__ == (6452360i32)) {
                    @:check2r _check_6452078._cycleError((_path_6452191.__slice__(_i_6452339) : stdgo.Slice<stdgo._internal.go.types.Types_object.Object>));
                    _u_6451458 = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    _gotoNext = 6452643i32;
                } else if (__value__ == (6452439i32)) {
                    _u_6451458 = @:check2r _n_6452097.underlying();
                    var __blank__ = 0i32;
                    _gotoNext = 6452460i32;
                } else if (__value__ == (6452460i32)) {
                    {
                        final __type__ = _u_6451458;
                        if (__type__ == null) {
                            var _u1:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                            _u1_6452494 = _u1;
                            _gotoNext = 6452486i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                            var _u1:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                            _u1_6452568 = _u1;
                            _gotoNext = 6452557i32;
                        } else {
                            var _u1:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                            _u1_6452539 = _u1;
                            _gotoNext = 6452532i32;
                        };
                    };
                    _gotoNext = 6452268i32;
                } else if (__value__ == (6452486i32)) {
                    _u_6451458 = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    _loopBreak = true;
                    _gotoNext = 6452268i32;
                } else if (__value__ == (6452532i32)) {
                    _loopBreak = true;
                    _gotoNext = 6452268i32;
                } else if (__value__ == (6452557i32)) {
                    _n1_6451620 = _u1_6452568;
                    var __blank__ = _u1_6452568;
                    _gotoNext = 6452268i32;
                } else if (__value__ == (6452643i32)) {
                    _keys_6452643 = (new stdgo.Slice<#NULL_TYPE>(0, 0, ...[]) : stdgo.Slice<#NULL_TYPE>);
                    for (_key => _ in _seen_6452107) {
                        _keys_6452643 = (_keys_6452643.__append__(_key));
                    };
                    if ((0i32 : stdgo.GoInt) < (_seen_6452107.length)) {
                        _gotoNext = 6453067i32;
                    } else {
                        _gotoNext = 6453072i32;
                    };
                } else if (__value__ == (6452663i32)) {
                    _n_6452647 = _keys_6452643[@:invalid_index_invalid_type _i_6452652];
                    if ((@:checkr (@:checkr _n_6452647 ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._pkg != ((@:checkr _check_6452078 ?? throw "null pointer dereference")._pkg)) {
                        _gotoNext = 6452984i32;
                    } else {
                        _gotoNext = 6453050i32;
                    };
                } else if (__value__ == (6452984i32)) {
                    throw stdgo.Go.toInterface(("imported type with unresolved underlying type" : stdgo.GoString));
                    _gotoNext = 6453050i32;
                } else if (__value__ == (6453050i32)) {
                    (@:checkr _n_6452647 ?? throw "null pointer dereference")._underlying = _u_6451458;
                    _i_6452652++;
                    _gotoNext = 6453068i32;
                } else if (__value__ == (6453067i32)) {
                    _i_6452652 = 0i32;
                    _gotoNext = 6453068i32;
                } else if (__value__ == (6453068i32)) {
                    if (_i_6452652 < (_keys_6452643.length)) {
                        _gotoNext = 6452663i32;
                    } else {
                        _gotoNext = 6453072i32;
                    };
                } else if (__value__ == (6453072i32)) {
                    return _u_6451458;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        return @:check2r _t._resolve()._underlying;
    }
    @:keep
    @:tdfield
    static public function addMethod( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        stdgo._internal.go.types.Types__assert._assert(((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__));
        @:check2r _t._resolve();
        {
            var __tmp__ = stdgo._internal.go.types.Types__lookupmethod._lookupMethod((@:checkr _t ?? throw "null pointer dereference")._methods, (@:checkr _m ?? throw "null pointer dereference")._object._pkg, (@:checkr _m ?? throw "null pointer dereference")._object._name?.__copy__(), false), _i:stdgo.GoInt = __tmp__._0, __24:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _t ?? throw "null pointer dereference")._methods = ((@:checkr _t ?? throw "null pointer dereference")._methods.__append__(_m));
            };
        };
    }
    @:keep
    @:tdfield
    static public function setUnderlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _underlying:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        stdgo._internal.go.types.Types__assert._assert(((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__));
        if (_underlying == null) {
            throw stdgo.Go.toInterface(("underlying type must not be nil" : stdgo.GoString));
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_underlying) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, __8 = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(("underlying type must not be *Named" : stdgo.GoString));
            };
        };
        @:check2r _t._resolve()._underlying = _underlying;
        if ((@:checkr _t ?? throw "null pointer dereference")._fromRHS == null) {
            (@:checkr _t ?? throw "null pointer dereference")._fromRHS = _underlying;
        };
    }
    @:keep
    @:tdfield
    static public function _expandMethod( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        var _origm = @:check2r (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig.method(_i);
        stdgo._internal.go.types.Types__assert._assert((_origm != null && ((_origm : Dynamic).__nil__ == null || !(_origm : Dynamic).__nil__)));
        var _check = (@:checkr _t ?? throw "null pointer dereference")._check;
        if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
            @:check2r _check._objDecl(stdgo.Go.asInterface(_origm), null);
        };
        var _origSig = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _origm ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        var __tmp__ = stdgo._internal.go.types.Types__deref._deref(@:check2r @:check2r _origSig.recv().type()), _rbase:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __24:Bool = __tmp__._1;
        if (stdgo.Go.toInterface(_rbase) == (stdgo.Go.toInterface(stdgo.Go.asInterface(_t)))) {
            return _origm;
        };
        var _sig = _origSig;
        if (@:check2r @:check2r _origSig.recvTypeParams().len() == (@:check2r (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs.len())) {
            var _smap = (stdgo._internal.go.types.Types__makesubstmap._makeSubstMap(@:check2r @:check2r _origSig.recvTypeParams()._list(), @:check2r (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs._list()) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
            var _ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
            if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
                _ctxt = @:check2r _check._context();
            };
            _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _check._subst((@:checkr _origm ?? throw "null pointer dereference")._object._pos, stdgo.Go.asInterface(_origSig), _smap, _t, _ctxt)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        };
        if (_sig == (_origSig)) {
            var _copy = ((_origSig : stdgo._internal.go.types.Types_signature.Signature)?.__copy__() : stdgo._internal.go.types.Types_signature.Signature);
            _sig = (stdgo.Go.setRef(_copy) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        };
        var _rtyp:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        if (@:check2r _origm._hasPtrRecv()) {
            _rtyp = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newpointer.newPointer(stdgo.Go.asInterface(_t)));
        } else {
            _rtyp = stdgo.Go.asInterface(_t);
        };
        (@:checkr _sig ?? throw "null pointer dereference")._recv = stdgo._internal.go.types.Types__substvar._substVar((@:checkr _origSig ?? throw "null pointer dereference")._recv, _rtyp);
        return stdgo._internal.go.types.Types__substfunc._substFunc(_origm, stdgo.Go.asInterface(_sig));
    }
    @:keep
    @:tdfield
    static public function method( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2r _t._resolve();
            if ((@:check2r _t._state() >= (2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState) : Bool)) {
                return (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
            };
            stdgo._internal.go.types.Types__assert._assert(((@:checkr _t ?? throw "null pointer dereference")._inst != null && (((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__)));
            var _orig = (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
            @:check2 (@:checkr _t ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _t ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if (((@:checkr _t ?? throw "null pointer dereference")._methods.length) != (((@:checkr _orig ?? throw "null pointer dereference")._methods.length))) {
                stdgo._internal.go.types.Types__assert._assert(((@:checkr _t ?? throw "null pointer dereference")._methods.length) == ((0 : stdgo.GoInt)));
                (@:checkr _t ?? throw "null pointer dereference")._methods = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>(((@:checkr _orig ?? throw "null pointer dereference")._methods.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
            };
            if (((@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)] == null || ((@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)] : Dynamic).__nil__)) {
                stdgo._internal.go.types.Types__assert._assert(((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt != null && (((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__ == null || !((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt : Dynamic).__nil__)));
                (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)] = @:check2r _t._expandMethod(_i);
                (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._expandedMethods++;
                if ((@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._expandedMethods == (((@:checkr _orig ?? throw "null pointer dereference")._methods.length))) {
                    @:check2r _t._setState((2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
                    (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt = null;
                };
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = (@:checkr _t ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function numMethods( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        return (@:check2r @:check2r _t.origin()._resolve()._methods.length);
    }
    @:keep
    @:tdfield
    static public function typeArgs( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_typelist.TypeList> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__)) {
            return null;
        };
        return (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._targs;
    }
    @:keep
    @:tdfield
    static public function setTypeParams( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        stdgo._internal.go.types.Types__assert._assert(((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__));
        @:check2r _t._resolve()._tparams = stdgo._internal.go.types.Types__bindtparams._bindTParams(_tparams);
    }
    @:keep
    @:tdfield
    static public function typeParams( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        return @:check2r _t._resolve()._tparams;
    }
    @:keep
    @:tdfield
    static public function origin( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__)) {
            return _t;
        };
        return (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
    }
    @:keep
    @:tdfield
    static public function obj( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        if (((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__)) {
            return (@:checkr _t ?? throw "null pointer dereference")._obj;
        };
        return (@:checkr (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._obj;
    }
    @:keep
    @:tdfield
    static public function _cleanup( _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _t;
        stdgo._internal.go.types.Types__assert._assert((((@:checkr _t ?? throw "null pointer dereference")._inst == null || ((@:checkr _t ?? throw "null pointer dereference")._inst : Dynamic).__nil__) || ((@:checkr (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._inst == null || ((@:checkr (@:checkr (@:checkr _t ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig ?? throw "null pointer dereference")._inst : Dynamic).__nil__) : Bool));
        {
            final __type__ = (@:checkr _t ?? throw "null pointer dereference")._underlying;
            if (__type__ == null) {
                if (@:check2r @:check2r _t.typeArgs().len() == ((0 : stdgo.GoInt))) {
                    throw stdgo.Go.toInterface(("nil underlying" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                @:check2r _t._under();
            };
        };
        (@:checkr _t ?? throw "null pointer dereference")._check = null;
    }
    @:keep
    @:tdfield
    static public function _setState( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>, _state:stdgo._internal.go.types.Types_t_namedstate.T_namedState):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference")._state_), (_state : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _state( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_t_namedstate.T_namedState {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        return (stdgo._internal.sync.atomic_.Atomic__loaduint32.loadUint32(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference")._state_)) : stdgo._internal.go.types.Types_t_namedstate.T_namedState);
    }
    @:keep
    @:tdfield
    static public function _resolve( _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> {
        @:recv var _n:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = _n;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:check2r _n._state() >= (1u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState) : Bool)) {
                return _n;
            };
            @:check2 (@:checkr _n ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2 (@:checkr _n ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:check2r _n._state() >= (1u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState) : Bool)) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _n;
                };
            };
            if (((@:checkr _n ?? throw "null pointer dereference")._inst != null && (((@:checkr _n ?? throw "null pointer dereference")._inst : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference")._inst : Dynamic).__nil__))) {
                stdgo._internal.go.types.Types__assert._assert((@:checkr _n ?? throw "null pointer dereference")._underlying == null);
                stdgo._internal.go.types.Types__assert._assert((@:checkr _n ?? throw "null pointer dereference")._loader == null);
                var _orig = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._orig;
                @:check2r _orig._resolve();
                var _underlying = (@:check2r _n._expandUnderlying() : stdgo._internal.go.types.Types_type_.Type_);
                (@:checkr _n ?? throw "null pointer dereference")._tparams = (@:checkr _orig ?? throw "null pointer dereference")._tparams;
                (@:checkr _n ?? throw "null pointer dereference")._underlying = _underlying;
                (@:checkr _n ?? throw "null pointer dereference")._fromRHS = (@:checkr _orig ?? throw "null pointer dereference")._fromRHS;
                if (((@:checkr _orig ?? throw "null pointer dereference")._methods.length) == ((0 : stdgo.GoInt))) {
                    @:check2r _n._setState((2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
                    (@:checkr (@:checkr _n ?? throw "null pointer dereference")._inst ?? throw "null pointer dereference")._ctxt = null;
                } else {
                    @:check2r _n._setState((1u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _n;
                };
            };
            if ((@:checkr _n ?? throw "null pointer dereference")._loader != null) {
                stdgo._internal.go.types.Types__assert._assert((@:checkr _n ?? throw "null pointer dereference")._underlying == null);
                stdgo._internal.go.types.Types__assert._assert(@:check2r @:check2r _n.typeArgs().len() == ((0 : stdgo.GoInt)));
                var __tmp__ = (@:checkr _n ?? throw "null pointer dereference")._loader(_n), _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = __tmp__._0, _underlying:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._1, _methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = __tmp__._2;
                (@:checkr _n ?? throw "null pointer dereference")._tparams = stdgo._internal.go.types.Types__bindtparams._bindTParams(_tparams);
                (@:checkr _n ?? throw "null pointer dereference")._underlying = _underlying;
                (@:checkr _n ?? throw "null pointer dereference")._fromRHS = _underlying;
                (@:checkr _n ?? throw "null pointer dereference")._methods = _methods;
                (@:checkr _n ?? throw "null pointer dereference")._loader = null;
            };
            @:check2r _n._setState((2u32 : stdgo._internal.go.types.Types_t_namedstate.T_namedState));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _n;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
            };
        };
    }
}
