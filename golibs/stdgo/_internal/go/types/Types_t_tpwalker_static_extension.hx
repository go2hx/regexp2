package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_tpWalker_asInterface) class T_tpWalker_static_extension {
    @:keep
    @:tdfield
    static public function _varList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker> = _w;
        for (__0 => _v in _list) {
            if (@:check2r _w._isParameterized((@:checkr _v ?? throw "null pointer dereference")._object._typ)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _isParameterized( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker>, _typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_tpwalker.T_tpWalker> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _res = false;
        try {
            {
                var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._seen != null && (@:checkr _w ?? throw "null pointer dereference")._seen.exists(_typ) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._seen[_typ], _1 : true } : { _0 : false, _1 : false }), _x:Bool = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return _res = _x;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._seen[_typ] = false;
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _w ?? throw "null pointer dereference")._seen[_typ] = _res;
                    };
                    a();
                }) });
            };
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = @:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._elem);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = @:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._elem);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = @:check2r _w._varList((@:checkr _t ?? throw "null pointer dereference")._fields);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = @:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._base);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && @:check2r _w._varList((@:checkr _t ?? throw "null pointer dereference")._vars) : Bool);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = ((((@:checkr _t ?? throw "null pointer dereference")._params != null && (((@:checkr _t ?? throw "null pointer dereference")._params : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._params : Dynamic).__nil__)) && @:check2r _w._varList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._params ?? throw "null pointer dereference")._vars) : Bool) || (((@:checkr _t ?? throw "null pointer dereference")._results != null && (((@:checkr _t ?? throw "null pointer dereference")._results : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._results : Dynamic).__nil__)) && @:check2r _w._varList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars) : Bool) : Bool);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                    var _tset = @:check2r _t._typeSet();
                    for (__8 => _m in (@:checkr _tset ?? throw "null pointer dereference")._methods) {
                        if (@:check2r _w._isParameterized((@:checkr _m ?? throw "null pointer dereference")._object._typ)) {
                            {
                                final __ret__:Bool = _res = true;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    {
                        final __ret__:Bool = _res = @:check2r _tset._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
                            return ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && @:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._typ) : Bool);
                        });
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = (@:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._key) || @:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._elem) : Bool);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = @:check2r _w._isParameterized((@:checkr _t ?? throw "null pointer dereference")._elem);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                    for (__8 => _t in @:check2r @:check2r _t.typeArgs()._list()) {
                        if (@:check2r _w._isParameterized(_t)) {
                            {
                                final __ret__:Bool = _res = true;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value;
                    {
                        final __ret__:Bool = _res = (stdgo._internal.go.types.Types__tparamindex._tparamIndex((@:checkr _w ?? throw "null pointer dereference")._tparams, _t) >= (0 : stdgo.GoInt) : Bool);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected %T" : stdgo.GoString), stdgo.Go.toInterface(_typ)));
                };
            };
            {
                final __ret__:Bool = _res = false;
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
                return _res;
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
                return _res;
            };
        };
    }
}
