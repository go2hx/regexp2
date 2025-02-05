package stdgo._internal.go.types;
function _rangeKeyVal(_typ:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.types.Types_type_.Type_; } {
        var _key = (null : stdgo._internal.go.types.Types_type_.Type_), _val = (null : stdgo._internal.go.types.Types_type_.Type_);
        {
            final __type__ = stdgo._internal.go.types.Types__arrayptrderef._arrayPtrDeref(_typ);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                if (stdgo._internal.go.types.Types__isstring._isString(stdgo.Go.asInterface(_typ))) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.types.Types_type_.Type_; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), _1 : stdgo._internal.go.types.Types__universerune._universeRune };
                        _key = __tmp__._0;
                        _val = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.types.Types_type_.Type_; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), _1 : (@:checkr _typ ?? throw "null pointer dereference")._elem };
                    _key = __tmp__._0;
                    _val = __tmp__._1;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.types.Types_type_.Type_; } = { _0 : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), _1 : (@:checkr _typ ?? throw "null pointer dereference")._elem };
                    _key = __tmp__._0;
                    _val = __tmp__._1;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.types.Types_type_.Type_; } = { _0 : (@:checkr _typ ?? throw "null pointer dereference")._key, _1 : (@:checkr _typ ?? throw "null pointer dereference")._elem };
                    _key = __tmp__._0;
                    _val = __tmp__._1;
                    __tmp__;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo._internal.go.types.Types_type_.Type_; } = { _0 : (@:checkr _typ ?? throw "null pointer dereference")._elem, _1 : stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]) };
                    _key = __tmp__._0;
                    _val = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return { _0 : _key, _1 : _val };
    }
