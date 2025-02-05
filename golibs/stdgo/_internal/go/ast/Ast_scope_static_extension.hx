package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.Scope_asInterface) class Scope_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("scope %p {" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        if (((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) && (((@:checkr _s ?? throw "null pointer dereference").objects.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)));
            for (__0 => _obj in (@:checkr _s ?? throw "null pointer dereference").objects) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("\t%s %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _obj ?? throw "null pointer dereference").kind)), stdgo.Go.toInterface((@:checkr _obj ?? throw "null pointer dereference").name));
            };
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("}\n" : stdgo.GoString));
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function insert( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        var _alt = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>);
        {
            _alt = ((@:checkr _s ?? throw "null pointer dereference").objects[(@:checkr _obj ?? throw "null pointer dereference").name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
            if ((_alt == null || (_alt : Dynamic).__nil__)) {
                (@:checkr _s ?? throw "null pointer dereference").objects[(@:checkr _obj ?? throw "null pointer dereference").name] = _obj;
            };
        };
        return _alt;
    }
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference").objects[_name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>));
    }
}
