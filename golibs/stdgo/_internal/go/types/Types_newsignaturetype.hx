package stdgo._internal.go.types;
function newSignatureType(_recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _recvTypeParams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _typeParams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _params:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _results:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _variadic:Bool):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        if (_variadic) {
            var _n = (@:check2r _params.len() : stdgo.GoInt);
            if (_n == ((0 : stdgo.GoInt))) {
                throw stdgo.Go.toInterface(("variadic function must have at least one parameter" : stdgo.GoString));
            };
            var _core = (stdgo._internal.go.types.Types__corestring._coreString(@:check2r _params.at((_n - (1 : stdgo.GoInt) : stdgo.GoInt))._object._typ) : stdgo._internal.go.types.Types_type_.Type_);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_core) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>)) : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_slice_.Slice_>), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok && !stdgo._internal.go.types.Types__isstring._isString(_core) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("got %s, want variadic parameter with unnamed slice type or string as core type" : stdgo.GoString), stdgo.Go.toInterface((_core.string() : stdgo.GoString))));
                };
            };
        };
        var _sig = (stdgo.Go.setRef(({ _recv : _recv, _params : _params, _results : _results, _variadic : _variadic } : stdgo._internal.go.types.Types_signature.Signature)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
        if ((_recvTypeParams.length) != ((0 : stdgo.GoInt))) {
            if ((_recv == null || (_recv : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("function with receiver type parameters must have a receiver" : stdgo.GoString));
            };
            (@:checkr _sig ?? throw "null pointer dereference")._rparams = stdgo._internal.go.types.Types__bindtparams._bindTParams(_recvTypeParams);
        };
        if ((_typeParams.length) != ((0 : stdgo.GoInt))) {
            if ((_recv != null && ((_recv : Dynamic).__nil__ == null || !(_recv : Dynamic).__nil__))) {
                throw stdgo.Go.toInterface(("function with type parameters cannot have a receiver" : stdgo.GoString));
            };
            (@:checkr _sig ?? throw "null pointer dereference")._tparams = stdgo._internal.go.types.Types__bindtparams._bindTParams(_typeParams);
        };
        return _sig;
    }
