package stdgo._internal.go.doc;
function _playExample(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        var _body = (@:checkr _f ?? throw "null pointer dereference").body;
        if (!stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr (@:checkr _file ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__(), ("_test" : stdgo.GoString))) {
            return null;
        };
        var _topDecls = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, stdgo._internal.go.ast.Ast_decl.Decl>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, stdgo._internal.go.ast.Ast_decl.Decl>);
        var _typMethods = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>);
        for (__0 => _decl in (@:checkr _file ?? throw "null pointer dereference").decls) {
            {
                final __type__ = _decl;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                    if (((@:checkr _d ?? throw "null pointer dereference").recv == null || ((@:checkr _d ?? throw "null pointer dereference").recv : Dynamic).__nil__)) {
                        _topDecls[(@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").obj] = stdgo.Go.asInterface(_d);
                    } else {
                        if (((@:checkr (@:checkr _d ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list.length) == ((1 : stdgo.GoInt))) {
                            var _t = ((@:checkr (@:checkr (@:checkr _d ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type : stdgo._internal.go.ast.Ast_expr.Expr);
                            var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName(_t), _tname:stdgo.GoString = __tmp__._0, __1:Bool = __tmp__._1;
                            _typMethods[_tname] = ((_typMethods[_tname] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>)).__append__(stdgo.Go.asInterface(_d)));
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                    for (__1 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                        {
                            final __type__ = _spec;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                                _topDecls[(@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").obj] = stdgo.Go.asInterface(_d);
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                                for (__2 => _name in (@:checkr _s ?? throw "null pointer dereference").names) {
                                    _topDecls[(@:checkr _name ?? throw "null pointer dereference").obj] = stdgo.Go.asInterface(_d);
                                };
                            };
                        };
                    };
                };
            };
        };
        var __tmp__ = stdgo._internal.go.doc.Doc__finddeclsandunresolved._findDeclsAndUnresolved(stdgo.Go.asInterface(_body), _topDecls, _typMethods), _depDecls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = __tmp__._0, _unresolved:stdgo.GoMap<stdgo.GoString, Bool> = __tmp__._1;
        for (_n => _ in _unresolved) {
            if ((((stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_n] ?? false) || (stdgo._internal.go.doc.Doc__predeclaredconstants._predeclaredConstants[_n] ?? false) : Bool) || (stdgo._internal.go.doc.Doc__predeclaredfuncs._predeclaredFuncs[_n] ?? false) : Bool)) {
                if (_unresolved != null) _unresolved.remove(_n);
            };
        };
        var _namedImports:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        var _blankImports:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        var _groupStarts = stdgo._internal.go.doc.Doc__findimportgroupstarts._findImportGroupStarts((@:checkr _file ?? throw "null pointer dereference").imports);
        var _groupStart = function(_s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>):stdgo._internal.go.token.Token_pos.Pos {
            for (_i => _start in _groupStarts) {
                if (((@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").valuePos < _start : Bool)) {
                    return _groupStarts[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
            };
            return _groupStarts[((_groupStarts.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
        };
        for (__1 => _s in (@:checkr _file ?? throw "null pointer dereference").imports) {
            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__()), _p:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                continue;
            };
            if (_p == (("syscall/js" : stdgo.GoString))) {
                return null;
            };
            var _n = (stdgo._internal.path.Path_base.base(_p?.__copy__())?.__copy__() : stdgo.GoString);
            if (((@:checkr _s ?? throw "null pointer dereference").name != null && (((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__))) {
                _n = (@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                {
                    final __value__ = _n;
                    if (__value__ == (("_" : stdgo.GoString))) {
                        _blankImports = (_blankImports.__append__(stdgo.Go.asInterface(_s)));
                        continue;
                    } else if (__value__ == (("." : stdgo.GoString))) {
                        return null;
                    };
                };
            };
            if ((_unresolved[_n] ?? false)) {
                var _spec = ((_s : stdgo._internal.go.ast.Ast_importspec.ImportSpec)?.__copy__() : stdgo._internal.go.ast.Ast_importspec.ImportSpec);
                var _path = (((@:checkr _s ?? throw "null pointer dereference").path : stdgo._internal.go.ast.Ast_basiclit.BasicLit)?.__copy__() : stdgo._internal.go.ast.Ast_basiclit.BasicLit);
                _spec.path = (stdgo.Go.setRef(_path) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
                (@:checkr _spec.path ?? throw "null pointer dereference").valuePos = _groupStart((stdgo.Go.setRef(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>));
                _namedImports = (_namedImports.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))));
                if (_unresolved != null) _unresolved.remove(_n);
            };
        };
        if (((_unresolved.length) > (0 : stdgo.GoInt) : Bool)) {
            return null;
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        for (__2 => _s in _blankImports) {
            {
                var _c = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) ?? throw "null pointer dereference").doc;
                if ((_c != null && ((_c : Dynamic).__nil__ == null || !(_c : Dynamic).__nil__))) {
                    _comments = (_comments.__append__(_c));
                };
            };
        };
        for (__3 => _c in (@:checkr _file ?? throw "null pointer dereference").comments) {
            if (((@:check2r _body.pos() <= @:check2r _c.pos() : Bool) && (@:check2r _c.end() <= @:check2r _body.end() : Bool) : Bool)) {
                _comments = (_comments.__append__(_c));
            };
        };
        {
            var __tmp__ = stdgo._internal.go.doc.Doc__stripoutputcomment._stripOutputComment(_body, _comments);
            _body = @:tmpset0 __tmp__._0;
            _comments = @:tmpset0 __tmp__._1;
        };
        for (__4 => _d in _depDecls) {
            {
                final __type__ = _d;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                    if (((@:checkr _d ?? throw "null pointer dereference").doc != null && (((@:checkr _d ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                        _comments = (_comments.__append__((@:checkr _d ?? throw "null pointer dereference").doc));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                    if (((@:checkr _d ?? throw "null pointer dereference").doc != null && (((@:checkr _d ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                        _comments = (_comments.__append__((@:checkr _d ?? throw "null pointer dereference").doc));
                    };
                };
            };
        };
        var _importDecl = (stdgo.Go.setRef(({ tok : (75 : stdgo._internal.go.token.Token_token.Token), lparen : (1 : stdgo._internal.go.token.Token_pos.Pos), rparen : (1 : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_gendecl.GenDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
        (@:checkr _importDecl ?? throw "null pointer dereference").specs = (_namedImports.__append__(...(_blankImports : Array<stdgo._internal.go.ast.Ast_spec.Spec>)));
        var _funcDecl = (stdgo.Go.setRef(({ name : stdgo._internal.go.ast.Ast_newident.newIdent(("main" : stdgo.GoString)), type : (@:checkr _f ?? throw "null pointer dereference").type, body : _body } : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        var _decls = (new stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>((0 : stdgo.GoInt).toBasic(), ((2 : stdgo.GoInt) + (_depDecls.length) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        _decls = (_decls.__append__(stdgo.Go.asInterface(_importDecl)));
        _decls = (_decls.__append__(...(_depDecls : Array<stdgo._internal.go.ast.Ast_decl.Decl>)));
        _decls = (_decls.__append__(stdgo.Go.asInterface(_funcDecl)));
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_decls), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_decls[(_i : stdgo.GoInt)].pos() < _decls[(_j : stdgo.GoInt)].pos() : Bool);
        });
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_comments), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (@:check2r _comments[(_i : stdgo.GoInt)].pos() < @:check2r _comments[(_j : stdgo.GoInt)].pos() : Bool);
        });
        return (stdgo.Go.setRef(({ name : stdgo._internal.go.ast.Ast_newident.newIdent(("main" : stdgo.GoString)), decls : _decls, comments : _comments } : stdgo._internal.go.ast.Ast_file.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    }
