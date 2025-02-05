package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_cycleFinder_asInterface) class T_cycleFinder_static_extension {
    @:keep
    @:tdfield
    static public function _varList( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder> = _w;
        for (__0 => _v in _list) {
            @:check2r _w._typ((@:checkr _v ?? throw "null pointer dereference")._object._typ);
        };
    }
    @:keep
    @:tdfield
    static public function _typ( _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.go.types.Types_t_cyclefinder.T_cycleFinder> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((@:checkr _w ?? throw "null pointer dereference")._seen[_typ] ?? false)) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                    }, _tpar = __tmp__._0, __0 = __tmp__._1;
                    if ((_tpar != null && ((_tpar : Dynamic).__nil__ == null || !(_tpar : Dynamic).__nil__))) {
                        {
                            var _i = (stdgo._internal.go.types.Types__tparamindex._tparamIndex((@:checkr _w ?? throw "null pointer dereference")._tparams, _tpar) : stdgo.GoInt);
                            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                                (@:checkr _w ?? throw "null pointer dereference")._inferred[(_i : stdgo.GoInt)] = (null : stdgo._internal.go.types.Types_type_.Type_);
                            };
                        };
                    };
                };
                return;
            };
            (@:checkr _w ?? throw "null pointer dereference")._seen[_typ] = true;
            {
                var _a0 = (@:checkr _w ?? throw "null pointer dereference")._seen;
                var _a1 = _typ;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.remove(_a1) });
            };
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                    @:check2r _w._varList((@:checkr _t ?? throw "null pointer dereference")._fields);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._base);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                    if (((@:checkr _t ?? throw "null pointer dereference")._params != null && (((@:checkr _t ?? throw "null pointer dereference")._params : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._params : Dynamic).__nil__))) {
                        @:check2r _w._varList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._params ?? throw "null pointer dereference")._vars);
                    };
                    if (((@:checkr _t ?? throw "null pointer dereference")._results != null && (((@:checkr _t ?? throw "null pointer dereference")._results : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference")._results : Dynamic).__nil__))) {
                        @:check2r _w._varList((@:checkr (@:checkr _t ?? throw "null pointer dereference")._results ?? throw "null pointer dereference")._vars);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value;
                    for (__0 => _t in (@:checkr _t ?? throw "null pointer dereference")._terms) {
                        @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._typ);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                    for (__8 => _m in (@:checkr _t ?? throw "null pointer dereference")._methods) {
                        @:check2r _w._typ((@:checkr _m ?? throw "null pointer dereference")._object._typ);
                    };
                    for (__17 => _t in (@:checkr _t ?? throw "null pointer dereference")._embeddeds) {
                        @:check2r _w._typ(_t);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._key);
                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                    @:check2r _w._typ((@:checkr _t ?? throw "null pointer dereference")._elem);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                    for (__8 => _tpar in @:check2r @:check2r _t.typeArgs()._list()) {
                        @:check2r _w._typ(_tpar);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value;
                    {
                        var _i = (stdgo._internal.go.types.Types__tparamindex._tparamIndex((@:checkr _w ?? throw "null pointer dereference")._tparams, _t) : stdgo.GoInt);
                        if (((_i >= (0 : stdgo.GoInt) : Bool) && ((@:checkr _w ?? throw "null pointer dereference")._inferred[(_i : stdgo.GoInt)] != null) : Bool)) {
                            @:check2r _w._typ((@:checkr _w ?? throw "null pointer dereference")._inferred[(_i : stdgo.GoInt)]);
                        };
                    };
                } else {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected %T" : stdgo.GoString), stdgo.Go.toInterface(_typ)));
                };
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
                return;
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
                return;
            };
        };
    }
}
