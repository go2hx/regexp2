package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_pkgBuilder_asInterface) class T_pkgBuilder_static_extension {
    @:keep
    @:tdfield
    static public function _declare( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>, _scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _altScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder> = _p;
        var _alt = @:check2r _scope.insert(_obj);
        if (((_alt == null || (_alt : Dynamic).__nil__) && (_altScope != null && ((_altScope : Dynamic).__nil__ == null || !(_altScope : Dynamic).__nil__)) : Bool)) {
            _alt = @:check2r _altScope.lookup((@:checkr _obj ?? throw "null pointer dereference").name?.__copy__());
        };
        if ((_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__))) {
            var _prevDecl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _pos = (@:check2r _alt.pos() : stdgo._internal.go.token.Token_pos.Pos);
                if (_pos.isValid()) {
                    _prevDecl = stdgo._internal.fmt.Fmt_sprintf.sprintf(("\n\tprevious declaration at %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r (@:checkr _p ?? throw "null pointer dereference")._fset.position(_pos))))?.__copy__();
                };
            };
            @:check2r _p._error(@:check2r _obj.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s redeclared in this block%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _obj ?? throw "null pointer dereference").name), stdgo.Go.toInterface(_prevDecl))?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _errorf( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>, _pos:stdgo._internal.go.token.Token_pos.Pos, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder> = _p;
        @:check2r _p._error(_pos, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder>, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_pkgbuilder.T_pkgBuilder> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._errors.add(@:check2r (@:checkr _p ?? throw "null pointer dereference")._fset.position(_pos)?.__copy__(), _msg?.__copy__());
    }
}
