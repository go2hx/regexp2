package stdgo._internal.go.types;
function newMethodSet(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(t) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, _t = __tmp__._0, __0 = __tmp__._1;
            if (((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && stdgo._internal.go.types.Types__ispointer._isPointer(stdgo.Go.asInterface(_t)) : Bool)) {
                return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptymethodset._emptyMethodSet) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
            };
        };
        var _base:stdgo._internal.go.types.Types_t_methodset.T_methodSet = (null : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
        var __tmp__ = stdgo._internal.go.types.Types__deref._deref(t), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
        if ((_isPtr && stdgo._internal.go.types.Types_isinterface.isInterface(_typ) : Bool)) {
            return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptymethodset._emptyMethodSet) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        };
        var _current = (new stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>(1, 1, ...[(new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, (null : stdgo.Slice<stdgo.GoInt>), _isPtr, false) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)])) : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
        var _seen:stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup = ({} : stdgo._internal.go.types.Types_t_instancelookup.T_instanceLookup);
        while (((_current.length) > (0 : stdgo.GoInt) : Bool)) {
            var _next:stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType> = (null : stdgo.Slice<stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType>);
            var _fset:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
            var _mset:stdgo._internal.go.types.Types_t_methodset.T_methodSet = (null : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
            for (__1 => _e in _current) {
                var _typ = (_e._typ : stdgo._internal.go.types.Types_type_.Type_);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                    }, _named = __tmp__._0, __2 = __tmp__._1;
                    if ((_named != null && ((_named : Dynamic).__nil__ == null || !(_named : Dynamic).__nil__))) {
                        {
                            var _alt = @:check2 _seen._lookup(_named);
                            if ((_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__))) {
                                continue;
                            };
                        };
                        @:check2 _seen._add(_named);
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < @:check2r _named.numMethods() : Bool)) {
                                _mset = _mset._addOne(@:check2r _named.method(_i), stdgo._internal.go.types.Types__concat._concat(_e._index, _i), _e._indirect, _e._multiples);
                                _i++;
                            };
                        };
                    };
                };
                {
                    final __type__ = stdgo._internal.go.types.Types__under._under(_typ);
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                        for (_i => _f in (@:checkr _t ?? throw "null pointer dereference")._fields) {
                            if (_fset == null) {
                                _fset = (({
                                    final x = new stdgo.GoMap.GoStringMap<Bool>();
                                    x.__defaultValue__ = () -> false;
                                    {};
                                    x;
                                } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                            };
                            _fset[@:check2r _f.id()] = true;
                            if ((@:checkr _f ?? throw "null pointer dereference")._embedded) {
                                var __tmp__ = stdgo._internal.go.types.Types__deref._deref((@:checkr _f ?? throw "null pointer dereference")._object._typ), _typ:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, _isPtr:Bool = __tmp__._1;
                                _next = (_next.__append__((new stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType(_typ, stdgo._internal.go.types.Types__concat._concat(_e._index, _i), (_e._indirect || _isPtr : Bool), _e._multiples) : stdgo._internal.go.types.Types_t_embeddedtype.T_embeddedType)));
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                        _mset = _mset._add(@:check2r _t._typeSet()._methods, _e._index, true, _e._multiples);
                    };
                };
            };
            for (_k => _m in _mset) {
                {
                    var __tmp__ = (_base != null && _base.exists(_k?.__copy__()) ? { _0 : _base[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>), _1 : false }), __2:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (!_found) {
                        if ((_fset[_k] ?? false)) {
                            _m = null;
                        };
                        if (_base == null) {
                            _base = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
                                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>) : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
                        };
                        _base[_k] = _m;
                    };
                };
            };
            for (_k => _ in _fset) {
                {
                    var __tmp__ = (_base != null && _base.exists(_k?.__copy__()) ? { _0 : _base[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>), _1 : false }), __2:stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (!_found) {
                        if (_base == null) {
                            _base = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>();
                                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>) : stdgo._internal.go.types.Types_t_methodset.T_methodSet);
                        };
                        _base[_k] = null;
                    };
                };
            };
            _current = stdgo._internal.go.types.Types__consolidatemultiples._consolidateMultiples(_next);
        };
        if ((_base.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef(stdgo._internal.go.types.Types__emptymethodset._emptyMethodSet) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
        };
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection>>);
        for (__1 => _m in _base) {
            if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                (@:checkr _m ?? throw "null pointer dereference")._recv = t;
                _list = (_list.__append__(_m));
            };
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._obj.id() < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._obj.id() : Bool);
        });
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_methodset.MethodSet(_list) : stdgo._internal.go.types.Types_methodset.MethodSet)) : stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>);
    }
