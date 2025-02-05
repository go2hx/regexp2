package stdgo._internal.go.types;
function _comparable(t:stdgo._internal.go.types.Types_type_.Type_, _dynamic:Bool, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>, _reportf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void):Bool {
        if ((_seen[t] ?? false)) {
            return true;
        };
        if (_seen == null) {
            _seen = (({
                final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.types.Types_type_.Type_, Bool>();
                x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.types.Types_type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
                x.__defaultValue__ = () -> false;
                {};
                cast x;
            } : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>) : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>);
        };
        _seen[t] = true;
        {
            final __type__ = stdgo._internal.go.types.Types__under._under(t);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                return (@:checkr _t ?? throw "null pointer dereference")._kind != ((25 : stdgo._internal.go.types.Types_basickind.BasicKind));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                for (__0 => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                    if (!stdgo._internal.go.types.Types__comparable._comparable((@:checkr _f ?? throw "null pointer dereference")._object._typ, _dynamic, _seen, null)) {
                        if (_reportf != null) {
                            _reportf(("struct containing %s cannot be compared" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._object._typ));
                        };
                        return false;
                    };
                };
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                if (!stdgo._internal.go.types.Types__comparable._comparable((@:checkr _t ?? throw "null pointer dereference")._elem, _dynamic, _seen, null)) {
                    if (_reportf != null) {
                        _reportf(("%s cannot be compared" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                    };
                    return false;
                };
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                if (((_dynamic && !stdgo._internal.go.types.Types__istypeparam._isTypeParam(t) : Bool) || @:check2r @:check2r _t._typeSet().isComparable(_seen) : Bool)) {
                    return true;
                };
                if (_reportf != null) {
                    if (@:check2r @:check2r _t._typeSet().isEmpty()) {
                        _reportf(("empty type set" : stdgo.GoString));
                    } else {
                        _reportf(("incomparable types in type set" : stdgo.GoString));
                    };
                };
            };
        };
        return false;
    }
