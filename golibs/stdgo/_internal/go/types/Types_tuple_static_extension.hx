package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Tuple_asInterface) class Tuple_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = _t;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_t), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = _t;
        return stdgo.Go.asInterface(_t);
    }
    @:keep
    @:tdfield
    static public function at( _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = _t;
        return (@:checkr _t ?? throw "null pointer dereference")._vars[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> = _t;
        if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
            return ((@:checkr _t ?? throw "null pointer dereference")._vars.length);
        };
        return (0 : stdgo.GoInt);
    }
}
