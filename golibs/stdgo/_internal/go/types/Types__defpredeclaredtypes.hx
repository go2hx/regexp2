package stdgo._internal.go.types;
function _defPredeclaredTypes():Void {
        for (__0 => _t in stdgo._internal.go.types.Types_typ.typ) {
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface(_t))));
        };
        for (__1 => _t in stdgo._internal.go.types.Types__aliases._aliases) {
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.asInterface(_t))));
        };
        stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, ("any" : stdgo.GoString), stdgo.Go.asInterface((stdgo.Go.setRef(({ _complete : true, _tset : (stdgo.Go.setRef(stdgo._internal.go.types.Types__toptypeset._topTypeSet) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>) } : stdgo._internal.go.types.Types_interface.Interface)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)))));
        {
            var _obj = stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, ("error" : stdgo.GoString), (null : stdgo._internal.go.types.Types_type_.Type_));
            @:check2r _obj._setColor((1u32 : stdgo._internal.go.types.Types_t_color.T_color));
            var _typ = stdgo._internal.go.types.Types_newnamed.newNamed(_obj, (null : stdgo._internal.go.types.Types_type_.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>));
            var _recv = stdgo._internal.go.types.Types_newvar.newVar(stdgo._internal.go.types.Types__nopos._nopos, null, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(_typ));
            var _res = stdgo._internal.go.types.Types_newvar.newVar(stdgo._internal.go.types.Types__nopos._nopos, null, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]));
            var _sig = stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), null, stdgo._internal.go.types.Types_newtuple.newTuple(_res), false);
            var _err = stdgo._internal.go.types.Types_newfunc.newFunc(stdgo._internal.go.types.Types__nopos._nopos, null, ("Error" : stdgo.GoString), _sig);
            var _ityp = (stdgo.Go.setRef(({ _methods : (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>(1, 1, ...[_err]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), _complete : true } : stdgo._internal.go.types.Types_interface.Interface)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
            stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet(null, stdgo._internal.go.types.Types__nopos._nopos, _ityp);
            @:check2r _typ.setUnderlying(stdgo.Go.asInterface(_ityp));
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(_obj));
        };
        {
            var _obj = stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, ("comparable" : stdgo.GoString), (null : stdgo._internal.go.types.Types_type_.Type_));
            @:check2r _obj._setColor((1u32 : stdgo._internal.go.types.Types_t_color.T_color));
            var _typ = stdgo._internal.go.types.Types_newnamed.newNamed(_obj, (null : stdgo._internal.go.types.Types_type_.Type_), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>));
            var _ityp = (stdgo.Go.setRef(({ _complete : true, _tset : (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t__typeset.T__TypeSet((null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), stdgo._internal.go.types.Types__alltermlist._allTermlist, true) : stdgo._internal.go.types.Types_t__typeset.T__TypeSet)) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>) } : stdgo._internal.go.types.Types_interface.Interface)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>);
            @:check2r _typ.setUnderlying(stdgo.Go.asInterface(_ityp));
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(_obj));
        };
    }
