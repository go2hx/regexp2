package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.MethodSet_asInterface) class MethodSet_static_extension {
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        if (@:check2r _s.len() == ((0 : stdgo.GoInt))) {
            return null;
        };
        var _key = (stdgo._internal.go.types.Types_id.id(_pkg, _name?.__copy__())?.__copy__() : stdgo.GoString);
        var _i = (stdgo._internal.sort.Sort_search.search(((@:checkr _s ?? throw "null pointer dereference")._list.length), function(_i:stdgo.GoInt):Bool {
            var _m = (@:checkr _s ?? throw "null pointer dereference")._list[(_i : stdgo.GoInt)];
            return ((@:checkr _m ?? throw "null pointer dereference")._obj.id() >= _key : Bool);
        }) : stdgo.GoInt);
        if ((_i < ((@:checkr _s ?? throw "null pointer dereference")._list.length) : Bool)) {
            var _m = (@:checkr _s ?? throw "null pointer dereference")._list[(_i : stdgo.GoInt)];
            if ((@:checkr _m ?? throw "null pointer dereference")._obj.id() == (_key)) {
                return _m;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function at( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._list[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._list.length);
    }
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_methodset.MethodSet> = _s;
        if (@:check2r _s.len() == ((0 : stdgo.GoInt))) {
            return ("MethodSet {}" : stdgo.GoString);
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("MethodSet {" : stdgo.GoString)));
        for (__0 => _f in (@:checkr _s ?? throw "null pointer dereference")._list) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        };
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("}" : stdgo.GoString)));
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
}
