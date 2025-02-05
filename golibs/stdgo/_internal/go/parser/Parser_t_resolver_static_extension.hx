package stdgo._internal.go.parser;
@:keep @:allow(stdgo._internal.go.parser.Parser.T_resolver_asInterface) class T_resolver_static_extension {
    @:keep
    @:tdfield
    static public function _walkBody( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_body == null || (_body : Dynamic).__nil__)) {
                return;
            };
            @:check2r _r._openLabelScope();
            {
                final __f__ = @:check2r _r._closeLabelScope;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _r._walkStmts((@:checkr _body ?? throw "null pointer dereference").list);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkTParams( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        @:check2r _r._declareList(_list, (3 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
        @:check2r _r._resolveList(_list);
    }
    @:keep
    @:tdfield
    static public function _walkFieldList( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        if ((_list == null || (_list : Dynamic).__nil__)) {
            return;
        };
        @:check2r _r._resolveList(_list);
        @:check2r _r._declareList(_list, _kind);
    }
    @:keep
    @:tdfield
    static public function _walkRecv( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        if (((_recv == null || (_recv : Dynamic).__nil__) || ((@:checkr _recv ?? throw "null pointer dereference").list.length == (0 : stdgo.GoInt)) : Bool)) {
            return;
        };
        var _typ = ((@:checkr (@:checkr _recv ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type : stdgo._internal.go.ast.Ast_expr.Expr);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
            }, _ptr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _typ = (@:checkr _ptr ?? throw "null pointer dereference").x;
            };
        };
        var _declareExprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        var _resolveExprs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value;
                _declareExprs = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[(@:checkr _typ ?? throw "null pointer dereference").index]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                _resolveExprs = (_resolveExprs.__append__((@:checkr _typ ?? throw "null pointer dereference").x));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value;
                _declareExprs = (@:checkr _typ ?? throw "null pointer dereference").indices;
                _resolveExprs = (_resolveExprs.__append__((@:checkr _typ ?? throw "null pointer dereference").x));
            } else {
                var _typ:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                _resolveExprs = (_resolveExprs.__append__(_typ));
            };
        };
        for (__0 => _expr in _declareExprs) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _id = __tmp__._0, __1 = __tmp__._1;
                if ((_id != null && ((_id : Dynamic).__nil__ == null || !(_id : Dynamic).__nil__))) {
                    @:check2r _r._declare(stdgo.Go.toInterface(_expr), (null : stdgo.AnyInterface), (@:checkr _r ?? throw "null pointer dereference")._topScope, (3 : stdgo._internal.go.ast.Ast_objkind.ObjKind), _id);
                } else {
                    _resolveExprs = (_resolveExprs.__append__(_expr));
                };
            };
        };
        for (__1 => _expr in _resolveExprs) {
            if (_expr != null) {
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), _expr);
            };
        };
        for (__2 => _f in ((@:checkr _recv ?? throw "null pointer dereference").list.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>)) {
            if ((@:checkr _f ?? throw "null pointer dereference").type != null) {
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _f ?? throw "null pointer dereference").type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _declareList( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        if ((_list == null || (_list : Dynamic).__nil__)) {
            return;
        };
        for (__0 => _f in (@:checkr _list ?? throw "null pointer dereference").list) {
            @:check2r _r._declare(stdgo.Go.toInterface(stdgo.Go.asInterface(_f)), (null : stdgo.AnyInterface), (@:checkr _r ?? throw "null pointer dereference")._topScope, _kind, ...((@:checkr _f ?? throw "null pointer dereference").names : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>));
        };
    }
    @:keep
    @:tdfield
    static public function _resolveList( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        if ((_list == null || (_list : Dynamic).__nil__)) {
            return;
        };
        for (__0 => _f in (@:checkr _list ?? throw "null pointer dereference").list) {
            if ((@:checkr _f ?? throw "null pointer dereference").type != null) {
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _f ?? throw "null pointer dereference").type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkFuncType( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        @:check2r _r._resolveList((@:checkr _typ ?? throw "null pointer dereference").params);
        @:check2r _r._resolveList((@:checkr _typ ?? throw "null pointer dereference").results);
        @:check2r _r._declareList((@:checkr _typ ?? throw "null pointer dereference").params, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
        @:check2r _r._declareList((@:checkr _typ ?? throw "null pointer dereference").results, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
    }
    @:keep
    @:tdfield
    static public function visit( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((false && (_node != null) : Bool)) {
                @:check2r _r._trace(("node %T@%v" : stdgo.GoString), stdgo.Go.toInterface(_node), stdgo.Go.toInterface(stdgo.Go.asInterface(_node.pos())));
            };
            {
                final __type__ = _node;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                    @:check2r _r._resolve(_n, true);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkFuncType((@:checkr _n ?? throw "null pointer dereference").type);
                    @:check2r _r._walkBody((@:checkr _n ?? throw "null pointer dereference").body);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value;
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").x);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkFieldList((@:checkr _n ?? throw "null pointer dereference").fields, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkFuncType(_n);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value;
                    if ((@:checkr _n ?? throw "null pointer dereference").type != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").type);
                    };
                    for (__0 => _e in (@:checkr _n ?? throw "null pointer dereference").elts) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_e) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : false };
                            }, _kv = __tmp__._0, __1 = __tmp__._1;
                            if ((_kv != null && ((_kv : Dynamic).__nil__ == null || !(_kv : Dynamic).__nil__))) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _kv ?? throw "null pointer dereference").key) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                                    }, _ident = __tmp__._0, __2 = __tmp__._1;
                                    if ((_ident != null && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__))) {
                                        @:check2r _r._resolve(_ident, false);
                                    } else {
                                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _kv ?? throw "null pointer dereference").key);
                                    };
                                };
                                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _kv ?? throw "null pointer dereference").value);
                            } else {
                                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), _e);
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkFieldList((@:checkr _n ?? throw "null pointer dereference").methods, (5 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value;
                    @:check2r _r._declare(stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), (null : stdgo.AnyInterface), (@:checkr _r ?? throw "null pointer dereference")._labelScope, (6 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _n ?? throw "null pointer dereference").label);
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").stmt);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value;
                    @:check2r _r._walkExprs((@:checkr _n ?? throw "null pointer dereference").rhs);
                    if ((@:checkr _n ?? throw "null pointer dereference").tok == ((47 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _r._shortVarDecl(_n);
                    } else {
                        @:check2r _r._walkExprs((@:checkr _n ?? throw "null pointer dereference").lhs);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value;
                    if ((((@:checkr _n ?? throw "null pointer dereference").tok != (69 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _n ?? throw "null pointer dereference").label != null && (((@:checkr _n ?? throw "null pointer dereference").label : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").label : Dynamic).__nil__)) : Bool)) {
                        var _depth = (((@:checkr _r ?? throw "null pointer dereference")._targetStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        (@:checkr _r ?? throw "null pointer dereference")._targetStack[(_depth : stdgo.GoInt)] = ((@:checkr _r ?? throw "null pointer dereference")._targetStack[(_depth : stdgo.GoInt)].__append__((@:checkr _n ?? throw "null pointer dereference").label));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkStmts((@:checkr _n ?? throw "null pointer dereference").list);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").init);
                    };
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").cond);
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                    if ((@:checkr _n ?? throw "null pointer dereference").else_ != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").else_);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value;
                    @:check2r _r._walkExprs((@:checkr _n ?? throw "null pointer dereference").list);
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkStmts((@:checkr _n ?? throw "null pointer dereference").body);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").init);
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").tag != null) {
                        if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                            @:check2r _r._openScope((@:checkr _n ?? throw "null pointer dereference").tag.pos());
                            {
                                final __f__ = @:check2r _r._closeScope;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                        };
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").tag);
                    };
                    if (((@:checkr _n ?? throw "null pointer dereference").body != null && (((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
                        @:check2r _r._walkStmts((@:checkr (@:checkr _n ?? throw "null pointer dereference").body ?? throw "null pointer dereference").list);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value;
                    if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                        @:check2r _r._openScope(@:check2r _n.pos());
                        {
                            final __f__ = @:check2r _r._closeScope;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").init);
                    };
                    @:check2r _r._openScope((@:checkr _n ?? throw "null pointer dereference").assign.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").assign);
                    if (((@:checkr _n ?? throw "null pointer dereference").body != null && (((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
                        @:check2r _r._walkStmts((@:checkr (@:checkr _n ?? throw "null pointer dereference").body ?? throw "null pointer dereference").list);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").comm != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").comm);
                    };
                    @:check2r _r._walkStmts((@:checkr _n ?? throw "null pointer dereference").body);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value;
                    if (((@:checkr _n ?? throw "null pointer dereference").body != null && (((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference").body : Dynamic).__nil__))) {
                        @:check2r _r._walkStmts((@:checkr (@:checkr _n ?? throw "null pointer dereference").body ?? throw "null pointer dereference").list);
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").init != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").init);
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").cond != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").cond);
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").post != null) {
                        stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").post);
                    };
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _n ?? throw "null pointer dereference").x);
                    var _lhs:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    if ((@:checkr _n ?? throw "null pointer dereference").key != null) {
                        _lhs = (_lhs.__append__((@:checkr _n ?? throw "null pointer dereference").key));
                    };
                    if ((@:checkr _n ?? throw "null pointer dereference").value != null) {
                        _lhs = (_lhs.__append__((@:checkr _n ?? throw "null pointer dereference").value));
                    };
                    if (((_lhs.length) > (0 : stdgo.GoInt) : Bool)) {
                        if ((@:checkr _n ?? throw "null pointer dereference").tok == ((47 : stdgo._internal.go.token.Token_token.Token))) {
                            var _as = (stdgo.Go.setRef(({ lhs : _lhs, tok : (47 : stdgo._internal.go.token.Token_token.Token), tokPos : (@:checkr _n ?? throw "null pointer dereference").tokPos, rhs : (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ op : (79 : stdgo._internal.go.token.Token_token.Token), x : (@:checkr _n ?? throw "null pointer dereference").x } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
                            @:check2r _r._walkLHS(_lhs);
                            @:check2r _r._shortVarDecl(_as);
                        } else {
                            @:check2r _r._walkExprs(_lhs);
                        };
                    };
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), stdgo.Go.asInterface((@:checkr _n ?? throw "null pointer dereference").body));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                    {
                        final __value__ = (@:checkr _n ?? throw "null pointer dereference").tok;
                        if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                            for (_i => _spec in (@:checkr _n ?? throw "null pointer dereference").specs) {
                                var _spec = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
                                var _kind = (2 : stdgo._internal.go.ast.Ast_objkind.ObjKind);
                                if ((@:checkr _n ?? throw "null pointer dereference").tok == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                                    _kind = (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind);
                                };
                                @:check2r _r._walkExprs((@:checkr _spec ?? throw "null pointer dereference").values);
                                if ((@:checkr _spec ?? throw "null pointer dereference").type != null) {
                                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _spec ?? throw "null pointer dereference").type);
                                };
                                @:check2r _r._declare(stdgo.Go.toInterface(stdgo.Go.asInterface(_spec)), stdgo.Go.toInterface(_i), (@:checkr _r ?? throw "null pointer dereference")._topScope, _kind, ...((@:checkr _spec ?? throw "null pointer dereference").names : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>));
                            };
                        } else if (__value__ == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                            for (__0 => _spec in (@:checkr _n ?? throw "null pointer dereference").specs) {
                                var _spec = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
                                @:check2r _r._declare(stdgo.Go.toInterface(stdgo.Go.asInterface(_spec)), (null : stdgo.AnyInterface), (@:checkr _r ?? throw "null pointer dereference")._topScope, (3 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _spec ?? throw "null pointer dereference").name);
                                if (((@:checkr _spec ?? throw "null pointer dereference").typeParams != null && (((@:checkr _spec ?? throw "null pointer dereference").typeParams : Dynamic).__nil__ == null || !((@:checkr _spec ?? throw "null pointer dereference").typeParams : Dynamic).__nil__))) {
                                    @:check2r _r._openScope(@:check2r _spec.pos());
                                    {
                                        final __f__ = @:check2r _r._closeScope;
                                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                    };
                                    @:check2r _r._walkTParams((@:checkr _spec ?? throw "null pointer dereference").typeParams);
                                };
                                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), (@:checkr _spec ?? throw "null pointer dereference").type);
                            };
                        };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                    var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                    @:check2r _r._openScope(@:check2r _n.pos());
                    {
                        final __f__ = @:check2r _r._closeScope;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    @:check2r _r._walkRecv((@:checkr _n ?? throw "null pointer dereference").recv);
                    if (((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams != null && (((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams : Dynamic).__nil__ == null || !((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams : Dynamic).__nil__))) {
                        @:check2r _r._walkTParams((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams);
                    };
                    @:check2r _r._resolveList((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").params);
                    @:check2r _r._resolveList((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results);
                    @:check2r _r._declareList((@:checkr _n ?? throw "null pointer dereference").recv, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                    @:check2r _r._declareList((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").params, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                    @:check2r _r._declareList((@:checkr (@:checkr _n ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results, (4 : stdgo._internal.go.ast.Ast_objkind.ObjKind));
                    @:check2r _r._walkBody((@:checkr _n ?? throw "null pointer dereference").body);
                    if ((((@:checkr _n ?? throw "null pointer dereference").recv == null || ((@:checkr _n ?? throw "null pointer dereference").recv : Dynamic).__nil__) && ((@:checkr (@:checkr _n ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name != ("init" : stdgo.GoString)) : Bool)) {
                        @:check2r _r._declare(stdgo.Go.toInterface(stdgo.Go.asInterface(_n)), (null : stdgo.AnyInterface), (@:checkr _r ?? throw "null pointer dereference")._pkgScope, (5 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _n ?? throw "null pointer dereference").name);
                    };
                } else {
                    var _n:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_visitor.Visitor = stdgo.Go.asInterface(_r);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_visitor.Visitor = (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkStmts( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        for (__0 => _stmt in _list) {
            stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), _stmt);
        };
    }
    @:keep
    @:tdfield
    static public function _walkLHS( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        for (__0 => _expr in _list) {
            var _expr = (stdgo._internal.go.parser.Parser__unparen._unparen(_expr) : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok && (_expr != null) : Bool)) {
                    stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), _expr);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _walkExprs( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        for (__0 => _node in _list) {
            stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_r), _node);
        };
    }
    @:keep
    @:tdfield
    static public function _resolve( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _collectUnresolved:Bool):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        if (((@:checkr _ident ?? throw "null pointer dereference").obj != null && (((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__ == null || !((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__))) {
            throw stdgo.Go.toInterface(@:check2r _r._sprintf(("%v: identifier %s already declared or resolved" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ident.pos())), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name)));
        };
        if ((@:checkr _ident ?? throw "null pointer dereference").name == (("_" : stdgo.GoString))) {
            return;
        };
        {
            var _s = (@:checkr _r ?? throw "null pointer dereference")._topScope;
            while ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                {
                    var _obj = @:check2r _s.lookup((@:checkr _ident ?? throw "null pointer dereference").name.__copy__());
                    if ((_obj != null && ((_obj : Dynamic).__nil__ == null || !(_obj : Dynamic).__nil__))) {
                        if (false) {
                            @:check2r _r._trace(("resolved %v:%s to %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ident.pos())), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name), stdgo.Go.toInterface(stdgo.Go.asInterface(_obj)));
                        };
                        stdgo._internal.go.parser.Parser__assert._assert((@:checkr _obj ?? throw "null pointer dereference").name != ((stdgo.Go.str() : stdgo.GoString)), ("obj with no name" : stdgo.GoString));
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert(((@:checkr _obj ?? throw "null pointer dereference").decl : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                            }, __0 = __tmp__._0, _ok = __tmp__._1;
                            if (!_ok) {
                                (@:checkr _ident ?? throw "null pointer dereference").obj = _obj;
                            };
                        };
                        return;
                    };
                };
                _s = (@:checkr _s ?? throw "null pointer dereference").outer;
            };
        };
        if (_collectUnresolved) {
            (@:checkr _ident ?? throw "null pointer dereference").obj = stdgo._internal.go.parser.Parser__unresolved._unresolved;
            (@:checkr _r ?? throw "null pointer dereference")._unresolved = ((@:checkr _r ?? throw "null pointer dereference")._unresolved.__append__(_ident));
        };
    }
    @:keep
    @:tdfield
    static public function _shortVarDecl( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _decl:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var _n = (0 : stdgo.GoInt);
        for (__0 => _x in (@:checkr _decl ?? throw "null pointer dereference").lhs) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _ident = __tmp__._0, _isIdent = __tmp__._1;
                if (_isIdent) {
                    stdgo._internal.go.parser.Parser__assert._assert(((@:checkr _ident ?? throw "null pointer dereference").obj == null || ((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__), ("identifier already declared or resolved" : stdgo.GoString));
                    var _obj = stdgo._internal.go.ast.Ast_newobj.newObj((4 : stdgo._internal.go.ast.Ast_objkind.ObjKind), (@:checkr _ident ?? throw "null pointer dereference").name?.__copy__());
                    (@:checkr _obj ?? throw "null pointer dereference").decl = stdgo.Go.toInterface(stdgo.Go.asInterface(_decl));
                    (@:checkr _ident ?? throw "null pointer dereference").obj = _obj;
                    if ((@:checkr _ident ?? throw "null pointer dereference").name != (("_" : stdgo.GoString))) {
                        if (false) {
                            @:check2r _r._trace(("declaring %s@%v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ident.pos())));
                        };
                        {
                            var _alt = @:check2r (@:checkr _r ?? throw "null pointer dereference")._topScope.insert(_obj);
                            if ((_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__))) {
                                (@:checkr _ident ?? throw "null pointer dereference").obj = _alt;
                            } else {
                                _n++;
                            };
                        };
                    };
                };
            };
        };
        if (((_n == (0 : stdgo.GoInt)) && ((@:checkr _r ?? throw "null pointer dereference")._declErr != null) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._declErr((@:checkr _decl ?? throw "null pointer dereference").lhs[(0 : stdgo.GoInt)].pos(), ("no new variables on left side of :=" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _declare( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _decl:stdgo.AnyInterface, _data:stdgo.AnyInterface, _scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _idents:haxe.Rest<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void {
        var _idents = new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(_idents.length, 0, ..._idents);
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        for (__0 => _ident in _idents) {
            if (((@:checkr _ident ?? throw "null pointer dereference").obj != null && (((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__ == null || !((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__))) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: identifier %s already declared or resolved" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ident.pos())), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name)));
            };
            var _obj = stdgo._internal.go.ast.Ast_newobj.newObj(_kind, (@:checkr _ident ?? throw "null pointer dereference").name?.__copy__());
            (@:checkr _obj ?? throw "null pointer dereference").decl = _decl;
            (@:checkr _obj ?? throw "null pointer dereference").data = _data;
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_decl : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    (@:checkr _ident ?? throw "null pointer dereference").obj = _obj;
                };
            };
            if ((@:checkr _ident ?? throw "null pointer dereference").name != (("_" : stdgo.GoString))) {
                if (false) {
                    @:check2r _r._trace(("declaring %s@%v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ident.pos())));
                };
                {
                    var _alt = @:check2r _scope.insert(_obj);
                    if (((_alt != null && ((_alt : Dynamic).__nil__ == null || !(_alt : Dynamic).__nil__)) && ((@:checkr _r ?? throw "null pointer dereference")._declErr != null) : Bool)) {
                        var _prevDecl = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _pos = (@:check2r _alt.pos() : stdgo._internal.go.token.Token_pos.Pos);
                            if (_pos.isValid()) {
                                _prevDecl = @:check2r _r._sprintf(("\n\tprevious declaration at %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)))?.__copy__();
                            };
                        };
                        (@:checkr _r ?? throw "null pointer dereference")._declErr(@:check2r _ident.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s redeclared in this block%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name), stdgo.Go.toInterface(_prevDecl))?.__copy__());
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeLabelScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        var _n = (((@:checkr _r ?? throw "null pointer dereference")._targetStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _scope = (@:checkr _r ?? throw "null pointer dereference")._labelScope;
        for (__0 => _ident in (@:checkr _r ?? throw "null pointer dereference")._targetStack[(_n : stdgo.GoInt)]) {
            (@:checkr _ident ?? throw "null pointer dereference").obj = @:check2r _scope.lookup((@:checkr _ident ?? throw "null pointer dereference").name?.__copy__());
            if ((((@:checkr _ident ?? throw "null pointer dereference").obj == null || ((@:checkr _ident ?? throw "null pointer dereference").obj : Dynamic).__nil__) && ((@:checkr _r ?? throw "null pointer dereference")._declErr != null) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._declErr(@:check2r _ident.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("label %s undefined" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _ident ?? throw "null pointer dereference").name))?.__copy__());
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._targetStack = ((@:checkr _r ?? throw "null pointer dereference")._targetStack.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>);
        (@:checkr _r ?? throw "null pointer dereference")._labelScope = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._labelScope ?? throw "null pointer dereference").outer;
    }
    @:keep
    @:tdfield
    static public function _openLabelScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._labelScope = stdgo._internal.go.ast.Ast_newscope.newScope((@:checkr _r ?? throw "null pointer dereference")._labelScope);
        (@:checkr _r ?? throw "null pointer dereference")._targetStack = ((@:checkr _r ?? throw "null pointer dereference")._targetStack.__append__((null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>)));
    }
    @:keep
    @:tdfield
    static public function _closeScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._depth--;
        if (false) {
            @:check2r _r._trace(("closing scope" : stdgo.GoString));
        };
        (@:checkr _r ?? throw "null pointer dereference")._topScope = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._topScope ?? throw "null pointer dereference").outer;
    }
    @:keep
    @:tdfield
    static public function _openScope( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._depth++;
        if (((@:checkr _r ?? throw "null pointer dereference")._depth > (1000 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(stdgo.Go.asInterface(({ _pos : _pos, _msg : ("exceeded max scope depth during object resolution" : stdgo.GoString) } : stdgo._internal.go.parser.Parser_t_bailout.T_bailout)));
        };
        if (false) {
            @:check2r _r._trace(("opening scope @%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)));
        };
        (@:checkr _r ?? throw "null pointer dereference")._topScope = stdgo._internal.go.ast.Ast_newscope.newScope((@:checkr _r ?? throw "null pointer dereference")._topScope);
    }
    @:keep
    @:tdfield
    static public function _sprintf( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        for (_i => _arg in _args) {
            {
                final __type__ = _arg;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_pos.Pos))) {
                    var _arg:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value;
                    _args[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r (@:checkr _r ?? throw "null pointer dereference")._handle.position(_arg)));
                };
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _trace( _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _r:stdgo.Ref<stdgo._internal.go.parser.Parser_t_resolver.T_resolver> = _r;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((stdgo._internal.strings.Strings_repeat.repeat((". " : stdgo.GoString), (@:checkr _r ?? throw "null pointer dereference")._depth) + @:check2r _r._sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString)));
    }
}
