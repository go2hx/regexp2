package stdgo._internal.go.types;
function _defPredeclaredConsts():Void {
        for (__0 => _c in stdgo._internal.go.types.Types__predeclaredconsts._predeclaredConsts) {
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(stdgo._internal.go.types.Types_newconst.newConst(stdgo._internal.go.types.Types__nopos._nopos, null, _c._name?.__copy__(), stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[(_c._kind : stdgo.GoInt)]), _c._val)));
        };
    }
