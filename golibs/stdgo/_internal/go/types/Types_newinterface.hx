package stdgo._internal.go.types;
function newInterface(_methods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _embeddeds:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_named.Named>>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        var _tnames = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((_embeddeds.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        for (_i => _t in _embeddeds) {
            _tnames[(_i : stdgo.GoInt)] = stdgo.Go.asInterface(_t);
        };
        return stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _tnames);
    }
