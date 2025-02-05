package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.StdSizes_asInterface) class StdSizes_static_extension {
    @:keep
    @:tdfield
    static public function sizeof( _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = _s;
        {
            final __type__ = stdgo._internal.go.types.Types__under._under(t);
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types__assert._assert(stdgo._internal.go.types.Types__istyped._isTyped(t));
                var _k = ((@:checkr _t ?? throw "null pointer dereference")._kind : stdgo._internal.go.types.Types_basickind.BasicKind);
                if (((_k : stdgo.GoInt) < (stdgo._internal.go.types.Types__basicsizes._basicSizes.length) : Bool)) {
                    {
                        var _s = (stdgo._internal.go.types.Types__basicsizes._basicSizes[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
                        if ((_s > (0 : stdgo.GoUInt8) : Bool)) {
                            return (_s : stdgo.GoInt64);
                        };
                    };
                };
                if (_k == ((17 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                    return ((@:checkr _s ?? throw "null pointer dereference").wordSize * (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                var _n = ((@:checkr _t ?? throw "null pointer dereference")._len : stdgo.GoInt64);
                if ((_n <= (0i64 : stdgo.GoInt64) : Bool)) {
                    return (0i64 : stdgo.GoInt64);
                };
                var _esize = (@:check2r _s.sizeof((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo.GoInt64);
                if ((_esize < (0i64 : stdgo.GoInt64) : Bool)) {
                    return (-1i64 : stdgo.GoInt64);
                };
                if (_esize == ((0i64 : stdgo.GoInt64))) {
                    return (0i64 : stdgo.GoInt64);
                };
                var _a = (@:check2r _s.alignof_((@:checkr _t ?? throw "null pointer dereference")._elem) : stdgo.GoInt64);
                var _ea = (stdgo._internal.go.types.Types__align._align(_esize, _a) : stdgo.GoInt64);
                if ((_ea < (0i64 : stdgo.GoInt64) : Bool)) {
                    return (-1i64 : stdgo.GoInt64);
                };
                var _n1 = (_n - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                {};
                if (((_n1 > (0i64 : stdgo.GoInt64) : Bool) && (_ea > ((9223372036854775807i64 : stdgo.GoInt64) / _n1 : stdgo.GoInt64) : Bool) : Bool)) {
                    return (-1i64 : stdgo.GoInt64);
                };
                return ((_ea * _n1 : stdgo.GoInt64) + _esize : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                return ((@:checkr _s ?? throw "null pointer dereference").wordSize * (3i64 : stdgo.GoInt64) : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                var _n = (@:check2r _t.numFields() : stdgo.GoInt);
                if (_n == ((0 : stdgo.GoInt))) {
                    return (0i64 : stdgo.GoInt64);
                };
                var _offsets = @:check2r _s.offsetsof((@:checkr _t ?? throw "null pointer dereference")._fields);
                var _offs = (_offsets[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt64);
                var _size = (@:check2r _s.sizeof((@:checkr (@:checkr _t ?? throw "null pointer dereference")._fields[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
                if (((_offs < (0i64 : stdgo.GoInt64) : Bool) || (_size < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    return (-1i64 : stdgo.GoInt64);
                };
                return (_offs + _size : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(t));
                return ((@:checkr _s ?? throw "null pointer dereference").wordSize * (2i64 : stdgo.GoInt64) : stdgo.GoInt64);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        return (@:checkr _s ?? throw "null pointer dereference").wordSize;
    }
    @:keep
    @:tdfield
    static public function offsetsof( _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>, _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo.GoInt64> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = _s;
        var _offsets = (new stdgo.Slice<stdgo.GoInt64>((_fields.length : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _offs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        for (_i => _f in _fields) {
            if ((_offs < (0i64 : stdgo.GoInt64) : Bool)) {
                _offsets[(_i : stdgo.GoInt)] = (-1i64 : stdgo.GoInt64);
                continue;
            };
            var _a = (@:check2r _s.alignof_((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
            _offs = stdgo._internal.go.types.Types__align._align(_offs, _a);
            _offsets[(_i : stdgo.GoInt)] = _offs;
            {
                var _d = (@:check2r _s.sizeof((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
                if (((_d >= (0i64 : stdgo.GoInt64) : Bool) && (_offs >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    _offs = (_offs + (_d) : stdgo.GoInt64);
                } else {
                    _offs = (-1i64 : stdgo.GoInt64);
                };
            };
        };
        return _offsets;
    }
    @:keep
    @:tdfield
    static public function alignof_( _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes>, t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_stdsizes.StdSizes> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _result = (0 : stdgo.GoInt64);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        stdgo._internal.go.types.Types__assert._assert((_result >= (1i64 : stdgo.GoInt64) : Bool));
                    };
                    a();
                }) });
            };
            {
                final __type__ = stdgo._internal.go.types.Types__under._under(t);
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                    {
                        final __ret__:stdgo.GoInt64 = _result = @:check2r _s.alignof_((@:checkr _t ?? throw "null pointer dereference")._elem);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                    if ((((@:checkr _t ?? throw "null pointer dereference")._fields.length == (0 : stdgo.GoInt)) && stdgo._internal.go.types.Types___issyncatomicalign64.__IsSyncAtomicAlign64(t) : Bool)) {
                        {
                            final __ret__:stdgo.GoInt64 = _result = (8i64 : stdgo.GoInt64);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _max = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    for (__0 => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                        {
                            var _a = (@:check2r _s.alignof_((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.GoInt64);
                            if ((_a > _max : Bool)) {
                                _max = _a;
                            };
                        };
                    };
                    {
                        final __ret__:stdgo.GoInt64 = _result = _max;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(t));
                    {
                        final __ret__:stdgo.GoInt64 = _result = (@:checkr _s ?? throw "null pointer dereference").wordSize;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                    if ((@:check2r _t.info() & (32 : stdgo._internal.go.types.Types_basicinfo.BasicInfo) : stdgo._internal.go.types.Types_basicinfo.BasicInfo) != ((0 : stdgo._internal.go.types.Types_basicinfo.BasicInfo))) {
                        {
                            final __ret__:stdgo.GoInt64 = _result = (@:checkr _s ?? throw "null pointer dereference").wordSize;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                    var _t:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
            var _a = (@:check2r _s.sizeof(t) : stdgo.GoInt64);
            if ((_a < (1i64 : stdgo.GoInt64) : Bool)) {
                {
                    final __ret__:stdgo.GoInt64 = _result = (1i64 : stdgo.GoInt64);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (stdgo._internal.go.types.Types__iscomplex._isComplex(t)) {
                _a = (_a / ((2i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            };
            if ((_a > (@:checkr _s ?? throw "null pointer dereference").maxAlign : Bool)) {
                {
                    final __ret__:stdgo.GoInt64 = _result = (@:checkr _s ?? throw "null pointer dereference").maxAlign;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo.GoInt64 = _result = _a;
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
                return _result;
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
                return _result;
            };
        };
    }
}
