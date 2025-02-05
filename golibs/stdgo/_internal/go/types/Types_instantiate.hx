package stdgo._internal.go.types;
function instantiate(_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _validate:Bool):{ var _0 : stdgo._internal.go.types.Types_type_.Type_; var _1 : stdgo.Error; } {
        if ((_ctxt == null || (_ctxt : Dynamic).__nil__)) {
            _ctxt = stdgo._internal.go.types.Types_newcontext.newContext();
        };
        if (_validate) {
            var _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
            {
                final __type__ = _orig;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                    _tparams = @:check2r @:check2r _t.typeParams()._list();
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>) : __type__.__underlying__().value;
                    _tparams = @:check2r @:check2r _t.typeParams()._list();
                };
            };
            if ((_targs.length) != ((_tparams.length))) {
                return { _0 : (null : stdgo._internal.go.types.Types_type_.Type_), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("got %d type arguments but %s has %d type parameters" : stdgo.GoString), stdgo.Go.toInterface((_targs.length)), stdgo.Go.toInterface(_orig), stdgo.Go.toInterface((_tparams.length))) };
            };
            {
                var __tmp__ = @:check2r (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._verify(stdgo._internal.go.types.Types__nopos._nopos, _tparams, _targs, _ctxt), _i:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo._internal.go.types.Types_type_.Type_), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.types.Types_argumenterror.ArgumentError(_i, _err) : stdgo._internal.go.types.Types_argumenterror.ArgumentError)) : stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError>)) };
                };
            };
        };
        var _inst = (@:check2r (null : stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>)._instance(stdgo._internal.go.types.Types__nopos._nopos, _orig, _targs, null, _ctxt) : stdgo._internal.go.types.Types_type_.Type_);
        return { _0 : _inst, _1 : (null : stdgo.Error) };
    }
