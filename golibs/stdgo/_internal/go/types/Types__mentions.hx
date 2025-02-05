package stdgo._internal.go.types;
function _mentions(t:stdgo._internal.go.types.Types_type_.Type_, _typ:stdgo._internal.go.types.Types_type_.Type_):Bool {
        {
            final __type__ = t;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                for (__8 => _e in (@:checkr t ?? throw "null pointer dereference")._embeddeds) {
                    if (stdgo._internal.go.types.Types__mentions._mentions(_e, _typ)) {
                        return true;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                var t:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value;
                for (__0 => _t in (@:checkr t ?? throw "null pointer dereference")._terms) {
                    if (stdgo._internal.go.types.Types__mentions._mentions((@:checkr _t ?? throw "null pointer dereference")._typ, _typ)) {
                        return true;
                    };
                };
            } else {
                var t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                if (stdgo._internal.go.types.Types_identical.identical(t, _typ)) {
                    return true;
                };
            };
        };
        return false;
    }
