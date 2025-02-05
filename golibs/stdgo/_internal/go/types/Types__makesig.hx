package stdgo._internal.go.types;
function _makeSig(_res:stdgo._internal.go.types.Types_type_.Type_, _args:haxe.Rest<stdgo._internal.go.types.Types_type_.Type_>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        var _args = new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(_args.length, 0, ..._args);
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((_args.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        for (_i => _param in _args) {
            _list[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newvar.newVar(stdgo._internal.go.types.Types__nopos._nopos, null, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.go.types.Types_default_.default_(_param));
        };
        var _params = stdgo._internal.go.types.Types_newtuple.newTuple(...(_list : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>));
        var _result:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = (null : stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>);
        if (_res != null) {
            stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__isuntyped._isUntyped(_res));
            _result = stdgo._internal.go.types.Types_newtuple.newTuple(stdgo._internal.go.types.Types_newvar.newVar(stdgo._internal.go.types.Types__nopos._nopos, null, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _res));
        };
        return (stdgo.Go.setRef(({ _params : _params, _results : _result } : stdgo._internal.go.types.Types_signature.Signature)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
    }
