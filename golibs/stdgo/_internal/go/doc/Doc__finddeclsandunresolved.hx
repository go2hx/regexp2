package stdgo._internal.go.doc;
function _findDeclsAndUnresolved(_body:stdgo._internal.go.ast.Ast_node.Node, _topDecls:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, stdgo._internal.go.ast.Ast_decl.Decl>, _typMethods:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>>):{ var _0 : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>; var _1 : stdgo.GoMap<stdgo.GoString, Bool>; } {
        var _unresolved = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        var _depDecls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        var _usedDecls = (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_decl.Decl, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_decl.Decl", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_decl.Decl, Bool>) : stdgo.GoMap<stdgo._internal.go.ast.Ast_decl.Decl, Bool>);
        var _usedObjs = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>, Bool>);
        var _inspectFunc:stdgo._internal.go.ast.Ast_node.Node -> Bool = null;
        _inspectFunc = function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            {
                final __type__ = _n;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                    var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                    if ((((@:checkr _e ?? throw "null pointer dereference").obj == null || ((@:checkr _e ?? throw "null pointer dereference").obj : Dynamic).__nil__) && ((@:checkr _e ?? throw "null pointer dereference").name != ("_" : stdgo.GoString)) : Bool)) {
                        _unresolved[(@:checkr _e ?? throw "null pointer dereference").name] = true;
                    } else {
                        var _d = (_topDecls[(@:checkr _e ?? throw "null pointer dereference").obj] ?? (null : stdgo._internal.go.ast.Ast_decl.Decl) : stdgo._internal.go.ast.Ast_decl.Decl);
                        if (_d != null) {
                            _usedObjs[(@:checkr _e ?? throw "null pointer dereference").obj] = true;
                            if (!(_usedDecls[_d] ?? false)) {
                                _usedDecls[_d] = true;
                                _depDecls = (_depDecls.__append__(_d));
                            };
                        };
                    };
                    return true;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                    var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value;
                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _e ?? throw "null pointer dereference").x, _inspectFunc);
                    return false;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                    var _e:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value;
                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _e ?? throw "null pointer dereference").value, _inspectFunc);
                    return false;
                };
            };
            return true;
        };
        var _inspectFieldList = function(_fl:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
            if ((_fl != null && ((_fl : Dynamic).__nil__ == null || !(_fl : Dynamic).__nil__))) {
                for (__0 => _f in (@:checkr _fl ?? throw "null pointer dereference").list) {
                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _f ?? throw "null pointer dereference").type, _inspectFunc);
                };
            };
        };
        stdgo._internal.go.ast.Ast_inspect.inspect(_body, _inspectFunc);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_depDecls.length) : Bool)) {
                {
                    final __type__ = _depDecls[(_i : stdgo.GoInt)];
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                        var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                        _inspectFieldList((@:checkr (@:checkr _d ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams);
                        _inspectFieldList((@:checkr (@:checkr _d ?? throw "null pointer dereference").type ?? throw "null pointer dereference").params);
                        _inspectFieldList((@:checkr (@:checkr _d ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results);
                        if (((@:checkr _d ?? throw "null pointer dereference").body != null && (((@:checkr _d ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
                            stdgo._internal.go.ast.Ast_inspect.inspect(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference").body), _inspectFunc);
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                        var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                        for (__0 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                            {
                                final __type__ = _spec;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                                    var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                                    _inspectFieldList((@:checkr _s ?? throw "null pointer dereference").typeParams);
                                    stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _s ?? throw "null pointer dereference").type, _inspectFunc);
                                    _depDecls = (_depDecls.__append__(...(_typMethods[(@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : Array<stdgo._internal.go.ast.Ast_decl.Decl>)));
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                                    var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                                    if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
                                        stdgo._internal.go.ast.Ast_inspect.inspect((@:checkr _s ?? throw "null pointer dereference").type, _inspectFunc);
                                    };
                                    for (__1 => _val in (@:checkr _s ?? throw "null pointer dereference").values) {
                                        stdgo._internal.go.ast.Ast_inspect.inspect(_val, _inspectFunc);
                                    };
                                };
                            };
                        };
                    };
                };
                _i++;
            };
        };
        var _ds:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        for (__0 => _d in _depDecls) {
            {
                final __type__ = _d;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                    _ds = (_ds.__append__(stdgo.Go.asInterface(_d)));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                    var _containsIota = (false : Bool);
                    var _specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
                    for (__1 => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                        {
                            final __type__ = _s;
                            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                                if ((_usedObjs[(@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").obj] ?? false)) {
                                    _specs = (_specs.__append__(stdgo.Go.asInterface(_s)));
                                };
                            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                                if (!_containsIota) {
                                    _containsIota = stdgo._internal.go.doc.Doc__hasiota._hasIota(stdgo.Go.asInterface(_s));
                                };
                                if (((((@:checkr _s ?? throw "null pointer dereference").names.length) > (1 : stdgo.GoInt) : Bool) && ((@:checkr _s ?? throw "null pointer dereference").values.length == (1 : stdgo.GoInt)) : Bool)) {
                                    _specs = (_specs.__append__(stdgo.Go.asInterface(_s)));
                                    continue;
                                };
                                var _ns = ((_s : stdgo._internal.go.ast.Ast_valuespec.ValueSpec)?.__copy__() : stdgo._internal.go.ast.Ast_valuespec.ValueSpec);
                                _ns.names = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                _ns.values = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                                for (_i => _n in (@:checkr _s ?? throw "null pointer dereference").names) {
                                    if ((_usedObjs[(@:checkr _n ?? throw "null pointer dereference").obj] ?? false)) {
                                        _ns.names = (_ns.names.__append__(_n));
                                        if ((@:checkr _s ?? throw "null pointer dereference").values != null) {
                                            _ns.values = (_ns.values.__append__((@:checkr _s ?? throw "null pointer dereference").values[(_i : stdgo.GoInt)]));
                                        };
                                    };
                                };
                                if (((_ns.names.length) > (0 : stdgo.GoInt) : Bool)) {
                                    _specs = (_specs.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(_ns) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))));
                                };
                            };
                        };
                    };
                    if (((_specs.length) > (0 : stdgo.GoInt) : Bool)) {
                        if ((((@:checkr _d ?? throw "null pointer dereference").tok == (64 : stdgo._internal.go.token.Token_token.Token)) && _containsIota : Bool)) {
                            _ds = (_ds.__append__(stdgo.Go.asInterface(_d)));
                        } else {
                            var _nd = ((_d : stdgo._internal.go.ast.Ast_gendecl.GenDecl)?.__copy__() : stdgo._internal.go.ast.Ast_gendecl.GenDecl);
                            _nd.specs = _specs;
                            if ((_specs.length) == ((1 : stdgo.GoInt))) {
                                _nd.lparen = (0 : stdgo._internal.go.token.Token_pos.Pos);
                            };
                            _ds = (_ds.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(_nd) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))));
                        };
                    };
                };
            };
        };
        return { _0 : _ds, _1 : _unresolved };
    }
