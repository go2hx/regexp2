package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_comparer_asInterface) class T_comparer_static_extension {
    @:keep
    @:tdfield
    static public function _identical( _c:stdgo.Ref<stdgo._internal.go.types.Types_t_comparer.T_comparer>, _x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_, _p:stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.types.Types_t_comparer.T_comparer> = _c;
        if (stdgo.Go.toInterface(_x) == (stdgo.Go.toInterface(_y))) {
            return true;
        };
        if (((@:checkr _c ?? throw "null pointer dereference")._ignoreInvalids && (((stdgo.Go.toInterface(_x) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) || (stdgo.Go.toInterface(_y) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool)) : Bool)) {
            return true;
        };
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return (@:checkr _x ?? throw "null pointer dereference")._kind == ((@:checkr _y ?? throw "null pointer dereference")._kind);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>)) : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_array_.Array_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return ((((((@:checkr _x ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _y ?? throw "null pointer dereference")._len < (0i64 : stdgo.GoInt64) : Bool) : Bool) || ((@:checkr _x ?? throw "null pointer dereference")._len == (@:checkr _y ?? throw "null pointer dereference")._len) : Bool)) && @:check2r _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p) : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return @:check2r _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (@:check2r _x.numFields() == (@:check2r _y.numFields())) {
                            for (_i => _f in (@:checkr _x ?? throw "null pointer dereference")._fields) {
                                var _g = (@:checkr _y ?? throw "null pointer dereference")._fields[(_i : stdgo.GoInt)];
                                if (((((@:checkr _f ?? throw "null pointer dereference")._embedded != ((@:checkr _g ?? throw "null pointer dereference")._embedded) || (!(@:checkr _c ?? throw "null pointer dereference")._ignoreTags && @:check2r _x.tag(_i) != (@:check2r _y.tag(_i)) : Bool) : Bool) || !@:check2r _f._sameId((@:checkr _g ?? throw "null pointer dereference")._object._pkg, (@:checkr _g ?? throw "null pointer dereference")._object._name?.__copy__()) : Bool) || !@:check2r _c._identical((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, _p) : Bool)) {
                                    return false;
                                };
                            };
                            return true;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>)) : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_pointer_.Pointer_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return @:check2r _c._identical((@:checkr _x ?? throw "null pointer dereference")._base, (@:checkr _y ?? throw "null pointer dereference")._base, _p);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if (@:check2r _x.len() == (@:check2r _y.len())) {
                            if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                                for (_i => _v in (@:checkr _x ?? throw "null pointer dereference")._vars) {
                                    var _w = (@:checkr _y ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)];
                                    if (!@:check2r _c._identical((@:checkr _v ?? throw "null pointer dereference")._object._typ, (@:checkr _w ?? throw "null pointer dereference")._object._typ, _p)) {
                                        return false;
                                    };
                                };
                            };
                            return true;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _1 : false };
                }, _y = __tmp__._0, __0 = __tmp__._1;
                if ((_y == null || (_y : Dynamic).__nil__)) {
                    return false;
                };
                if (@:check2r @:check2r _x.typeParams().len() != (@:check2r @:check2r _y.typeParams().len())) {
                    return false;
                };
                var _yparams = (@:checkr _y ?? throw "null pointer dereference")._params;
                var _yresults = (@:checkr _y ?? throw "null pointer dereference")._results;
                if ((@:check2r @:check2r _x.typeParams().len() > (0 : stdgo.GoInt) : Bool)) {
                    var _xtparams = @:check2r @:check2r _x.typeParams()._list();
                    var _ytparams = @:check2r @:check2r _y.typeParams()._list();
                    var _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
                    for (_i => _ in _xtparams) {
                        _targs = (_targs.__append__(stdgo.Go.asInterface(@:check2r @:check2r _x.typeParams().at(_i))));
                    };
                    var _smap = (stdgo._internal.go.types.Types__makesubstmap._makeSubstMap(_ytparams, _targs) : stdgo._internal.go.types.Types_t_substmap.T_substMap);
                    var _check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker> = (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>);
                    var _ctxt = stdgo._internal.go.types.Types_newcontext.newContext();
                    for (_i => _xtparam in _xtparams) {
                        var _ybound = (@:check2r _check._subst(stdgo._internal.go.types.Types__nopos._nopos, (@:checkr _ytparams[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._bound, _smap, null, _ctxt) : stdgo._internal.go.types.Types_type_.Type_);
                        if (!@:check2r _c._identical((@:checkr _xtparam ?? throw "null pointer dereference")._bound, _ybound, _p)) {
                            return false;
                        };
                    };
                    _yparams = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _check._subst(stdgo._internal.go.types.Types__nopos._nopos, stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._params), _smap, null, _ctxt)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
                    _yresults = (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _check._subst(stdgo._internal.go.types.Types__nopos._nopos, stdgo.Go.asInterface((@:checkr _y ?? throw "null pointer dereference")._results), _smap, null, _ctxt)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>)) : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
                };
                return (((@:checkr _x ?? throw "null pointer dereference")._variadic == ((@:checkr _y ?? throw "null pointer dereference")._variadic) && @:check2r _c._identical(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._params), stdgo.Go.asInterface(_yparams), _p) : Bool) && @:check2r _c._identical(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference")._results), stdgo.Go.asInterface(_yresults), _p) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>), _1 : false };
                    }, _y = __tmp__._0, __0 = __tmp__._1;
                    if ((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__))) {
                        var _unionSets = ({
                            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
                            {};
                            cast x;
                        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
                        var _xset = stdgo._internal.go.types.Types__computeuniontypeset._computeUnionTypeSet(null, _unionSets, stdgo._internal.go.types.Types__nopos._nopos, _x);
                        var _yset = stdgo._internal.go.types.Types__computeuniontypeset._computeUnionTypeSet(null, _unionSets, stdgo._internal.go.types.Types__nopos._nopos, _y);
                        return (@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var _xset = @:check2r _x._typeSet();
                        var _yset = @:check2r _y._typeSet();
                        if ((@:checkr _xset ?? throw "null pointer dereference")._comparable != ((@:checkr _yset ?? throw "null pointer dereference")._comparable)) {
                            return false;
                        };
                        if (!(@:checkr _xset ?? throw "null pointer dereference")._terms._equal((@:checkr _yset ?? throw "null pointer dereference")._terms)) {
                            return false;
                        };
                        var _a = (@:checkr _xset ?? throw "null pointer dereference")._methods;
                        var _b = (@:checkr _yset ?? throw "null pointer dereference")._methods;
                        if ((_a.length) == ((_b.length))) {
                            var _q = (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair(_x, _y, _p) : stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair)) : stdgo.Ref<stdgo._internal.go.types.Types_t_ifacepair.T_ifacePair>);
                            while ((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__))) {
                                if (@:check2r _p._identical(_q)) {
                                    return true;
                                };
                                _p = (@:checkr _p ?? throw "null pointer dereference")._prev;
                            };
                            if (false) {
                                stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_a);
                                stdgo._internal.go.types.Types__assertsortedmethods._assertSortedMethods(_b);
                            };
                            for (_i => _f in _a) {
                                var _g = _b[(_i : stdgo.GoInt)];
                                if (((@:check2r _f.id() != @:check2r _g.id()) || !@:check2r _c._identical((@:checkr _f ?? throw "null pointer dereference")._object._typ, (@:checkr _g ?? throw "null pointer dereference")._object._typ, _q) : Bool)) {
                                    return false;
                                };
                            };
                            return true;
                        };
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>)) : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_map_.Map_>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return (@:check2r _c._identical((@:checkr _x ?? throw "null pointer dereference")._key, (@:checkr _y ?? throw "null pointer dereference")._key, _p) && @:check2r _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p) : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        return (((@:checkr _x ?? throw "null pointer dereference")._dir == (@:checkr _y ?? throw "null pointer dereference")._dir) && @:check2r _c._identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem, _p) : Bool);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
                    }, _y = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        var _xargs = @:check2r @:check2r _x.typeArgs()._list();
                        var _yargs = @:check2r @:check2r _y.typeArgs()._list();
                        if ((_xargs.length) != ((_yargs.length))) {
                            return false;
                        };
                        for (_i => _xarg in _xargs) {
                            if (!stdgo._internal.go.types.Types_identical.identical(_xarg, _yargs[(_i : stdgo.GoInt)])) {
                                return false;
                            };
                        };
                        return stdgo._internal.go.types.Types__indenticalorigin._indenticalOrigin(_x, _y);
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>) : __type__.__underlying__().value;
            } else if (__type__ == null) {
                var _x:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
            } else {
                var _x:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        return false;
    }
}
