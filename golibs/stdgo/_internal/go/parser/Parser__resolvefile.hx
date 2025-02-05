package stdgo._internal.go.parser;
function _resolveFile(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _handle:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _declErr:(stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void):Void {
        var _pkgScope = stdgo._internal.go.ast.Ast_newscope.newScope(null);
        var _r = (stdgo.Go.setRef(({ _handle : _handle, _declErr : _declErr, _topScope : _pkgScope, _pkgScope : _pkgScope, _depth : (1 : stdgo.GoInt) } : stdgo._internal.go.parser.Parser_t_resolver.T_resolver)) : stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>);
        for (__0 => _decl in (@:checkr _file ?? throw "null pointer dereference").decls) {
            stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), _decl);
        };
        @:check2r _r._closeScope();
        stdgo._internal.go.parser.Parser__assert._assert(((@:checkr _r ?? throw "null pointer dereference")._topScope == null || ((@:checkr _r ?? throw "null pointer dereference")._topScope : Dynamic).__nil__), ("unbalanced scopes" : stdgo.GoString));
        stdgo._internal.go.parser.Parser__assert._assert(((@:checkr _r ?? throw "null pointer dereference")._labelScope == null || ((@:checkr _r ?? throw "null pointer dereference")._labelScope : Dynamic).__nil__), ("unbalanced label scopes" : stdgo.GoString));
        var _i = (0 : stdgo.GoInt);
        for (__1 => _ident in (@:checkr _r ?? throw "null pointer dereference")._unresolved) {
            stdgo._internal.go.parser.Parser__assert._assert((@:checkr _ident ?? throw "null pointer dereference").obj == (stdgo._internal.go.parser.Parser__unresolved._unresolved), ("object already resolved" : stdgo.GoString));
            (@:checkr _ident ?? throw "null pointer dereference").obj = @:check2r (@:checkr _r ?? throw "null pointer dereference")._pkgScope.lookup((@:checkr _ident ?? throw "null pointer dereference").name?.__copy__());
            if (((@:checkr _ident ?? throw "null pointer dereference").obj == null || ((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__)) {
                (@:checkr _r ?? throw "null pointer dereference")._unresolved[(_i : stdgo.GoInt)] = _ident;
                _i++;
            } else if (false) {
                var _pos = ((stdgo.Go.typeAssert(((@:checkr (@:checkr _ident ?? throw "null pointer dereference").obj ?? throw "null pointer dereference").decl : stdgo._internal.go.parser.Parser_t__interface_0.T__interface_0)) : stdgo._internal.go.parser.Parser_t__interface_0.T__interface_0).pos() : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _r._trace(("resolved %s@%v to package object %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ident.pos())), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)));
            };
        };
        (@:checkr _file ?? throw "null pointer dereference").scope = (@:checkr _r ?? throw "null pointer dereference")._pkgScope;
        (@:checkr _file ?? throw "null pointer dereference").unresolved = ((@:checkr _r ?? throw "null pointer dereference")._unresolved.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    }
