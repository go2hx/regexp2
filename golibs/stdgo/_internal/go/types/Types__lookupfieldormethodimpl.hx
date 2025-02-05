package stdgo._internal.go.types;
function _lookupFieldOrMethodImpl(t:stdgo._internal.go.types.Types_type_.Type_, _addressable:Bool, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } {
        var _obj = (null : stdgo._internal.go.types.Types_object.Object), _index = (null : stdgo.Slice<stdgo.GoInt>), _indirect = false;
        if (_name == (("_" : stdgo.GoString))) {
            return { _0 : _obj, _1 : _index, _2 : _indirect };
        };
        var __tmp__ = stdgo._internal.go.types.Types__deref._deref(t), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
        if (_isPtr) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under(_typ)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return { _0 : _obj, _1 : _index, _2 : _indirect };
                };
            };
        };
        var _current = (new stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>(1, 1, ...[(new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, (null : stdgo.Slice<stdgo.GoInt>), _isPtr, false) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)])) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
        var _seen:stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup = ({} : stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup);
        while (((_current.length) > (0 : stdgo.GoInt) : Bool)) {
            var _next:stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
            for (__0 => _e in _current) {
                var _typ = (_e._typ : stdgo._internal.go.types.Types_type_.Type_);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                    }, _named = __tmp__._0, __1 = __tmp__._1;
                    if ((_named != null && ((_named : Dynamic).__nil__ == null || !(_named : Dynamic).__nil__))) {
                        {
                            var _alt = @:check2 _seen._lookup(_named);
                            if ((_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__))) {
                                continue;
                            };
                        };
                        @:check2 _seen._add(_named);
                        {
                            var __tmp__ = @:check2r _named._lookupMethod(_pkg, _name?.__copy__(), _foldCase), _i:stdgo.GoInt = __tmp__._0, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
                            if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                                _index = stdgo._internal.go.types.Types__concat._concat(_e._index, _i);
                                if (((_obj != null) || _e._multiples : Bool)) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : _index, _2 : false };
                                        _obj = __tmp__._0;
                                        _index = __tmp__._1;
                                        _indirect = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _obj = stdgo.Go.asInterface(_m);
                                _indirect = _e._indirect;
                                continue;
                            };
                        };
                    };
                };
                {
                    final __type__ = stdgo._internal.go.types.Types__under._under(_typ);
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                        for (_i => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                            if (@:check2r _f._sameId(_pkg, _name?.__copy__())) {
                                stdgo._internal.go.types.Types__assert._assert((@:checkr _f ?? throw "null pointer dereference")._object._typ != null);
                                _index = stdgo._internal.go.types.Types__concat._concat(_e._index, _i);
                                if (((_obj != null) || _e._multiples : Bool)) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : _index, _2 : false };
                                        _obj = __tmp__._0;
                                        _index = __tmp__._1;
                                        _indirect = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _obj = stdgo.Go.asInterface(_f);
                                _indirect = _e._indirect;
                                continue;
                            };
                            if (((_obj == null) && (@:checkr _f ?? throw "null pointer dereference")._embedded : Bool)) {
                                var __tmp__ = stdgo._internal.go.types.Types__deref._deref((@:checkr _f ?? throw "null pointer dereference")._object._typ), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
                                _next = (_next.__append__((new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, stdgo._internal.go.types.Types__concat._concat(_e._index, _i), (_e._indirect || _isPtr : Bool), _e._multiples) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)));
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                        {
                            var __tmp__ = @:check2r @:check2r _t._typeSet().lookupMethod(_pkg, _name?.__copy__(), _foldCase), _i:stdgo.GoInt = __tmp__._0, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __tmp__._1;
                            if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                                stdgo._internal.go.types.Types__assert._assert((@:checkr _m ?? throw "null pointer dereference")._object._typ != null);
                                _index = stdgo._internal.go.types.Types__concat._concat(_e._index, _i);
                                if (((_obj != null) || _e._multiples : Bool)) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : _index, _2 : false };
                                        _obj = __tmp__._0;
                                        _index = __tmp__._1;
                                        _indirect = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _obj = stdgo.Go.asInterface(_m);
                                _indirect = _e._indirect;
                            };
                        };
                    };
                };
            };
            if (_obj != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>), _1 : false };
                    }, _f = __tmp__._0, __1 = __tmp__._1;
                    if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                        if (((@:check2r _f._hasPtrRecv() && !_indirect : Bool) && !_addressable : Bool)) {
                            return {
                                final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : (null : stdgo.Slice<stdgo.GoInt>), _2 : true };
                                _obj = __tmp__._0;
                                _index = __tmp__._1;
                                _indirect = __tmp__._2;
                                __tmp__;
                            };
                        };
                    };
                };
                return { _0 : _obj, _1 : _index, _2 : _indirect };
            };
            _current = stdgo._internal.go.types.Types__consolidatemultiples._consolidateMultiples(_next);
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo.GoInt>; var _2 : Bool; } = { _0 : (null : stdgo._internal.go.types.Types_object.Object), _1 : (null : stdgo.Slice<stdgo.GoInt>), _2 : false };
            _obj = __tmp__._0;
            _index = __tmp__._1;
            _indirect = __tmp__._2;
            __tmp__;
        };
    }
