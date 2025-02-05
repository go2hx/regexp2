package stdgo._internal.go.ast;
function sortImports(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        for (__0 => _d in (@:checkr _f ?? throw "null pointer dereference").decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || ((@:checkr _d ?? throw "null pointer dereference").tok != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                break;
            };
            if (!(@:checkr _d ?? throw "null pointer dereference").lparen.isValid()) {
                continue;
            };
            var _i = (0 : stdgo.GoInt);
            var _specs = ((@:checkr _d ?? throw "null pointer dereference").specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            for (_j => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                if (((_j > _i : Bool) && (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _s.pos()) > ((1 : stdgo.GoInt) + stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, (@:checkr _d ?? throw "null pointer dereference").specs[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)].end()) : stdgo.GoInt) : Bool) : Bool)) {
                    _specs = (_specs.__append__(...(stdgo._internal.go.ast.Ast__sortspecs._sortSpecs(_fset, _f, ((@:checkr _d ?? throw "null pointer dereference").specs.__slice__(_i, _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>)) : Array<stdgo._internal.go.ast.Ast_spec.Spec>)));
                    _i = _j;
                };
            };
            _specs = (_specs.__append__(...(stdgo._internal.go.ast.Ast__sortspecs._sortSpecs(_fset, _f, ((@:checkr _d ?? throw "null pointer dereference").specs.__slice__(_i) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>)) : Array<stdgo._internal.go.ast.Ast_spec.Spec>)));
            (@:checkr _d ?? throw "null pointer dereference").specs = _specs;
            if ((((@:checkr _d ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool)) {
                var _lastSpec = ((@:checkr _d ?? throw "null pointer dereference").specs[(((@:checkr _d ?? throw "null pointer dereference").specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo._internal.go.ast.Ast_spec.Spec);
                var _lastLine = (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _lastSpec.pos()) : stdgo.GoInt);
                var _rParenLine = (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, (@:checkr _d ?? throw "null pointer dereference").rparen) : stdgo.GoInt);
                while ((_rParenLine > (_lastLine + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    _rParenLine--;
                    @:check2r @:check2r _fset.file((@:checkr _d ?? throw "null pointer dereference").rparen).mergeLine(_rParenLine);
                };
            };
        };
    }
