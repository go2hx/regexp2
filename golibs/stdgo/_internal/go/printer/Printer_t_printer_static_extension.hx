package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function _free( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._output.capacity > (65536 : stdgo.GoInt) : Bool)) {
            return;
        };
        @:check2 stdgo._internal.go.printer.Printer__printerpool._printerPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_p)));
    }
    @:keep
    @:tdfield
    static public function _printNode( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _node:stdgo.AnyInterface):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _n_4922169:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _com_4920881:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _n_4921564:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
        var _ok_4920363:Bool = false;
        var _cnode_4920356:stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode> = (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>);
        var _ok_4922035:Bool = false;
        var _n_4921838:stdgo._internal.go.ast.Ast_spec.Spec = (null : stdgo._internal.go.ast.Ast_spec.Spec);
        var _n_4921253:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _end_4920614:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _ok_4920538:Bool = false;
        var _s_4922011:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        var _i_4922016_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_4921256:Bool = false;
        var _ok_4921724:Bool = false;
        var _n_4922136:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        var _n_4921810:stdgo._internal.go.ast.Ast_decl.Decl = (null : stdgo._internal.go.ast.Ast_decl.Decl);
        var _n_4921592:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        var _i_4921051:stdgo.GoInt = (0 : stdgo.GoInt);
        var _beg_4920597:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _doc_4920822:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _n_4920535:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node);
        var _comments_4920323:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        var _n_4922191 = @:invalid_type null;
        var _n_4921878:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        var _j_4921124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_4920926:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_node : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>)) : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>), _1 : false };
                            };
                            _cnode_4920356 = @:tmpset0 __tmp__._0;
                            _ok_4920363 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_4920363) {
                            _gotoNext = 4920395i32;
                        } else {
                            _gotoNext = 4920450i32;
                        };
                    };
                } else if (__value__ == (4920395i32)) {
                    _node = (@:checkr _cnode_4920356 ?? throw "null pointer dereference").node;
                    _comments_4920323 = (@:checkr _cnode_4920356 ?? throw "null pointer dereference").comments;
                    _gotoNext = 4920450i32;
                } else if (__value__ == (4920450i32)) {
                    if (_comments_4920323 != null) {
                        _gotoNext = 4920469i32;
                    } else {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((_node : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : false };
                            };
                            _n_4921253 = @:tmpset0 __tmp__._0;
                            _ok_4921256 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_4921256) {
                            _gotoNext = 4921283i32;
                        } else {
                            _gotoNext = 4921399i32;
                        };
                    };
                } else if (__value__ == (4920469i32)) {
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_node : stdgo._internal.go.ast.Ast_node.Node)) : stdgo._internal.go.ast.Ast_node.Node), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.go.ast.Ast_node.Node), _1 : false };
                        };
                        _n_4920535 = @:tmpset0 __tmp__._0;
                        _ok_4920538 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_4920538) {
                        _gotoNext = 4920569i32;
                    } else {
                        _gotoNext = 4920597i32;
                    };
                } else if (__value__ == (4920569i32)) {
                    _gotoNext = 4922240i32;
                } else if (__value__ == (4920597i32)) {
                    _beg_4920597 = _n_4920535.pos();
                    _end_4920614 = _n_4920535.end();
                    {
                        _doc_4920822 = stdgo._internal.go.printer.Printer__getdoc._getDoc(_n_4920535);
                        if ((_doc_4920822 != null && ((_doc_4920822 : Dynamic).__nil__ == null || !(_doc_4920822 : Dynamic).__nil__))) {
                            _gotoNext = 4920851i32;
                        } else {
                            _gotoNext = 4920878i32;
                        };
                    };
                } else if (__value__ == (4920851i32)) {
                    _beg_4920597 = @:check2r _doc_4920822.pos();
                    _gotoNext = 4920878i32;
                } else if (__value__ == (4920878i32)) {
                    {
                        _com_4920881 = stdgo._internal.go.printer.Printer__getlastcomment._getLastComment(_n_4920535);
                        if ((_com_4920881 != null && ((_com_4920881 : Dynamic).__nil__ == null || !(_com_4920881 : Dynamic).__nil__))) {
                            _gotoNext = 4920918i32;
                        } else {
                            _gotoNext = 4921051i32;
                        };
                    };
                } else if (__value__ == (4920918i32)) {
                    {
                        _e_4920926 = @:check2r _com_4920881.end();
                        if ((_e_4920926 > _end_4920614 : Bool)) {
                            _gotoNext = 4920950i32;
                        } else {
                            _gotoNext = 4921051i32;
                        };
                    };
                } else if (__value__ == (4920950i32)) {
                    _end_4920614 = _e_4920926;
                    _gotoNext = 4921051i32;
                } else if (__value__ == (4921051i32)) {
                    _i_4921051 = (0 : stdgo.GoInt);
                    var __blank__ = 0i32;
                    _gotoNext = 4921060i32;
                } else if (__value__ == (4921060i32)) {
                    if (((_i_4921051 < (_comments_4920323.length) : Bool) && (@:check2r _comments_4920323[(_i_4921051 : stdgo.GoInt)].end() < _beg_4920597 : Bool) : Bool)) {
                        _gotoNext = 4921109i32;
                    } else {
                        _gotoNext = 4921124i32;
                    };
                } else if (__value__ == (4921109i32)) {
                    _i_4921051++;
                    _gotoNext = 4921060i32;
                } else if (__value__ == (4921124i32)) {
                    _j_4921124 = _i_4921051;
                    var __blank__ = 0i32;
                    _gotoNext = 4921133i32;
                } else if (__value__ == (4921133i32)) {
                    if (((_j_4921124 < (_comments_4920323.length) : Bool) && (@:check2r _comments_4920323[(_j_4921124 : stdgo.GoInt)].pos() < _end_4920614 : Bool) : Bool)) {
                        _gotoNext = 4921182i32;
                    } else {
                        _gotoNext = 4921197i32;
                    };
                } else if (__value__ == (4921182i32)) {
                    _j_4921124++;
                    _gotoNext = 4921133i32;
                } else if (__value__ == (4921197i32)) {
                    if ((_i_4921051 < _j_4921124 : Bool)) {
                        _gotoNext = 4921206i32;
                    } else {
                        _gotoNext = 4921399i32;
                    };
                } else if (__value__ == (4921206i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._comments = (_comments_4920323.__slice__(_i_4921051, _j_4921124) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
                    _gotoNext = 4921399i32;
                } else if (__value__ == (4921283i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._comments = (@:checkr _n_4921253 ?? throw "null pointer dereference").comments;
                    _gotoNext = 4921399i32;
                } else if (__value__ == (4921399i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._useNodeComments = (@:checkr _p ?? throw "null pointer dereference")._comments == null;
                    @:check2r _p._nextComment();
                    @:check2r _p._print(stdgo.Go.toInterface((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)));
                    var __blank__ = 0i32;
                    _gotoNext = 4921524i32;
                } else if (__value__ == (4921524i32)) {
                    {
                        final __type__ = _node;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_expr.Expr))) {
                            var _n:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__().value;
                            _n_4921564 = _n;
                            _gotoNext = 4921551i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_stmt.Stmt))) {
                            var _n:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : __type__.__underlying__().value;
                            _n_4921592 = _n;
                            _gotoNext = 4921579i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_decl.Decl))) {
                            var _n:stdgo._internal.go.ast.Ast_decl.Decl = __type__ == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : __type__.__underlying__().value;
                            _n_4921810 = _n;
                            _gotoNext = 4921797i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_spec.Spec))) {
                            var _n:stdgo._internal.go.ast.Ast_spec.Spec = __type__ == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : __type__.__underlying__().value;
                            _n_4921838 = _n;
                            _gotoNext = 4921825i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>))) {
                            var _n:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>) : __type__.__underlying__().value;
                            _n_4921878 = _n;
                            _gotoNext = 4921863i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>))) {
                            var _n:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) : __type__.__underlying__().value;
                            _n_4922136 = _n;
                            _gotoNext = 4922121i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                            var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value;
                            _n_4922169 = _n;
                            _gotoNext = 4922155i32;
                        } else {
                            var _n:stdgo.AnyInterface = __type__?.__underlying__();
                            _n_4922191 = _n;
                            _gotoNext = 4922184i32;
                        };
                    };
                } else if (__value__ == (4921551i32)) {
                    @:check2r _p._expr(_n_4921564);
                    var __blank__ = _n_4921564;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4921579i32)) {
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n_4921592) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                            };
                            _ok_4921724 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_4921724) {
                            _gotoNext = 4921755i32;
                        } else {
                            _gotoNext = 4921779i32;
                        };
                    };
                } else if (__value__ == (4921755i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent = (1 : stdgo.GoInt);
                    _gotoNext = 4921779i32;
                } else if (__value__ == (4921779i32)) {
                    @:check2r _p._stmt(_n_4921592, false);
                    var __blank__ = _n_4921592;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4921797i32)) {
                    @:check2r _p._decl(_n_4921810);
                    var __blank__ = _n_4921810;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4921825i32)) {
                    @:check2r _p._spec(_n_4921838, (1 : stdgo.GoInt), false);
                    var __blank__ = _n_4921838;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4921863i32)) {
                    if ((0i32 : stdgo.GoInt) < (_n_4921878.length)) {
                        _gotoNext = 4922091i32;
                    } else {
                        _gotoNext = 4922096i32;
                    };
                } else if (__value__ == (4922008i32)) {
                    _i_4922016_0++;
                    _gotoNext = 4922092i32;
                } else if (__value__ == (4922024i32)) {
                    _s_4922011 = _n_4921878[(_i_4922016_0 : stdgo.GoInt)];
                    {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s_4922011) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                            };
                            _ok_4922035 = @:tmpset0 __tmp__._1;
                        };
                        if (_ok_4922035) {
                            _gotoNext = 4922066i32;
                        } else {
                            _gotoNext = 4922008i32;
                        };
                    };
                } else if (__value__ == (4922066i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._indent = (1 : stdgo.GoInt);
                    _gotoNext = 4922008i32;
                } else if (__value__ == (4922091i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _n_4921878[(0i32 : stdgo.GoInt)];
                        _i_4922016_0 = __tmp__0;
                        _s_4922011 = __tmp__1;
                    };
                    _gotoNext = 4922092i32;
                } else if (__value__ == (4922092i32)) {
                    if (_i_4922016_0 < (_n_4921878.length)) {
                        _gotoNext = 4922024i32;
                    } else {
                        _gotoNext = 4922096i32;
                    };
                } else if (__value__ == (4922096i32)) {
                    @:check2r _p._stmtList(_n_4921878, (0 : stdgo.GoInt), false);
                    var __blank__ = _n_4921878;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4922121i32)) {
                    @:check2r _p._declList(_n_4922136);
                    var __blank__ = _n_4922136;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4922155i32)) {
                    @:check2r _p._file(_n_4922169);
                    var __blank__ = _n_4922169;
                    _gotoNext = 4922217i32;
                } else if (__value__ == (4922184i32)) {
                    _gotoNext = 4922240i32;
                } else if (__value__ == (4922217i32)) {
                    return (@:checkr _p ?? throw "null pointer dereference")._sourcePosErr;
                    _gotoNext = 4922240i32;
                } else if (__value__ == (4922240i32)) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("go/printer: unsupported node type %T" : stdgo.GoString), _node);
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _flush( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _wroteNewline = false, _droppedFF = false;
        if (@:check2r _p._commentBefore(_next?.__copy__())) {
            {
                var __tmp__ = @:check2r _p._intersperseComments(_next?.__copy__(), _tok);
                _wroteNewline = @:tmpset0 __tmp__._0;
                _droppedFF = @:tmpset0 __tmp__._1;
            };
        } else {
            @:check2r _p._writeWhitespace(((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length));
        };
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    @:tdfield
    static public function _print( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        for (__0 => _arg in _args) {
            var _data:stdgo.GoString = ("" : stdgo.GoString);
            var _isLit:Bool = false;
            var _impliedSemi:Bool = false;
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._lastTok;
                if (__value__ == ((0 : stdgo._internal.go.token.Token_token.Token))) {} else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                    (@:checkr _p ?? throw "null pointer dereference")._prevOpen = (@:checkr _p ?? throw "null pointer dereference")._lastTok;
                } else {
                    (@:checkr _p ?? throw "null pointer dereference")._prevOpen = (0 : stdgo._internal.go.token.Token_token.Token);
                };
            };
            {
                final __type__ = _arg;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.printer.Printer_t_pmode.T_pmode))) {
                    var _x:stdgo._internal.go.printer.Printer_t_pmode.T_pmode = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : __type__.__underlying__().value;
                    (@:checkr _p ?? throw "null pointer dereference")._mode = ((@:checkr _p ?? throw "null pointer dereference")._mode ^ (_x) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
                    continue;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                    var _x:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace = __type__ == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace) : __type__ == null ? ((0 : stdgo.GoUInt8) : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace) : __type__.__underlying__().value;
                    if (_x == ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        continue;
                    };
                    var _i = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length : stdgo.GoInt);
                    if (_i == ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.capacity)) {
                        @:check2r _p._writeWhitespace(_i);
                        _i = (0 : stdgo.GoInt);
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._wsbuf = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
                    (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = _x;
                    if (((_x == (10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || (_x == (12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                        (@:checkr _p ?? throw "null pointer dereference")._impliedSemi = false;
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (0 : stdgo._internal.go.token.Token_token.Token);
                    continue;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                    _data = (@:checkr _x ?? throw "null pointer dereference").name?.__copy__();
                    _impliedSemi = true;
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (4 : stdgo._internal.go.token.Token_token.Token);
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                    var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value;
                    _data = (@:checkr _x ?? throw "null pointer dereference").value?.__copy__();
                    _isLit = true;
                    _impliedSemi = true;
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (@:checkr _x ?? throw "null pointer dereference").kind;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_token.Token))) {
                    var _x:stdgo._internal.go.token.Token_token.Token = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token) : __type__.__underlying__().value;
                    var _s = ((_x.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (stdgo._internal.go.printer.Printer__maycombine._mayCombine((@:checkr _p ?? throw "null pointer dereference")._lastTok, _s[(0 : stdgo.GoInt)])) {
                        if (((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length) != ((0 : stdgo.GoInt))) {
                            @:check2r _p._internalError(stdgo.Go.toInterface(("whitespace buffer not empty" : stdgo.GoString)));
                        };
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(0 : stdgo.GoInt)] = (32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                    };
                    _data = _s?.__copy__();
                    {
                        final __value__ = _x;
                        if (__value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((37 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((38 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((54 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((55 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((56 : stdgo._internal.go.token.Token_token.Token))) {
                            _impliedSemi = true;
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = _x;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _x:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    _data = _x?.__copy__();
                    _isLit = true;
                    _impliedSemi = true;
                    (@:checkr _p ?? throw "null pointer dereference")._lastTok = (9 : stdgo._internal.go.token.Token_token.Token);
                } else {
                    var _x:stdgo.AnyInterface = __type__?.__underlying__();
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), ("print: unsupported argument %v (%T)\n" : stdgo.GoString), _arg, _arg);
                    throw stdgo.Go.toInterface(("go/printer type" : stdgo.GoString));
                };
            };
            var _next = ((@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var __tmp__ = @:check2r _p._flush(_next?.__copy__(), (@:checkr _p ?? throw "null pointer dereference")._lastTok), _wroteNewline:Bool = __tmp__._0, _droppedFF:Bool = __tmp__._1;
            if (!(@:checkr _p ?? throw "null pointer dereference")._impliedSemi) {
                var _n = (stdgo._internal.go.printer.Printer__nlimit._nlimit((_next.line - (@:checkr _p ?? throw "null pointer dereference")._pos.line : stdgo.GoInt)) : stdgo.GoInt);
                if ((_wroteNewline && (_n == (2 : stdgo.GoInt)) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    var _ch = ((10 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    if (_droppedFF) {
                        _ch = (12 : stdgo.GoUInt8);
                    };
                    @:check2r _p._writeByte(_ch, _n);
                    _impliedSemi = false;
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._linePtr != null) {
                (@:checkr _p ?? throw "null pointer dereference")._linePtr.value = (@:checkr _p ?? throw "null pointer dereference")._out.line;
                (@:checkr _p ?? throw "null pointer dereference")._linePtr = (null : stdgo.Pointer<stdgo.GoInt>);
            };
            @:check2r _p._writeString(_next?.__copy__(), _data?.__copy__(), _isLit);
            (@:checkr _p ?? throw "null pointer dereference")._impliedSemi = _impliedSemi;
        };
    }
    @:keep
    @:tdfield
    static public function _setPos( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (_pos.isValid()) {
            (@:checkr _p ?? throw "null pointer dereference")._pos = @:check2r _p._posFor(_pos)?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _writeWhitespace( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                {
                    var _ch = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _ch;
                                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)))) {
                                    break;
                                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)))) {
                                    (@:checkr _p ?? throw "null pointer dereference")._indent++;
                                    break;
                                    break;
                                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)))) {
                                    (@:checkr _p ?? throw "null pointer dereference")._indent--;
                                    if (((@:checkr _p ?? throw "null pointer dereference")._indent < (0 : stdgo.GoInt) : Bool)) {
                                        @:check2r _p._internalError(stdgo.Go.toInterface(("negative indentation:" : stdgo.GoString)), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._indent));
                                        (@:checkr _p ?? throw "null pointer dereference")._indent = (0 : stdgo.GoInt);
                                    };
                                    break;
                                    break;
                                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))))) {
                                    if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < _n : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                                        {
                                            final __tmp__0 = (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                                            final __tmp__1 = (12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                                            final __tmp__2 = (@:checkr _p ?? throw "null pointer dereference")._wsbuf;
                                            final __tmp__3 = (_i : stdgo.GoInt);
                                            final __tmp__4 = (@:checkr _p ?? throw "null pointer dereference")._wsbuf;
                                            final __tmp__5 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                            __tmp__2[__tmp__3] = __tmp__0;
                                            __tmp__4[__tmp__5] = __tmp__1;
                                        };
                                        _i--;
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    @:fallthrough {
                                        __switchIndex__ = 4;
                                        __run__ = true;
                                        continue;
                                    };
                                    break;
                                } else {
                                    @:check2r _p._writeByte((_ch : stdgo.GoUInt8), (1 : stdgo.GoInt));
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _i++;
                            continue;
                        };
                    };
                };
                _i++;
            };
        };
        var _l = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__copyTo__(((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__(_n) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>)) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._wsbuf = ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.__slice__(0, _l) : stdgo.Slice<stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace>);
    }
    @:keep
    @:tdfield
    static public function _intersperseComments( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position, _tok:stdgo._internal.go.token.Token_token.Token):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _wroteNewline = false, _droppedFF = false;
        var _last:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        while (@:check2r _p._commentBefore(_next?.__copy__())) {
            var _list = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list;
            var _changed = (false : Bool);
            if ((((@:checkr _p ?? throw "null pointer dereference")._lastTok != ((75 : stdgo._internal.go.token.Token_token.Token)) && @:check2r _p._posFor(@:check2r (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment.pos()).column == ((1 : stdgo.GoInt)) : Bool) && (stdgo.Go.toInterface(@:check2r _p._posFor((@:check2r (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment.end() + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos))) == stdgo.Go.toInterface(_next)) : Bool)) {
                _list = stdgo._internal.go.printer.Printer__formatdoccomment._formatDocComment(_list);
                _changed = true;
                if (((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool) && (_list.length == (0 : stdgo.GoInt)) : Bool)) {
                    @:check2r _p._writeCommentPrefix(@:check2r _p._posFor(@:check2r (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment.pos())?.__copy__(), _next?.__copy__(), _last, _tok);
                    (@:checkr _p ?? throw "null pointer dereference")._pos = _next?.__copy__();
                    (@:checkr _p ?? throw "null pointer dereference")._last = _next?.__copy__();
                    @:check2r _p._nextComment();
                    return {
                        final __tmp__:{ var _0 : Bool; var _1 : Bool; } = @:check2r _p._writeCommentSuffix(false);
                        _wroteNewline = __tmp__._0;
                        _droppedFF = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            for (__56 => _c in _list) {
                @:check2r _p._writeCommentPrefix(@:check2r _p._posFor(@:check2r _c.pos())?.__copy__(), _next?.__copy__(), _last, _tok);
                @:check2r _p._writeComment(_c);
                _last = _c;
            };
            if (((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool) && _changed : Bool)) {
                _last = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list[(((@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                (@:checkr _p ?? throw "null pointer dereference")._pos = @:check2r _p._posFor(@:check2r _last.end())?.__copy__();
                (@:checkr _p ?? throw "null pointer dereference")._last = (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
            };
            @:check2r _p._nextComment();
        };
        if ((_last != null && ((_last : Dynamic).__nil__ == null || !(_last : Dynamic).__nil__))) {
            var _needsLinebreak = (false : Bool);
            if ((((((((@:checkr _p ?? throw "null pointer dereference")._mode & (1 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) == ((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) && (@:checkr _last ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)) : Bool) && @:check2r _p._lineFor(@:check2r _last.pos()) == (_next.line) : Bool) && _tok != ((52 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (((_tok != (54 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw "null pointer dereference")._prevOpen == (49 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool) && (((_tok != (55 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw "null pointer dereference")._prevOpen == (50 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                if (((@:check2r _p._containsLinebreak() && ((@:checkr _p ?? throw "null pointer dereference")._mode & (2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) == ((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._level == (0 : stdgo.GoInt)) : Bool)) {
                    _needsLinebreak = true;
                } else {
                    @:check2r _p._writeByte((32 : stdgo.GoUInt8), (1 : stdgo.GoInt));
                };
            };
            if ((((@:checkr _last ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) || _tok == ((1 : stdgo._internal.go.token.Token_token.Token)) : Bool) || (_tok == ((56 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._mode & (2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode) == ((0 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) : Bool) : Bool)) {
                _needsLinebreak = true;
            };
            return {
                final __tmp__:{ var _0 : Bool; var _1 : Bool; } = @:check2r _p._writeCommentSuffix(_needsLinebreak);
                _wroteNewline = __tmp__._0;
                _droppedFF = __tmp__._1;
                __tmp__;
            };
        };
        @:check2r _p._internalError(stdgo.Go.toInterface(("intersperseComments called without pending comments" : stdgo.GoString)));
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    @:tdfield
    static public function _containsLinebreak( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        for (__8 => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
            if (((_ch == (10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || (_ch == (12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _writeCommentSuffix( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _needsLinebreak:Bool):{ var _0 : Bool; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _wroteNewline = false, _droppedFF = false;
        for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
            {
                final __value__ = _ch;
                if (__value__ == ((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                    (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {} else if (__value__ == ((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                    if (_needsLinebreak) {
                        _needsLinebreak = false;
                        _wroteNewline = true;
                    } else {
                        if (_ch == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            _droppedFF = true;
                        };
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                    };
                };
            };
        };
        @:check2r _p._writeWhitespace(((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length));
        if (_needsLinebreak) {
            @:check2r _p._writeByte((10 : stdgo.GoUInt8), (1 : stdgo.GoInt));
            _wroteNewline = true;
        };
        return { _0 : _wroteNewline, _1 : _droppedFF };
    }
    @:keep
    @:tdfield
    static public function _writeComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _text = ((@:checkr _comment ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
            var _pos = (@:check2r _p._posFor(@:check2r _comment.pos())?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            {};
            if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_text?.__copy__(), ("//line " : stdgo.GoString)) && ((!@:check2 _pos.isValid() || (_pos.column == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                {
                    var _a0 = (@:checkr _p ?? throw "null pointer dereference")._indent;
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function(_indent:stdgo.GoInt):Void {
                            (@:checkr _p ?? throw "null pointer dereference")._indent = _indent;
                        };
                        a(_a0);
                    }) });
                };
                (@:checkr _p ?? throw "null pointer dereference")._indent = (0 : stdgo.GoInt);
            };
            if (_text[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                if (stdgo._internal.go.build.constraint.Constraint_isgobuild.isGoBuild(_text?.__copy__())) {
                    (@:checkr _p ?? throw "null pointer dereference")._goBuild = ((@:checkr _p ?? throw "null pointer dereference")._goBuild.__append__((@:checkr _p ?? throw "null pointer dereference")._output.length));
                } else if (stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_text?.__copy__())) {
                    (@:checkr _p ?? throw "null pointer dereference")._plusBuild = ((@:checkr _p ?? throw "null pointer dereference")._plusBuild.__append__((@:checkr _p ?? throw "null pointer dereference")._output.length));
                };
                @:check2r _p._writeString(_pos?.__copy__(), stdgo._internal.go.printer.Printer__trimright._trimRight(_text?.__copy__())?.__copy__(), true);
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _lines = stdgo._internal.strings.Strings_split.split(_text?.__copy__(), ("\n" : stdgo.GoString));
            if (((@:check2 _pos.isValid() && _pos.column == ((1 : stdgo.GoInt)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._indent > (0 : stdgo.GoInt) : Bool) : Bool)) {
                for (_i => _line in (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                    _lines[((1 : stdgo.GoInt) + _i : stdgo.GoInt)] = (("   " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
                };
            };
            stdgo._internal.go.printer.Printer__stripcommonprefix._stripCommonPrefix(_lines);
            for (_i => _line in _lines) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._writeByte((12 : stdgo.GoUInt8), (1 : stdgo.GoInt));
                    _pos = (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
                };
                if (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._writeString(_pos?.__copy__(), stdgo._internal.go.printer.Printer__trimright._trimRight(_line?.__copy__())?.__copy__(), true);
                };
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
    static public function _writeCommentPrefix( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_position.Position, _next:stdgo._internal.go.token.Token_position.Position, _prev:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>, _tok:stdgo._internal.go.token.Token_token.Token):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._output.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        if ((@:check2 _pos.isValid() && (_pos.filename != (@:checkr _p ?? throw "null pointer dereference")._last.filename) : Bool)) {
            @:check2r _p._writeByte((12 : stdgo.GoUInt8), (2 : stdgo.GoInt));
            return;
        };
        if (((_pos.line == (@:checkr _p ?? throw "null pointer dereference")._last.line) && (((_prev == null || (_prev : Dynamic).__nil__) || ((@:checkr _prev ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var _hasSep = (false : Bool);
            if ((_prev == null || (_prev : Dynamic).__nil__)) {
                var _j = (0 : stdgo.GoInt);
                for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
                    {
                        final __value__ = _ch;
                        if (__value__ == ((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                            continue;
                        } else if (__value__ == ((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            _hasSep = true;
                            continue;
                        } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                            continue;
                        };
                    };
                    _j = _i;
                    break;
                };
                @:check2r _p._writeWhitespace(_j);
            };
            if (!_hasSep) {
                var _sep = ((9 : stdgo.GoUInt8) : stdgo.GoUInt8);
                if (_pos.line == (_next.line)) {
                    _sep = (32 : stdgo.GoUInt8);
                };
                @:check2r _p._writeByte(_sep, (1 : stdgo.GoInt));
            };
        } else {
            var _droppedLinebreak = (false : Bool);
            var _j = (0 : stdgo.GoInt);
            for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._wsbuf) {
                {
                    final __value__ = _ch;
                    if (__value__ == ((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                        continue;
                    } else if (__value__ == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        continue;
                    } else if (__value__ == ((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr _p ?? throw "null pointer dereference")._wsbuf.length) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                            continue;
                        };
                        if (((_tok != (56 : stdgo._internal.go.token.Token_token.Token)) && (_pos.column == _next.column) : Bool)) {
                            continue;
                        };
                    } else if (__value__ == ((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) || __value__ == ((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                        (@:checkr _p ?? throw "null pointer dereference")._wsbuf[(_i : stdgo.GoInt)] = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                        _droppedLinebreak = (_prev == null || (_prev : Dynamic).__nil__);
                    };
                };
                _j = _i;
                break;
            };
            @:check2r _p._writeWhitespace(_j);
            var _n = (0 : stdgo.GoInt);
            if ((@:check2 _pos.isValid() && @:check2 (@:checkr _p ?? throw "null pointer dereference")._last.isValid() : Bool)) {
                _n = (_pos.line - (@:checkr _p ?? throw "null pointer dereference")._last.line : stdgo.GoInt);
                if ((_n < (0 : stdgo.GoInt) : Bool)) {
                    _n = (0 : stdgo.GoInt);
                };
            };
            if ((((@:checkr _p ?? throw "null pointer dereference")._indent == (0 : stdgo.GoInt)) && _droppedLinebreak : Bool)) {
                _n++;
            };
            if (((_n == ((0 : stdgo.GoInt)) && (_prev != null && ((_prev : Dynamic).__nil__ == null || !(_prev : Dynamic).__nil__)) : Bool) && ((@:checkr _prev ?? throw "null pointer dereference").text[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                _n = (1 : stdgo.GoInt);
            };
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _p._writeByte((12 : stdgo.GoUInt8), stdgo._internal.go.printer.Printer__nlimit._nlimit(_n));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeString( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_position.Position, _s:stdgo.GoString, _isLit:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._out.column == ((1 : stdgo.GoInt))) {
            if (((@:checkr _p ?? throw "null pointer dereference").config.mode & (8u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) != ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                @:check2r _p._writeLineDirective(_pos?.__copy__());
            };
            @:check2r _p._writeIndent();
        };
        if (@:check2 _pos.isValid()) {
            (@:checkr _p ?? throw "null pointer dereference")._pos = _pos?.__copy__();
        };
        if (_isLit) {
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)));
        };
        if (false) {
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(stdgo._internal.fmt.Fmt_sprintf.sprintf(("/*%s*/" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos))) : Array<stdgo.GoUInt8>)));
        };
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(_s : Array<stdgo.GoUInt8>)));
        var _nlines = (0 : stdgo.GoInt);
        var _li:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var _ch = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
                        _nlines++;
                        _li = _i;
                        (@:checkr _p ?? throw "null pointer dereference")._endAlignment = true;
                    };
                };
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.offset = ((@:checkr _p ?? throw "null pointer dereference")._pos.offset + ((_s.length)) : stdgo.GoInt);
        if ((_nlines > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._pos.line = ((@:checkr _p ?? throw "null pointer dereference")._pos.line + (_nlines) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.line = ((@:checkr _p ?? throw "null pointer dereference")._out.line + (_nlines) : stdgo.GoInt);
            var _c = ((_s.length) - _li : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._pos.column = _c;
            (@:checkr _p ?? throw "null pointer dereference")._out.column = _c;
        } else {
            (@:checkr _p ?? throw "null pointer dereference")._pos.column = ((@:checkr _p ?? throw "null pointer dereference")._pos.column + ((_s.length)) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.column = ((@:checkr _p ?? throw "null pointer dereference")._out.column + ((_s.length)) : stdgo.GoInt);
        };
        if (_isLit) {
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)));
        };
        (@:checkr _p ?? throw "null pointer dereference")._last = (@:checkr _p ?? throw "null pointer dereference")._pos?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _writeByte( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _ch:stdgo.GoUInt8, _n:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._endAlignment) {
            {
                final __value__ = _ch;
                if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((11 : stdgo.GoUInt8))) {
                    _ch = (32 : stdgo.GoUInt8);
                } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                    _ch = (12 : stdgo.GoUInt8);
                    (@:checkr _p ?? throw "null pointer dereference")._endAlignment = false;
                };
            };
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._out.column == ((1 : stdgo.GoInt))) {
            @:check2r _p._writeIndent();
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(_ch));
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.offset = ((@:checkr _p ?? throw "null pointer dereference")._pos.offset + (_n) : stdgo.GoInt);
        if (((_ch == (10 : stdgo.GoUInt8)) || (_ch == (12 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._pos.line = ((@:checkr _p ?? throw "null pointer dereference")._pos.line + (_n) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.line = ((@:checkr _p ?? throw "null pointer dereference")._out.line + (_n) : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._pos.column = (1 : stdgo.GoInt);
            (@:checkr _p ?? throw "null pointer dereference")._out.column = (1 : stdgo.GoInt);
            return;
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.column = ((@:checkr _p ?? throw "null pointer dereference")._pos.column + (_n) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._out.column = ((@:checkr _p ?? throw "null pointer dereference")._out.column + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeIndent( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _n = ((@:checkr _p ?? throw "null pointer dereference").config.indent + (@:checkr _p ?? throw "null pointer dereference")._indent : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((9 : stdgo.GoUInt8)));
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._pos.offset = ((@:checkr _p ?? throw "null pointer dereference")._pos.offset + (_n) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._pos.column = ((@:checkr _p ?? throw "null pointer dereference")._pos.column + (_n) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._out.column = ((@:checkr _p ?? throw "null pointer dereference")._out.column + (_n) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeLineDirective( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_position.Position):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((@:check2 _pos.isValid() && ((((@:checkr _p ?? throw "null pointer dereference")._out.line != _pos.line) || ((@:checkr _p ?? throw "null pointer dereference")._out.filename != _pos.filename) : Bool)) : Bool)) {
            if (stdgo._internal.strings.Strings_containsany.containsAny(_pos.filename?.__copy__(), ("\r\n" : stdgo.GoString))) {
                if ((@:checkr _p ?? throw "null pointer dereference")._sourcePosErr == null) {
                    (@:checkr _p ?? throw "null pointer dereference")._sourcePosErr = stdgo._internal.fmt.Fmt_errorf.errorf(("go/printer: source filename contains unexpected newline character: %q" : stdgo.GoString), stdgo.Go.toInterface(_pos.filename));
                };
                return;
            };
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)));
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(stdgo._internal.fmt.Fmt_sprintf.sprintf(("//line %s:%d\n" : stdgo.GoString), stdgo.Go.toInterface(_pos.filename), stdgo.Go.toInterface(_pos.line)) : Array<stdgo.GoUInt8>)));
            (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__((255 : stdgo.GoUInt8)));
            (@:checkr _p ?? throw "null pointer dereference")._out.filename = _pos.filename?.__copy__();
            (@:checkr _p ?? throw "null pointer dereference")._out.line = _pos.line;
        };
    }
    @:keep
    @:tdfield
    static public function _lineFor( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (_pos != ((@:checkr _p ?? throw "null pointer dereference")._cachedPos)) {
            (@:checkr _p ?? throw "null pointer dereference")._cachedPos = _pos;
            (@:checkr _p ?? throw "null pointer dereference")._cachedLine = @:check2r (@:checkr _p ?? throw "null pointer dereference")._fset.positionFor(_pos, false).line;
        };
        return (@:checkr _p ?? throw "null pointer dereference")._cachedLine;
    }
    @:keep
    @:tdfield
    static public function _posFor( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        return @:check2r (@:checkr _p ?? throw "null pointer dereference")._fset.positionFor(_pos, false)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _linesFrom( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _line:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._out.line - _line : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _recordLine( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _linePtr:stdgo.Pointer<stdgo.GoInt>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._linePtr = _linePtr;
    }
    @:keep
    @:tdfield
    static public function _commentSizeBefore( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = (@:checkr _p ?? throw "null pointer dereference")._commentInfo;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_info:stdgo._internal.go.printer.Printer_t_commentinfo.T_commentInfo):Void {
                        (@:checkr _p ?? throw "null pointer dereference")._commentInfo = _info?.__copy__();
                    };
                    a(_a0?.__copy__());
                }) });
            };
            var _size = (0 : stdgo.GoInt);
            while (@:check2r _p._commentBefore(_next?.__copy__())) {
                for (__24 => _c in (@:checkr (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment ?? throw "null pointer dereference").list) {
                    _size = (_size + (((@:checkr _c ?? throw "null pointer dereference").text.length)) : stdgo.GoInt);
                };
                @:check2r _p._nextComment();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _size;
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
                return (0 : stdgo.GoInt);
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
                return (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _commentBefore( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _next:stdgo._internal.go.token.Token_position.Position):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset < _next.offset : Bool) && ((!(@:checkr _p ?? throw "null pointer dereference")._impliedSemi || !(@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentNewline : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _nextComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        while (((@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex < ((@:checkr _p ?? throw "null pointer dereference")._comments.length) : Bool)) {
            var _c = (@:checkr _p ?? throw "null pointer dereference")._comments[((@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex : stdgo.GoInt)];
            (@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex++;
            {
                var _list = (@:checkr _c ?? throw "null pointer dereference").list;
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._commentInfo._comment = _c;
                    (@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset = @:check2r _p._posFor(@:check2r _list[(0 : stdgo.GoInt)].pos()).offset;
                    (@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentNewline = @:check2r _p._commentsHaveNewline(_list);
                    return;
                };
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset = (1073741824 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _commentsHaveNewline( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _line = (@:check2r _p._lineFor(@:check2r _list[(0 : stdgo.GoInt)].pos()) : stdgo.GoInt);
        for (_i => _c in _list) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._lineFor(@:check2r _list[(_i : stdgo.GoInt)].pos()) != _line) : Bool)) {
                return true;
            };
            {
                var _t = ((@:checkr _c ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
                if ((((_t.length) >= (2 : stdgo.GoInt) : Bool) && (((_t[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) || stdgo._internal.strings.Strings_contains.contains(_t?.__copy__(), ("\n" : stdgo.GoString)) : Bool)) : Bool)) {
                    return true;
                };
            };
        };
        var __blank__ = _line;
        return false;
    }
    @:keep
    @:tdfield
    static public function _internalError( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _msg:haxe.Rest<stdgo.AnyInterface>):Void {
        var _msg = new stdgo.Slice<stdgo.AnyInterface>(_msg.length, 0, ..._msg);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (false) {
            stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface((((@:checkr _p ?? throw "null pointer dereference")._pos.string() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            stdgo._internal.fmt.Fmt_println.println(...(_msg : Array<stdgo.AnyInterface>));
            throw stdgo.Go.toInterface(("go/printer" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _file( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setComment((@:checkr _src ?? throw "null pointer dereference").doc);
        @:check2r _p._setPos(@:check2r _src.pos());
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((78 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _src ?? throw "null pointer dereference").name));
        @:check2r _p._declList((@:checkr _src ?? throw "null pointer dereference").decls);
        @:check2r _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
    }
    @:keep
    @:tdfield
    static public function _declList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _tok = (0 : stdgo._internal.go.token.Token_token.Token);
        for (__0 => _d in _list) {
            var _prev = (_tok : stdgo._internal.go.token.Token_token.Token);
            _tok = stdgo._internal.go.printer.Printer__decltoken._declToken(_d);
            if ((((@:checkr _p ?? throw "null pointer dereference")._output.length) > (0 : stdgo.GoInt) : Bool)) {
                var _min = (1 : stdgo.GoInt);
                if (((_prev != _tok) || (stdgo._internal.go.printer.Printer__getdoc._getDoc(_d) != null && ((stdgo._internal.go.printer.Printer__getdoc._getDoc(_d) : Dynamic).__nil__ == null || !(stdgo._internal.go.printer.Printer__getdoc._getDoc(_d) : Dynamic).__nil__)) : Bool)) {
                    _min = (2 : stdgo.GoInt);
                };
                @:check2r _p._linebreak(@:check2r _p._lineFor(_d.pos()), _min, (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), ((_tok == (71 : stdgo._internal.go.token.Token_token.Token)) && (@:check2r _p._numLines(_d) > (1 : stdgo.GoInt) : Bool) : Bool));
            };
            @:check2r _p._decl(_d);
        };
    }
    @:keep
    @:tdfield
    static public function _decl( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _decl:stdgo._internal.go.ast.Ast_decl.Decl):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>) : __type__.__underlying__().value;
                @:check2r _p._setPos(@:check2r _d.pos());
                @:check2r _p._print(stdgo.Go.toInterface(("BadDecl" : stdgo.GoString)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                @:check2r _p._genDecl(_d);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                @:check2r _p._funcDecl(_d);
            } else {
                var _d:stdgo._internal.go.ast.Ast_decl.Decl = __type__ == null ? (null : stdgo._internal.go.ast.Ast_decl.Decl) : cast __type__;
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _funcDecl( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setComment((@:checkr _d ?? throw "null pointer dereference").doc);
        @:check2r _p._setPos(@:check2r _d.pos());
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        var _startCol = ((@:checkr _p ?? throw "null pointer dereference")._out.column - ((("func " : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
        if (((@:checkr _d ?? throw "null pointer dereference").recv != null && (((@:checkr _d ?? throw "null pointer dereference").recv : Dynamic).__nil__ == null || !((@:checkr _d ?? throw "null pointer dereference").recv : Dynamic).__nil__))) {
            @:check2r _p._parameters((@:checkr _d ?? throw "null pointer dereference").recv, (0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference").name));
        @:check2r _p._signature((@:checkr _d ?? throw "null pointer dereference").type);
        @:check2r _p._funcBody(@:check2r _p._distanceFrom(@:check2r _d.pos(), _startCol), (11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:checkr _d ?? throw "null pointer dereference").body);
    }
    @:keep
    @:tdfield
    static public function _distanceFrom( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _startPos:stdgo._internal.go.token.Token_pos.Pos, _startOutCol:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((_startPos.isValid() && @:check2 (@:checkr _p ?? throw "null pointer dereference")._pos.isValid() : Bool) && (@:check2r _p._posFor(_startPos).line == (@:checkr _p ?? throw "null pointer dereference")._pos.line) : Bool)) {
            return ((@:checkr _p ?? throw "null pointer dereference")._out.column - _startOutCol : stdgo.GoInt);
        };
        return (1073741824 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _funcBody( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _headerSize:stdgo.GoInt, _sep:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_b == null || (_b : Dynamic).__nil__)) {
                return;
            };
            {
                var _a0 = (@:checkr _p ?? throw "null pointer dereference")._level;
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function(_level:stdgo.GoInt):Void {
                        (@:checkr _p ?? throw "null pointer dereference")._level = _level;
                    };
                    a(_a0);
                }) });
            };
            (@:checkr _p ?? throw "null pointer dereference")._level = (0 : stdgo.GoInt);
            {};
            if (((_headerSize + @:check2r _p._bodySize(_b, (100 : stdgo.GoInt)) : stdgo.GoInt) <= (100 : stdgo.GoInt) : Bool)) {
                @:check2r _p._print(stdgo.Go.toInterface(_sep));
                @:check2r _p._setPos((@:checkr _b ?? throw "null pointer dereference").lbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                if ((((@:checkr _b ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    for (_i => _s in (@:checkr _b ?? throw "null pointer dereference").list) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        @:check2r _p._stmt(_s, _i == ((((@:checkr _b ?? throw "null pointer dereference").list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
                    };
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._print(stdgo.Go.toInterface((2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)));
                @:check2r _p._setPos((@:checkr _b ?? throw "null pointer dereference").rbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            if (_sep != ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            };
            @:check2r _p._block(_b, (1 : stdgo.GoInt));
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
    static public function _bodySize( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _maxSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _pos1 = (@:check2r _b.pos() : stdgo._internal.go.token.Token_pos.Pos);
        var _pos2 = ((@:checkr _b ?? throw "null pointer dereference").rbrace : stdgo._internal.go.token.Token_pos.Pos);
        if (((_pos1.isValid() && _pos2.isValid() : Bool) && (@:check2r _p._lineFor(_pos1) != @:check2r _p._lineFor(_pos2)) : Bool)) {
            return (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((((@:checkr _b ?? throw "null pointer dereference").list.length) > (5 : stdgo.GoInt) : Bool)) {
            return (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _bodySize = (@:check2r _p._commentSizeBefore(@:check2r _p._posFor(_pos2)?.__copy__()) : stdgo.GoInt);
        for (_i => _s in (@:checkr _b ?? throw "null pointer dereference").list) {
            if ((_bodySize > _maxSize : Bool)) {
                break;
            };
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _bodySize = (_bodySize + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
            _bodySize = (_bodySize + (@:check2r _p._nodeSize(_s, _maxSize)) : stdgo.GoInt);
        };
        return _bodySize;
    }
    @:keep
    @:tdfield
    static public function _numLines( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _n:stdgo._internal.go.ast.Ast_node.Node):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {
            var _from = (_n.pos() : stdgo._internal.go.token.Token_pos.Pos);
            if (_from.isValid()) {
                {
                    var _to = (_n.end() : stdgo._internal.go.token.Token_pos.Pos);
                    if (_to.isValid()) {
                        return ((@:check2r _p._lineFor(_to) - @:check2r _p._lineFor(_from) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
            };
        };
        return (1073741824 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _nodeSize( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _n:stdgo._internal.go.ast.Ast_node.Node, _maxSize:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _size = (0 : stdgo.GoInt);
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._nodeSizes != null && (@:checkr _p ?? throw "null pointer dereference")._nodeSizes.exists(_n) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._nodeSizes[_n], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _size:stdgo.GoInt = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return _size;
            };
        };
        _size = (_maxSize + (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._nodeSizes[_n] = _size;
        var _cfg = ({ mode : (1u32 : stdgo._internal.go.printer.Printer_mode.Mode) } : stdgo._internal.go.printer.Printer_config.Config);
        var _counter:stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter = ({} : stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter);
        {
            var _err = (@:check2 _cfg._fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_counter) : stdgo.Ref<stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter>)), (@:checkr _p ?? throw "null pointer dereference")._fset, stdgo.Go.toInterface(_n), (@:checkr _p ?? throw "null pointer dereference")._nodeSizes) : stdgo.Error);
            if (_err != null) {
                return _size;
            };
        };
        if (((_counter._size <= _maxSize : Bool) && !_counter._hasNewline : Bool)) {
            _size = _counter._size;
            (@:checkr _p ?? throw "null pointer dereference")._nodeSizes[_n] = _size;
        };
        return _size;
    }
    @:keep
    @:tdfield
    static public function _genDecl( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setComment((@:checkr _d ?? throw "null pointer dereference").doc);
        @:check2r _p._setPos(@:check2r _d.pos());
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _d ?? throw "null pointer dereference").tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        if (((@:checkr _d ?? throw "null pointer dereference").lparen.isValid() || (((@:checkr _d ?? throw "null pointer dereference").specs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _p._setPos((@:checkr _d ?? throw "null pointer dereference").lparen);
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
            {
                var _n = ((@:checkr _d ?? throw "null pointer dereference").specs.length : stdgo.GoInt);
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    if (((_n > (1 : stdgo.GoInt) : Bool) && ((((@:checkr _d ?? throw "null pointer dereference").tok == (64 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _d ?? throw "null pointer dereference").tok == (85 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                        var _keepType = stdgo._internal.go.printer.Printer__keeptypecolumn._keepTypeColumn((@:checkr _d ?? throw "null pointer dereference").specs);
                        var _line:stdgo.GoInt = (0 : stdgo.GoInt);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        for (_i => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                @:check2r _p._linebreak(@:check2r _p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:check2r _p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                            };
                            @:check2r _p._recordLine(_line__pointer__);
                            @:check2r _p._valueSpec((stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _keepType[(_i : stdgo.GoInt)]);
                        };
                    } else {
                        var _line:stdgo.GoInt = (0 : stdgo.GoInt);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        var _line__pointer__ = stdgo.Go.pointer(_line);
                        for (_i => _s in (@:checkr _d ?? throw "null pointer dereference").specs) {
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                @:check2r _p._linebreak(@:check2r _p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:check2r _p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                            };
                            @:check2r _p._recordLine(_line__pointer__);
                            @:check2r _p._spec(_s, _n, false);
                        };
                    };
                    @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            };
            @:check2r _p._setPos((@:checkr _d ?? throw "null pointer dereference").rparen);
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
        } else if ((((@:checkr _d ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _p._spec((@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)], (1 : stdgo.GoInt), true);
        };
    }
    @:keep
    @:tdfield
    static public function _spec( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _spec:stdgo._internal.go.ast.Ast_spec.Spec, _n:stdgo.GoInt, _doIndent:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value;
                @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
                if (((@:checkr _s ?? throw "null pointer dereference").name != null && (((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__))) {
                    @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").name));
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._expr(stdgo.Go.asInterface(stdgo._internal.go.printer.Printer__sanitizeimportpath._sanitizeImportPath((@:checkr _s ?? throw "null pointer dereference").path)));
                @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
                @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").endPos);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                if (_n != ((1 : stdgo.GoInt))) {
                    @:check2r _p._internalError(stdgo.Go.toInterface(("expected n = 1; got" : stdgo.GoString)), stdgo.Go.toInterface(_n));
                };
                @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
                @:check2r _p._identList((@:checkr _s ?? throw "null pointer dereference").names, _doIndent);
                if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    @:check2r _p._expr((@:checkr _s ?? throw "null pointer dereference").type);
                };
                if ((@:checkr _s ?? throw "null pointer dereference").values != null) {
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    @:check2r _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").values, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                };
                @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
                @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").name));
                if (((@:checkr _s ?? throw "null pointer dereference").typeParams != null && (((@:checkr _s ?? throw "null pointer dereference").typeParams : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").typeParams : Dynamic).__nil__))) {
                    @:check2r _p._parameters((@:checkr _s ?? throw "null pointer dereference").typeParams, (2 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
                };
                if (_n == ((1 : stdgo.GoInt))) {
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                } else {
                    @:check2r _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                if ((@:checkr _s ?? throw "null pointer dereference").assign.isValid()) {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._expr((@:checkr _s ?? throw "null pointer dereference").type);
                @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
            } else {
                var _s:stdgo._internal.go.ast.Ast_spec.Spec = __type__ == null ? (null : stdgo._internal.go.ast.Ast_spec.Spec) : cast __type__;
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _valueSpec( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>, _keepType:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").doc);
        @:check2r _p._identList((@:checkr _s ?? throw "null pointer dereference").names, false);
        var _extraTabs = (3 : stdgo.GoInt);
        if ((((@:checkr _s ?? throw "null pointer dereference").type != null) || _keepType : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            _extraTabs--;
        };
        if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
            @:check2r _p._expr((@:checkr _s ?? throw "null pointer dereference").type);
        };
        if ((@:checkr _s ?? throw "null pointer dereference").values != null) {
            @:check2r _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((42 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            @:check2r _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").values, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
            _extraTabs--;
        };
        if (((@:checkr _s ?? throw "null pointer dereference").comment != null && (((@:checkr _s ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
            while ((_extraTabs > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _p._print(stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _extraTabs--;
            };
            @:check2r _p._setComment((@:checkr _s ?? throw "null pointer dereference").comment);
        };
    }
    @:keep
    @:tdfield
    static public function _stmt( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _stmt:stdgo._internal.go.ast.Ast_stmt.Stmt, _nextIsRBrace:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setPos(_stmt.pos());
        {
            final __type__ = _stmt;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(("BadStmt" : stdgo.GoString)));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>) : __type__.__underlying__().value;
                        @:check2r _p._decl((@:checkr _s ?? throw "null pointer dereference").decl);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>) : __type__.__underlying__().value;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").label));
                        @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").colon);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").stmt) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : false };
                            }, _e = __tmp__._0, _isEmpty = __tmp__._1;
                            if (_isEmpty) {
                                if (!_nextIsRBrace) {
                                    @:check2r _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                    @:check2r _p._setPos(@:check2r _e.pos());
                                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))));
                                    break;
                                };
                            } else {
                                @:check2r _p._linebreak(@:check2r _p._lineFor((@:checkr _s ?? throw "null pointer dereference").stmt.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), true);
                            };
                        };
                        @:check2r _p._stmt((@:checkr _s ?? throw "null pointer dereference").stmt, _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value;
                        {};
                        @:check2r _p._expr0((@:checkr _s ?? throw "null pointer dereference").x, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>) : __type__.__underlying__().value;
                        {};
                        @:check2r _p._expr0((@:checkr _s ?? throw "null pointer dereference").chan, (1 : stdgo.GoInt));
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").arrow);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._expr0((@:checkr _s ?? throw "null pointer dereference").value, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>) : __type__.__underlying__().value;
                        {};
                        @:check2r _p._expr0((@:checkr _s ?? throw "null pointer dereference").x, (2 : stdgo.GoInt));
                        @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").tokPos);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value;
                        var _depth = (1 : stdgo.GoInt);
                        if (((((@:checkr _s ?? throw "null pointer dereference").lhs.length) > (1 : stdgo.GoInt) : Bool) && (((@:checkr _s ?? throw "null pointer dereference").rhs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            _depth++;
                        };
                        @:check2r _p._exprList(@:check2r _s.pos(), (@:checkr _s ?? throw "null pointer dereference").lhs, _depth, (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _s ?? throw "null pointer dereference").tokPos, false);
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").tokPos);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._exprList((@:checkr _s ?? throw "null pointer dereference").tokPos, (@:checkr _s ?? throw "null pointer dereference").rhs, _depth, (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((72 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").call));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((67 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").call));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((80 : stdgo._internal.go.token.Token_token.Token))));
                        if ((@:checkr _s ?? throw "null pointer dereference").results != null) {
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            if (@:check2r _p._indentList((@:checkr _s ?? throw "null pointer dereference").results)) {
                                @:check2r _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                @:check2r _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").results, (1 : stdgo.GoInt), (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                                @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            } else {
                                @:check2r _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), (@:checkr _s ?? throw "null pointer dereference").results, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (0 : stdgo._internal.go.token.Token_pos.Pos), false);
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)));
                        if (((@:checkr _s ?? throw "null pointer dereference").label != null && (((@:checkr _s ?? throw "null pointer dereference").label : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").label : Dynamic).__nil__))) {
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").label));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value;
                        @:check2r _p._block(_s, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((74 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._controlClause(false, (@:checkr _s ?? throw "null pointer dereference").init, (@:checkr _s ?? throw "null pointer dereference").cond, (null : stdgo._internal.go.ast.Ast_stmt.Stmt));
                        @:check2r _p._block((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt));
                        if ((@:checkr _s ?? throw "null pointer dereference").else_ != null) {
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((68 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            {
                                final __type__ = (@:checkr _s ?? throw "null pointer dereference").else_;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                                    @:check2r _p._stmt((@:checkr _s ?? throw "null pointer dereference").else_, _nextIsRBrace);
                                } else {
                                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                    @:check2r _p._stmt((@:checkr _s ?? throw "null pointer dereference").else_, true);
                                    @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                                };
                            };
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value;
                        if ((@:checkr _s ?? throw "null pointer dereference").list != null) {
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((62 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            @:check2r _p._exprList(@:check2r _s.pos(), (@:checkr _s ?? throw "null pointer dereference").list, (1 : stdgo.GoInt), (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _s ?? throw "null pointer dereference").colon, false);
                        } else {
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((66 : stdgo._internal.go.token.Token_token.Token))));
                        };
                        @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").colon);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._stmtList((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt), _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((83 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._controlClause(false, (@:checkr _s ?? throw "null pointer dereference").init, (@:checkr _s ?? throw "null pointer dereference").tag, (null : stdgo._internal.go.ast.Ast_stmt.Stmt));
                        @:check2r _p._block((@:checkr _s ?? throw "null pointer dereference").body, (0 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((83 : stdgo._internal.go.token.Token_token.Token))));
                        if ((@:checkr _s ?? throw "null pointer dereference").init != null) {
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            @:check2r _p._stmt((@:checkr _s ?? throw "null pointer dereference").init, false);
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))));
                        };
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._stmt((@:checkr _s ?? throw "null pointer dereference").assign, false);
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._block((@:checkr _s ?? throw "null pointer dereference").body, (0 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value;
                        if ((@:checkr _s ?? throw "null pointer dereference").comm != null) {
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((62 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            @:check2r _p._stmt((@:checkr _s ?? throw "null pointer dereference").comm, false);
                        } else {
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((66 : stdgo._internal.go.token.Token_token.Token))));
                        };
                        @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").colon);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._stmtList((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt), _nextIsRBrace);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((81 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        var _body = (@:checkr _s ?? throw "null pointer dereference").body;
                        if ((((@:checkr _body ?? throw "null pointer dereference").list.length == (0 : stdgo.GoInt)) && !@:check2r _p._commentBefore(@:check2r _p._posFor((@:checkr _body ?? throw "null pointer dereference").rbrace)?.__copy__()) : Bool)) {
                            @:check2r _p._setPos((@:checkr _body ?? throw "null pointer dereference").lbrace);
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                            @:check2r _p._setPos((@:checkr _body ?? throw "null pointer dereference").rbrace);
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                        } else {
                            @:check2r _p._block(_body, (0 : stdgo.GoInt));
                        };
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((70 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._controlClause(true, (@:checkr _s ?? throw "null pointer dereference").init, (@:checkr _s ?? throw "null pointer dereference").cond, (@:checkr _s ?? throw "null pointer dereference").post);
                        @:check2r _p._block((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt));
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                        var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value;
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((70 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        if ((@:checkr _s ?? throw "null pointer dereference").key != null) {
                            @:check2r _p._expr((@:checkr _s ?? throw "null pointer dereference").key);
                            if ((@:checkr _s ?? throw "null pointer dereference").value != null) {
                                @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").value.pos());
                                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                                @:check2r _p._expr((@:checkr _s ?? throw "null pointer dereference").value);
                            };
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                            @:check2r _p._setPos((@:checkr _s ?? throw "null pointer dereference").tokPos);
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").tok)), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((79 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._expr(stdgo._internal.go.printer.Printer__stripparens._stripParens((@:checkr _s ?? throw "null pointer dereference").x));
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        @:check2r _p._block((@:checkr _s ?? throw "null pointer dereference").body, (1 : stdgo.GoInt));
                    } else {
                        var _s:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : cast __type__;
                        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    };
                    break;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _indentList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((_list.length) >= (2 : stdgo.GoInt) : Bool)) {
            var _b = @:check2r _p._lineFor(_list[(0 : stdgo.GoInt)].pos());
            var _e = @:check2r _p._lineFor(_list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end());
            if ((((0 : stdgo.GoInt) < _b : Bool) && (_b < _e : Bool) : Bool)) {
                var _n = (0 : stdgo.GoInt);
                var _line = (_b : stdgo.GoInt);
                for (__16 => _x in _list) {
                    var _xb = (@:check2r _p._lineFor(_x.pos()) : stdgo.GoInt);
                    var _xe = (@:check2r _p._lineFor(_x.end()) : stdgo.GoInt);
                    if ((_line < _xb : Bool)) {
                        return true;
                    };
                    if ((_xb < _xe : Bool)) {
                        _n++;
                    };
                    _line = _xe;
                };
                return (_n > (1 : stdgo.GoInt) : Bool);
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _controlClause( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _isForStmt:Bool, _init:stdgo._internal.go.ast.Ast_stmt.Stmt, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _post:stdgo._internal.go.ast.Ast_stmt.Stmt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        var _needsBlank = (false : Bool);
        if (((_init == null) && (_post == null) : Bool)) {
            if (_expr != null) {
                @:check2r _p._expr(stdgo._internal.go.printer.Printer__stripparens._stripParens(_expr));
                _needsBlank = true;
            };
        } else {
            if (_init != null) {
                @:check2r _p._stmt(_init, false);
            };
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            if (_expr != null) {
                @:check2r _p._expr(stdgo._internal.go.printer.Printer__stripparens._stripParens(_expr));
                _needsBlank = true;
            };
            if (_isForStmt) {
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((57 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _needsBlank = false;
                if (_post != null) {
                    @:check2r _p._stmt(_post, false);
                    _needsBlank = true;
                };
            };
        };
        if (_needsBlank) {
            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _nindent:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setPos((@:checkr _b ?? throw "null pointer dereference").lbrace);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
        @:check2r _p._stmtList((@:checkr _b ?? throw "null pointer dereference").list, _nindent, true);
        @:check2r _p._linebreak(@:check2r _p._lineFor((@:checkr _b ?? throw "null pointer dereference").rbrace), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), true);
        @:check2r _p._setPos((@:checkr _b ?? throw "null pointer dereference").rbrace);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
    }
    @:keep
    @:tdfield
    static public function _stmtList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, _nindent:stdgo.GoInt, _nextIsRBrace:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((_nindent > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        var _line:stdgo.GoInt = (0 : stdgo.GoInt);
        var _line__pointer__ = stdgo.Go.pointer(_line);
        var _line__pointer__ = stdgo.Go.pointer(_line);
        var _line__pointer__ = stdgo.Go.pointer(_line);
        var _line__pointer__ = stdgo.Go.pointer(_line);
        var _i = (0 : stdgo.GoInt);
        for (__0 => _s in _list) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>), _1 : false };
                }, __1 = __tmp__._0, _isEmpty = __tmp__._1;
                if (!_isEmpty) {
                    if ((((@:checkr _p ?? throw "null pointer dereference")._output.length) > (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _p._linebreak(@:check2r _p._lineFor(_s.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), ((_i == ((0 : stdgo.GoInt)) || _nindent == ((0 : stdgo.GoInt)) : Bool) || (@:check2r _p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool) : Bool));
                    };
                    @:check2r _p._recordLine(_line__pointer__);
                    @:check2r _p._stmt(_s, (_nextIsRBrace && (_i == ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool));
                    {
                        var _t = (_s : stdgo._internal.go.ast.Ast_stmt.Stmt);
                        while (true) {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                            }, _lt = __tmp__._0, __26 = __tmp__._1;
                            if ((_lt == null || (_lt : Dynamic).__nil__)) {
                                break;
                            };
                            _line++;
                            _t = (@:checkr _lt ?? throw "null pointer dereference").stmt;
                        };
                    };
                    _i++;
                };
            };
        };
        if ((_nindent > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _expr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {};
        @:check2r _p._expr1(_x, (0 : stdgo.GoInt), (1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _expr0( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo._internal.go.ast.Ast_expr.Expr, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._expr1(_x, (0 : stdgo.GoInt), _depth);
    }
    @:keep
    @:tdfield
    static public function _selectorExpr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>, _depth:stdgo.GoInt, _isMethod:Bool):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), _depth);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((53 : stdgo._internal.go.token.Token_token.Token))));
        {
            var _line = (@:check2r _p._lineFor(@:check2r (@:checkr _x ?? throw "null pointer dereference").sel.pos()) : stdgo.GoInt);
            if ((@:check2 (@:checkr _p ?? throw "null pointer dereference")._pos.isValid() && ((@:checkr _p ?? throw "null pointer dereference")._pos.line < _line : Bool) : Bool)) {
                @:check2r _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                @:check2r _p._setPos(@:check2r (@:checkr _x ?? throw "null pointer dereference").sel.pos());
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").sel)));
                if (!_isMethod) {
                    @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                return true;
            };
        };
        @:check2r _p._setPos(@:check2r (@:checkr _x ?? throw "null pointer dereference").sel.pos());
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").sel)));
        return false;
    }
    @:keep
    @:tdfield
    static public function _possibleSelectorExpr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_expr) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return @:check2r _p._selectorExpr(_x, _depth, true);
            };
        };
        @:check2r _p._expr1(_expr, _prec1, _depth);
        return false;
    }
    @:keep
    @:tdfield
    static public function _expr1( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setPos(_expr.pos());
        {
            final __type__ = _expr;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(("BadExpr" : stdgo.GoString)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value;
                if ((_depth < (1 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._internalError(stdgo.Go.toInterface(("depth < 1:" : stdgo.GoString)), stdgo.Go.toInterface(_depth));
                    _depth = (1 : stdgo.GoInt);
                };
                @:check2r _p._binaryExpr(_x, _prec1, stdgo._internal.go.printer.Printer__cutoff._cutoff(_x, _depth), _depth);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>) : __type__.__underlying__().value;
                @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").key);
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").colon);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value;
                {};
                if (((6 : stdgo.GoInt) < _prec1 : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((14 : stdgo._internal.go.token.Token_token.Token))));
                    @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").x);
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                } else {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((14 : stdgo._internal.go.token.Token_token.Token))));
                    @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").x);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value;
                {};
                if (((6 : stdgo.GoInt) < _prec1 : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                    @:check2r _p._expr(stdgo.Go.asInterface(_x));
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                } else {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").op)));
                    if ((@:checkr _x ?? throw "null pointer dereference").op == ((79 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    };
                    @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (6 : stdgo.GoInt), _depth);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>) : __type__.__underlying__().value;
                if (((@:checkr _p ?? throw "null pointer dereference").config.mode & (1073741824u32 : stdgo._internal.go.printer.Printer_mode.Mode) : stdgo._internal.go.printer.Printer_mode.Mode) != ((0u32 : stdgo._internal.go.printer.Printer_mode.Mode))) {
                    _x = stdgo._internal.go.printer.Printer__normalizednumber._normalizedNumber(_x);
                };
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>) : __type__.__underlying__().value;
                @:check2r _p._setPos(@:check2r (@:checkr _x ?? throw "null pointer dereference").type.pos());
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token_token.Token))));
                var _startCol = ((@:checkr _p ?? throw "null pointer dereference")._out.column - ((("func" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt);
                @:check2r _p._signature((@:checkr _x ?? throw "null pointer dereference").type);
                @:check2r _p._funcBody(@:check2r _p._distanceFrom(@:check2r (@:checkr _x ?? throw "null pointer dereference").type.pos(), _startCol), (32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:checkr _x ?? throw "null pointer dereference").body);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").x) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>), _1 : false };
                    }, __8 = __tmp__._0, _hasParens = __tmp__._1;
                    if (_hasParens) {
                        @:check2r _p._expr0((@:checkr _x ?? throw "null pointer dereference").x, _depth);
                    } else {
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._expr0((@:checkr _x ?? throw "null pointer dereference").x, stdgo._internal.go.printer.Printer__reducedepth._reduceDepth(_depth));
                        @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rparen);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>) : __type__.__underlying__().value;
                @:check2r _p._selectorExpr(_x, _depth, false);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>) : __type__.__underlying__().value;
                @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), _depth);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((53 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").lparen);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                if ((@:checkr _x ?? throw "null pointer dereference").type != null) {
                    @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").type);
                } else {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((84 : stdgo._internal.go.token.Token_token.Token))));
                };
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rparen);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>) : __type__.__underlying__().value;
                @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrack);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._expr0((@:checkr _x ?? throw "null pointer dereference").index, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrack);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>) : __type__.__underlying__().value;
                @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrack);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._exprList((@:checkr _x ?? throw "null pointer dereference").lbrack, (@:checkr _x ?? throw "null pointer dereference").indices, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt), (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").rbrack, false);
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrack);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>) : __type__.__underlying__().value;
                @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, (7 : stdgo.GoInt), (1 : stdgo.GoInt));
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrack);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                var _indices = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(2, 2, ...[(@:checkr _x ?? throw "null pointer dereference").low, (@:checkr _x ?? throw "null pointer dereference").high]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                if ((@:checkr _x ?? throw "null pointer dereference").max != null) {
                    _indices = (_indices.__append__((@:checkr _x ?? throw "null pointer dereference").max));
                };
                var _needsBlanks:Bool = false;
                if ((_depth <= (1 : stdgo.GoInt) : Bool)) {
                    var _indexCount:stdgo.GoInt = (0 : stdgo.GoInt);
                    var _hasBinaries:Bool = false;
                    for (__32 => _x in _indices) {
                        if (_x != null) {
                            _indexCount++;
                            if (stdgo._internal.go.printer.Printer__isbinary._isBinary(_x)) {
                                _hasBinaries = true;
                            };
                        };
                    };
                    if (((_indexCount > (1 : stdgo.GoInt) : Bool) && _hasBinaries : Bool)) {
                        _needsBlanks = true;
                    };
                };
                for (_i => _x in _indices) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        if (((_indices[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] != null) && _needsBlanks : Bool)) {
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))));
                        if (((_x != null) && _needsBlanks : Bool)) {
                            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                    };
                    if (_x != null) {
                        @:check2r _p._expr0(_x, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                    };
                };
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrack);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>) : __type__.__underlying__().value;
                if ((((@:checkr _x ?? throw "null pointer dereference").args.length) > (1 : stdgo.GoInt) : Bool)) {
                    _depth++;
                };
                var _wasIndented:Bool = false;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference").fun) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : false };
                    }, __8 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                        _wasIndented = @:check2r _p._possibleSelectorExpr((@:checkr _x ?? throw "null pointer dereference").fun, (7 : stdgo.GoInt), _depth);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                    } else {
                        _wasIndented = @:check2r _p._possibleSelectorExpr((@:checkr _x ?? throw "null pointer dereference").fun, (7 : stdgo.GoInt), _depth);
                    };
                };
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").lparen);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
                if ((@:checkr _x ?? throw "null pointer dereference").ellipsis.isValid()) {
                    @:check2r _p._exprList((@:checkr _x ?? throw "null pointer dereference").lparen, (@:checkr _x ?? throw "null pointer dereference").args, _depth, (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").ellipsis, false);
                    @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").ellipsis);
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((48 : stdgo._internal.go.token.Token_token.Token))));
                    if (((@:checkr _x ?? throw "null pointer dereference").rparen.isValid() && (@:check2r _p._lineFor((@:checkr _x ?? throw "null pointer dereference").ellipsis) < @:check2r _p._lineFor((@:checkr _x ?? throw "null pointer dereference").rparen) : Bool) : Bool)) {
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    };
                } else {
                    @:check2r _p._exprList((@:checkr _x ?? throw "null pointer dereference").lparen, (@:checkr _x ?? throw "null pointer dereference").args, _depth, (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").rparen, false);
                };
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rparen);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
                if (_wasIndented) {
                    @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) : __type__.__underlying__().value;
                if ((@:checkr _x ?? throw "null pointer dereference").type != null) {
                    @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").type, (7 : stdgo.GoInt), _depth);
                };
                (@:checkr _p ?? throw "null pointer dereference")._level++;
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").lbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._exprList((@:checkr _x ?? throw "null pointer dereference").lbrace, (@:checkr _x ?? throw "null pointer dereference").elts, (1 : stdgo.GoInt), (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode), (@:checkr _x ?? throw "null pointer dereference").rbrace, (@:checkr _x ?? throw "null pointer dereference").incomplete);
                var _mode = (2 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
                if ((((@:checkr _x ?? throw "null pointer dereference").elts.length) > (0 : stdgo.GoInt) : Bool)) {
                    _mode = (_mode | ((1 : stdgo._internal.go.printer.Printer_t_pmode.T_pmode)) : stdgo._internal.go.printer.Printer_t_pmode.T_pmode);
                };
                @:check2r _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(_mode));
                @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").rbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(_mode));
                (@:checkr _p ?? throw "null pointer dereference")._level--;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((48 : stdgo._internal.go.token.Token_token.Token))));
                if ((@:checkr _x ?? throw "null pointer dereference").elt != null) {
                    @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").elt);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                if ((@:checkr _x ?? throw "null pointer dereference").len != null) {
                    @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").len);
                };
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((82 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._fieldList((@:checkr _x ?? throw "null pointer dereference").fields, true, (@:checkr _x ?? throw "null pointer dereference").incomplete);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((71 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._signature(_x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((76 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._fieldList((@:checkr _x ?? throw "null pointer dereference").methods, false, (@:checkr _x ?? throw "null pointer dereference").incomplete);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value;
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((77 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((50 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").key);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((55 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value;
                {
                    final __value__ = (@:checkr _x ?? throw "null pointer dereference").dir;
                    if (__value__ == ((3 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token_token.Token))));
                    } else if (__value__ == ((2 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token_token.Token))));
                    } else if (__value__ == ((1 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((63 : stdgo._internal.go.token.Token_token.Token))));
                        @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").arrow);
                        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((36 : stdgo._internal.go.token.Token_token.Token))));
                    };
                };
                @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                @:check2r _p._expr((@:checkr _x ?? throw "null pointer dereference").value);
            } else {
                var _x:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : cast __type__;
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _binaryExpr( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>, _prec1:stdgo.GoInt, _cutoff:stdgo.GoInt, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _prec = ((@:checkr _x ?? throw "null pointer dereference").op.precedence() : stdgo.GoInt);
        if ((_prec < _prec1 : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))));
            @:check2r _p._expr0(stdgo.Go.asInterface(_x), stdgo._internal.go.printer.Printer__reducedepth._reduceDepth(_depth));
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
            return;
        };
        var _printBlank = (_prec < _cutoff : Bool);
        var _ws = (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
        @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").x, _prec, (_depth + stdgo._internal.go.printer.Printer__diffprec._diffPrec((@:checkr _x ?? throw "null pointer dereference").x, _prec) : stdgo.GoInt));
        if (_printBlank) {
            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        var _xline = ((@:checkr _p ?? throw "null pointer dereference")._pos.line : stdgo.GoInt);
        var _yline = (@:check2r _p._lineFor((@:checkr _x ?? throw "null pointer dereference").y.pos()) : stdgo.GoInt);
        @:check2r _p._setPos((@:checkr _x ?? throw "null pointer dereference").opPos);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _x ?? throw "null pointer dereference").op)));
        if (((_xline != (_yline) && (_xline > (0 : stdgo.GoInt) : Bool) : Bool) && (_yline > (0 : stdgo.GoInt) : Bool) : Bool)) {
            if ((@:check2r _p._linebreak(_yline, (1 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool)) {
                _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                _printBlank = false;
            };
        };
        if (_printBlank) {
            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        @:check2r _p._expr1((@:checkr _x ?? throw "null pointer dereference").y, (_prec + (1 : stdgo.GoInt) : stdgo.GoInt), (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
        if (_ws == ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
            @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _fieldList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _isStruct:Bool, _isIncomplete:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _lbrace = ((@:checkr _fields ?? throw "null pointer dereference").opening : stdgo._internal.go.token.Token_pos.Pos);
        var _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        var _rbrace = ((@:checkr _fields ?? throw "null pointer dereference").closing : stdgo._internal.go.token.Token_pos.Pos);
        var _hasComments = (_isIncomplete || @:check2r _p._commentBefore(@:check2r _p._posFor(_rbrace)?.__copy__()) : Bool);
        var _srcIsOneLine = ((_lbrace.isValid() && _rbrace.isValid() : Bool) && (@:check2r _p._lineFor(_lbrace) == @:check2r _p._lineFor(_rbrace)) : Bool);
        if ((!_hasComments && _srcIsOneLine : Bool)) {
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                @:check2r _p._setPos(_lbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))));
                @:check2r _p._setPos(_rbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                return;
            } else if (@:check2r _p._isOneLineFieldList(_list)) {
                @:check2r _p._setPos(_lbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                var _f = _list[(0 : stdgo.GoInt)];
                if (_isStruct) {
                    for (_i => _x in (@:checkr _f ?? throw "null pointer dereference").names) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                        };
                        @:check2r _p._expr(stdgo.Go.asInterface(_x));
                    };
                    if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    };
                    @:check2r _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                } else {
                    if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        var _name = (@:checkr _f ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)];
                        @:check2r _p._expr(stdgo.Go.asInterface(_name));
                        @:check2r _p._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>));
                    } else {
                        @:check2r _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    };
                };
                @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                @:check2r _p._setPos(_rbrace);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
                return;
            };
        };
        @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        @:check2r _p._setPos(_lbrace);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((51 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        if ((_hasComments || ((_list.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        if (_isStruct) {
            var _sep = (11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            if ((_list.length) == ((1 : stdgo.GoInt))) {
                _sep = (32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            };
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            for (_i => _f in _list) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._linebreak(@:check2r _p._lineFor(@:check2r _f.pos()), (1 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:check2r _p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                };
                var _extraTabs = (0 : stdgo.GoInt);
                @:check2r _p._setComment((@:checkr _f ?? throw "null pointer dereference").doc);
                @:check2r _p._recordLine(_line__pointer__);
                if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._identList((@:checkr _f ?? throw "null pointer dereference").names, false);
                    @:check2r _p._print(stdgo.Go.toInterface(_sep));
                    @:check2r _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    _extraTabs = (1 : stdgo.GoInt);
                } else {
                    @:check2r _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    _extraTabs = (2 : stdgo.GoInt);
                };
                if (((@:checkr _f ?? throw "null pointer dereference").tag != null && (((@:checkr _f ?? throw "null pointer dereference").tag : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").tag : Dynamic).__nil__))) {
                    if (((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool) && (_sep == (11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) : Bool)) {
                        @:check2r _p._print(stdgo.Go.toInterface(_sep));
                    };
                    @:check2r _p._print(stdgo.Go.toInterface(_sep));
                    @:check2r _p._expr(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").tag));
                    _extraTabs = (0 : stdgo.GoInt);
                };
                if (((@:checkr _f ?? throw "null pointer dereference").comment != null && (((@:checkr _f ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
                    while ((_extraTabs > (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _p._print(stdgo.Go.toInterface(_sep));
                        _extraTabs--;
                    };
                    @:check2r _p._setComment((@:checkr _f ?? throw "null pointer dereference").comment);
                };
            };
            if (_isIncomplete) {
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._flush(@:check2r _p._posFor(_rbrace)?.__copy__(), (56 : stdgo._internal.go.token.Token_token.Token));
                @:check2r _p._setLineComment(("// contains filtered or unexported fields" : stdgo.GoString));
            };
        } else {
            var _line:stdgo.GoInt = (0 : stdgo.GoInt);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _line__pointer__ = stdgo.Go.pointer(_line);
            var _prev:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
            for (_i => _f in _list) {
                var _name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    _name = (@:checkr _f ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)];
                };
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _min = (1 : stdgo.GoInt);
                    if (((_prev != null && ((_prev : Dynamic).__nil__ == null || !(_prev : Dynamic).__nil__)) && (_name == _prev) : Bool)) {
                        _min = (0 : stdgo.GoInt);
                    };
                    @:check2r _p._linebreak(@:check2r _p._lineFor(@:check2r _f.pos()), _min, (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), (@:check2r _p._linesFrom(_line) > (0 : stdgo.GoInt) : Bool));
                };
                @:check2r _p._setComment((@:checkr _f ?? throw "null pointer dereference").doc);
                @:check2r _p._recordLine(_line__pointer__);
                if ((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__))) {
                    @:check2r _p._expr(stdgo.Go.asInterface(_name));
                    @:check2r _p._signature((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>));
                    _prev = null;
                } else {
                    @:check2r _p._expr((@:checkr _f ?? throw "null pointer dereference").type);
                    _prev = null;
                };
                @:check2r _p._setComment((@:checkr _f ?? throw "null pointer dereference").comment);
            };
            if (_isIncomplete) {
                if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._flush(@:check2r _p._posFor(_rbrace)?.__copy__(), (56 : stdgo._internal.go.token.Token_token.Token));
                @:check2r _p._setLineComment(("// contains filtered or unexported methods" : stdgo.GoString));
            };
        };
        @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        @:check2r _p._setPos(_rbrace);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((56 : stdgo._internal.go.token.Token_token.Token))));
    }
    @:keep
    @:tdfield
    static public function _setLineComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _text:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        @:check2r _p._setComment((stdgo.Go.setRef(({ list : (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>(1, 1, ...[({ slash : (0 : stdgo._internal.go.token.Token_pos.Pos), text : _text?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>) } : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>));
    }
    @:keep
    @:tdfield
    static public function _isOneLineFieldList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((_list.length) != ((1 : stdgo.GoInt))) {
            return false;
        };
        var _f = _list[(0 : stdgo.GoInt)];
        if ((((@:checkr _f ?? throw "null pointer dereference").tag != null && (((@:checkr _f ?? throw "null pointer dereference").tag : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").tag : Dynamic).__nil__)) || ((@:checkr _f ?? throw "null pointer dereference").comment != null && (((@:checkr _f ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").comment : Dynamic).__nil__)) : Bool)) {
            return false;
        };
        {};
        var _namesSize = (stdgo._internal.go.printer.Printer__identlistsize._identListSize((@:checkr _f ?? throw "null pointer dereference").names, (30 : stdgo.GoInt)) : stdgo.GoInt);
        if ((_namesSize > (0 : stdgo.GoInt) : Bool)) {
            _namesSize = (1 : stdgo.GoInt);
        };
        var _typeSize = (@:check2r _p._nodeSize((@:checkr _f ?? throw "null pointer dereference").type, (30 : stdgo.GoInt)) : stdgo.GoInt);
        return ((_namesSize + _typeSize : stdgo.GoInt) <= (30 : stdgo.GoInt) : Bool);
    }
    @:keep
    @:tdfield
    static public function _signature( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _sig:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((@:checkr _sig ?? throw "null pointer dereference").typeParams != null && (((@:checkr _sig ?? throw "null pointer dereference").typeParams : Dynamic).__nil__ == null || !((@:checkr _sig ?? throw "null pointer dereference").typeParams : Dynamic).__nil__))) {
            @:check2r _p._parameters((@:checkr _sig ?? throw "null pointer dereference").typeParams, (1 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
        };
        if (((@:checkr _sig ?? throw "null pointer dereference").params != null && (((@:checkr _sig ?? throw "null pointer dereference").params : Dynamic).__nil__ == null || !((@:checkr _sig ?? throw "null pointer dereference").params : Dynamic).__nil__))) {
            @:check2r _p._parameters((@:checkr _sig ?? throw "null pointer dereference").params, (0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
        } else {
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((49 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface((54 : stdgo._internal.go.token.Token_token.Token))));
        };
        var _res = (@:checkr _sig ?? throw "null pointer dereference").results;
        var _n = (@:check2r _res.numFields() : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            if (((_n == (1 : stdgo.GoInt)) && ((@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").names == null) : Bool)) {
                @:check2r _p._expr(stdgo._internal.go.printer.Printer__stripparensalways._stripParensAlways((@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type));
                return;
            };
            @:check2r _p._parameters(_res, (0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode));
        };
    }
    @:keep
    @:tdfield
    static public function _parameters( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _mode:stdgo._internal.go.printer.Printer_t_parammode.T_paramMode):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var __0 = (49 : stdgo._internal.go.token.Token_token.Token), __1 = (54 : stdgo._internal.go.token.Token_token.Token);
var _closeTok = __1, _openTok = __0;
        if (_mode != ((0 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode))) {
            {
                final __tmp__0 = (50 : stdgo._internal.go.token.Token_token.Token);
                final __tmp__1 = (55 : stdgo._internal.go.token.Token_token.Token);
                _openTok = __tmp__0;
                _closeTok = __tmp__1;
            };
        };
        @:check2r _p._setPos((@:checkr _fields ?? throw "null pointer dereference").opening);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_openTok)));
        if ((((@:checkr _fields ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool)) {
            var _prevLine = (@:check2r _p._lineFor((@:checkr _fields ?? throw "null pointer dereference").opening) : stdgo.GoInt);
            var _ws = (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            for (_i => _par in (@:checkr _fields ?? throw "null pointer dereference").list) {
                var _parLineBeg = (@:check2r _p._lineFor(@:check2r _par.pos()) : stdgo.GoInt);
                var _parLineEnd = (@:check2r _p._lineFor(@:check2r _par.end()) : stdgo.GoInt);
                var _needsLinebreak = (((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _parLineBeg : Bool) : Bool);
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    if (!_needsLinebreak) {
                        @:check2r _p._setPos(@:check2r _par.pos());
                    };
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                };
                if ((_needsLinebreak && (@:check2r _p._linebreak(_parLineBeg, (0 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                } else if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                if ((((@:checkr _par ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._identList((@:checkr _par ?? throw "null pointer dereference").names, _ws == ((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._expr(stdgo._internal.go.printer.Printer__stripparensalways._stripParensAlways((@:checkr _par ?? throw "null pointer dereference").type));
                _prevLine = _parLineEnd;
            };
            {
                var _closing = (@:check2r _p._lineFor((@:checkr _fields ?? throw "null pointer dereference").closing) : stdgo.GoInt);
                if ((((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _closing : Bool) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                    @:check2r _p._linebreak(_closing, (0 : stdgo.GoInt), (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace), true);
                } else if (((_mode == ((2 : stdgo._internal.go.printer.Printer_t_parammode.T_paramMode)) && @:check2r _fields.numFields() == ((1 : stdgo.GoInt)) : Bool) && stdgo._internal.go.printer.Printer__combineswithname._combinesWithName((@:checkr (@:checkr _fields ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                };
            };
            if (_ws == ((0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace))) {
                @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            };
        };
        @:check2r _p._setPos((@:checkr _fields ?? throw "null pointer dereference").closing);
        @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface(_closeTok)));
    }
    @:keep
    @:tdfield
    static public function _exprList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _prev0:stdgo._internal.go.token.Token_pos.Pos, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>, _depth:stdgo.GoInt, _mode:stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode, _next0:stdgo._internal.go.token.Token_pos.Pos, _isIncomplete:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((_list.length) == ((0 : stdgo.GoInt))) {
            if (_isIncomplete) {
                var _prev = (@:check2r _p._posFor(_prev0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
                var _next = (@:check2r _p._posFor(_next0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
                if ((@:check2 _prev.isValid() && (_prev.line == _next.line) : Bool)) {
                    @:check2r _p._print(stdgo.Go.toInterface(("/* contains filtered or unexported fields */" : stdgo.GoString)));
                } else {
                    @:check2r _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                    @:check2r _p._print(stdgo.Go.toInterface((62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)), stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            };
            return;
        };
        var _prev = (@:check2r _p._posFor(_prev0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        var _next = (@:check2r _p._posFor(_next0)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        var _line = (@:check2r _p._lineFor(_list[(0 : stdgo.GoInt)].pos()) : stdgo.GoInt);
        var _endLine = (@:check2r _p._lineFor(_list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end()) : stdgo.GoInt);
        if (((@:check2 _prev.isValid() && _prev.line == (_line) : Bool) && (_line == _endLine) : Bool)) {
            for (_i => _x in _list) {
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _p._setPos(_x.pos());
                    @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
                @:check2r _p._expr0(_x, _depth);
            };
            if (_isIncomplete) {
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)), stdgo.Go.toInterface(("/* contains filtered or unexported fields */" : stdgo.GoString)));
            };
            return;
        };
        var _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
        if ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) == ((0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode))) {
            _ws = (62 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
        };
        var _prevBreak = (-1 : stdgo.GoInt);
        if (((@:check2 _prev.isValid() && (_prev.line < _line : Bool) : Bool) && (@:check2r _p._linebreak(_line, (0 : stdgo.GoInt), _ws, true) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
            _prevBreak = (0 : stdgo.GoInt);
        };
        var _size = (0 : stdgo.GoInt);
        var _lnsum = (0 : stdgo.GoFloat64);
        var _count = (0 : stdgo.GoInt);
        var _prevLine = (_prev.line : stdgo.GoInt);
        for (_i => _x in _list) {
            _line = @:check2r _p._lineFor(_x.pos());
            var _useFF = (true : Bool);
            var _prevSize = (_size : stdgo.GoInt);
            {};
            _size = @:check2r _p._nodeSize(_x, (1000000 : stdgo.GoInt));
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>), _1 : false };
            }, _pair = __tmp__._0, _isPair = __tmp__._1;
            if ((((_size <= (1000000 : stdgo.GoInt) : Bool) && @:check2 _prev.isValid() : Bool) && @:check2 _next.isValid() : Bool)) {
                if (_isPair) {
                    _size = @:check2r _p._nodeSize((@:checkr _pair ?? throw "null pointer dereference").key, (1000000 : stdgo.GoInt));
                };
            } else {
                _size = (0 : stdgo.GoInt);
            };
            if (((_prevSize > (0 : stdgo.GoInt) : Bool) && (_size > (0 : stdgo.GoInt) : Bool) : Bool)) {
                {};
                if (((_count == (0 : stdgo.GoInt)) || ((_prevSize <= (40 : stdgo.GoInt) : Bool) && (_size <= (40 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                    _useFF = false;
                } else {
                    {};
                    var _geomean = (stdgo._internal.math.Math_exp.exp((_lnsum / (_count : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    var _ratio = ((_size : stdgo.GoFloat64) / _geomean : stdgo.GoFloat64);
                    _useFF = ((((2.5 : stdgo.GoFloat64) * _ratio : stdgo.GoFloat64) <= (1 : stdgo.GoFloat64) : Bool) || ((2.5 : stdgo.GoFloat64) <= _ratio : Bool) : Bool);
                };
            };
            var _needsLinebreak = (((0 : stdgo.GoInt) < _prevLine : Bool) && (_prevLine < _line : Bool) : Bool);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                if (!_needsLinebreak) {
                    @:check2r _p._setPos(_x.pos());
                };
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
                var _needsBlank = (true : Bool);
                if (_needsLinebreak) {
                    var _nbreaks = (@:check2r _p._linebreak(_line, (0 : stdgo.GoInt), _ws, (_useFF || ((_prevBreak + (1 : stdgo.GoInt) : stdgo.GoInt) < _i : Bool) : Bool)) : stdgo.GoInt);
                    if ((_nbreaks > (0 : stdgo.GoInt) : Bool)) {
                        _ws = (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace);
                        _prevBreak = _i;
                        _needsBlank = false;
                    };
                    if ((_nbreaks > (1 : stdgo.GoInt) : Bool)) {
                        _lnsum = (0 : stdgo.GoFloat64);
                        _count = (0 : stdgo.GoInt);
                    };
                };
                if (_needsBlank) {
                    @:check2r _p._print(stdgo.Go.toInterface((32 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                };
            };
            if ((((((_list.length) > (1 : stdgo.GoInt) : Bool) && _isPair : Bool) && (_size > (0 : stdgo.GoInt) : Bool) : Bool) && _needsLinebreak : Bool)) {
                @:check2r _p._expr((@:checkr _pair ?? throw "null pointer dereference").key);
                @:check2r _p._setPos((@:checkr _pair ?? throw "null pointer dereference").colon);
                @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((58 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((11 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                @:check2r _p._expr((@:checkr _pair ?? throw "null pointer dereference").value);
            } else {
                @:check2r _p._expr0(_x, _depth);
            };
            if ((_size > (0 : stdgo.GoInt) : Bool)) {
                _lnsum = (_lnsum + (stdgo._internal.math.Math_log.log((_size : stdgo.GoFloat64))) : stdgo.GoFloat64);
                _count++;
            };
            _prevLine = _line;
        };
        if ((((_mode & (1u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode)) && @:check2 _next.isValid() : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._pos.line < _next.line : Bool) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))));
            if (_isIncomplete) {
                @:check2r _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                @:check2r _p._print(stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)));
            };
            if (((_ws == (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) && ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) == (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode)) : Bool)) {
                @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            };
            @:check2r _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            return;
        };
        if (_isIncomplete) {
            @:check2r _p._print(stdgo.Go.toInterface(stdgo.Go.asInterface((52 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
            @:check2r _p._print(stdgo.Go.toInterface(("// contains filtered or unexported fields" : stdgo.GoString)), stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
        if (((_ws == (0 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)) && ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode) == (0u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode)) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface((60 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
        };
    }
    @:keep
    @:tdfield
    static public function _identList( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, _indent:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _xlist = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>((_list.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        for (_i => _x in _list) {
            _xlist[(_i : stdgo.GoInt)] = stdgo.Go.asInterface(_x);
        };
        var _mode:stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode = ((0 : stdgo.GoUInt) : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode);
        if (!_indent) {
            _mode = (2u32 : stdgo._internal.go.printer.Printer_t_exprlistmode.T_exprListMode);
        };
        @:check2r _p._exprList((0 : stdgo._internal.go.token.Token_pos.Pos), _xlist, (1 : stdgo.GoInt), _mode, (0 : stdgo._internal.go.token.Token_pos.Pos), false);
    }
    @:keep
    @:tdfield
    static public function _setComment( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((_g == null || (_g : Dynamic).__nil__) || !(@:checkr _p ?? throw "null pointer dereference")._useNodeComments : Bool)) {
            return;
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._comments == null) {
            (@:checkr _p ?? throw "null pointer dereference")._comments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        } else if (((@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex < ((@:checkr _p ?? throw "null pointer dereference")._comments.length) : Bool)) {
            @:check2r _p._flush(@:check2r _p._posFor(@:check2r (@:checkr _g ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)].pos())?.__copy__(), (0 : stdgo._internal.go.token.Token_token.Token));
            (@:checkr _p ?? throw "null pointer dereference")._comments = ((@:checkr _p ?? throw "null pointer dereference")._comments.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            @:check2r _p._internalError(stdgo.Go.toInterface(("setComment found pending comments" : stdgo.GoString)));
        };
        (@:checkr _p ?? throw "null pointer dereference")._comments[(0 : stdgo.GoInt)] = _g;
        (@:checkr _p ?? throw "null pointer dereference")._commentInfo._cindex = (0 : stdgo.GoInt);
        if ((@:checkr _p ?? throw "null pointer dereference")._commentInfo._commentOffset == ((1073741824 : stdgo.GoInt))) {
            @:check2r _p._nextComment();
        };
    }
    @:keep
    @:tdfield
    static public function _linebreak( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _line:stdgo.GoInt, _min:stdgo.GoInt, _ws:stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace, _newSection:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _nbreaks = (0 : stdgo.GoInt);
        var _n = (stdgo._internal.go.printer.Printer__nlimit._nlimit((_line - (@:checkr _p ?? throw "null pointer dereference")._pos.line : stdgo.GoInt)) : stdgo.GoInt);
        if ((_n < _min : Bool)) {
            _n = _min;
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _p._print(stdgo.Go.toInterface(_ws));
            if (_newSection) {
                @:check2r _p._print(stdgo.Go.toInterface((12 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _n--;
                _nbreaks = (2 : stdgo.GoInt);
            };
            _nbreaks = (_nbreaks + (_n) : stdgo.GoInt);
            while ((_n > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _p._print(stdgo.Go.toInterface((10 : stdgo._internal.go.printer.Printer_t_whitespace.T_whiteSpace)));
                _n--;
            };
        };
        return _nbreaks;
    }
    @:keep
    @:tdfield
    static public function _commentTextAt( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _start:stdgo.GoInt):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if (((_start < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._output[(_start : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool)) {
            _start++;
        };
        var _pos = (_start : stdgo.GoInt);
        while ((((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] != ((255 : stdgo.GoUInt8)) : Bool) && !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
            _pos++;
        };
        return (((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start, _pos) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _lineAt( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>, _start:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        var _pos = (_start : stdgo.GoInt);
        while (((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
            _pos++;
        };
        if ((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool)) {
            _pos++;
        };
        return ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start, _pos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _fixGoBuildLines( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_printer.T_printer> = _p;
        if ((((@:checkr _p ?? throw "null pointer dereference")._goBuild.length) + ((@:checkr _p ?? throw "null pointer dereference")._plusBuild.length) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _insert = (0 : stdgo.GoInt);
        {
            var _pos = (0 : stdgo.GoInt);
            while (true) {
                var _blank = (true : Bool);
                while (((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && ((((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || ((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _pos++;
                };
                if ((((((_pos + (3 : stdgo.GoInt) : stdgo.GoInt) < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._output[(_pos + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._output[(_pos + (2 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
                    _blank = false;
                    while (((_pos < ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) && !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
                        _pos++;
                    };
                };
                if (((_pos >= ((@:checkr _p ?? throw "null pointer dereference")._output.length) : Bool) || !stdgo._internal.go.printer.Printer__isnl._isNL((@:checkr _p ?? throw "null pointer dereference")._output[(_pos : stdgo.GoInt)]) : Bool)) {
                    break;
                };
                _pos++;
                if (_blank) {
                    _insert = _pos;
                };
            };
        };
        if (((((@:checkr _p ?? throw "null pointer dereference")._goBuild.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._goBuild[(0 : stdgo.GoInt)] < _insert : Bool) : Bool)) {
            _insert = (@:checkr _p ?? throw "null pointer dereference")._goBuild[(0 : stdgo.GoInt)];
        } else if (((((@:checkr _p ?? throw "null pointer dereference")._plusBuild.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._plusBuild[(0 : stdgo.GoInt)] < _insert : Bool) : Bool)) {
            _insert = (@:checkr _p ?? throw "null pointer dereference")._plusBuild[(0 : stdgo.GoInt)];
        };
        var _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = ((@:checkr _p ?? throw "null pointer dereference")._goBuild.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        for (__64 => _pos in (@:checkr _p ?? throw "null pointer dereference")._plusBuild) {
                            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(@:check2r _p._commentTextAt(_pos)?.__copy__()), _y:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err != null) {
                                _x = (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr);
                                break;
                            };
                            if (_x == null) {
                                _x = _y;
                            } else {
                                _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, y : _y } : stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr)) : stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>));
                            };
                        };
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        {
                            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(@:check2r _p._commentTextAt((@:checkr _p ?? throw "null pointer dereference")._goBuild[(0 : stdgo.GoInt)])?.__copy__());
                            _x = @:tmpset0 __tmp__._0;
                        };
                        break;
                    };
                };
                break;
            };
        };
        var _block:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (_x == null) {
            for (__64 => _pos in (@:checkr _p ?? throw "null pointer dereference")._goBuild) {
                _block = (_block.__append__(...(@:check2r _p._lineAt(_pos) : Array<stdgo.GoUInt8>)));
            };
            for (__73 => _pos in (@:checkr _p ?? throw "null pointer dereference")._plusBuild) {
                _block = (_block.__append__(...(@:check2r _p._lineAt(_pos) : Array<stdgo.GoUInt8>)));
            };
        } else {
            _block = (_block.__append__((255 : stdgo.GoUInt8)));
            _block = (_block.__append__(...((("//go:build " : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _block = (_block.__append__(...((_x.string() : stdgo.GoString) : Array<stdgo.GoUInt8>)));
            _block = (_block.__append__((255 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)));
            if ((((@:checkr _p ?? throw "null pointer dereference")._plusBuild.length) > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.go.build.constraint.Constraint_plusbuildlines.plusBuildLines(_x), _lines:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _lines = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(("// +build error: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                for (__64 => _line in _lines) {
                    _block = (_block.__append__((255 : stdgo.GoUInt8)));
                    _block = (_block.__append__(...(_line : Array<stdgo.GoUInt8>)));
                    _block = (_block.__append__((255 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)));
                };
            };
        };
        _block = (_block.__append__((10 : stdgo.GoUInt8)));
        var _toDelete = ((@:checkr _p ?? throw "null pointer dereference")._goBuild.__append__(...((@:checkr _p ?? throw "null pointer dereference")._plusBuild : Array<stdgo.GoInt>)));
        stdgo._internal.sort.Sort_ints.ints(_toDelete);
        var _after:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _start = (_insert : stdgo.GoInt);
        for (__72 => _end in _toDelete) {
            if ((_end < _start : Bool)) {
                continue;
            };
            _after = stdgo._internal.go.printer.Printer__appendlines._appendLines(_after, ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>));
            _start = (_end + (@:check2r _p._lineAt(_end).length) : stdgo.GoInt);
        };
        _after = stdgo._internal.go.printer.Printer__appendlines._appendLines(_after, ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _n = (_after.length : stdgo.GoInt);
            if ((((_n >= (2 : stdgo.GoInt) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_after[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.go.printer.Printer__isnl._isNL(_after[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _after = (_after.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__slice__(0, _insert) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(_block : Array<stdgo.GoUInt8>)));
        (@:checkr _p ?? throw "null pointer dereference")._output = ((@:checkr _p ?? throw "null pointer dereference")._output.__append__(...(_after : Array<stdgo.GoUInt8>)));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _fprint( __self__:stdgo._internal.go.printer.Printer_t_printer.T_printer, _0:stdgo._internal.io.Io_writer.Writer, _1:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _2:stdgo.AnyInterface, _3:stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.GoInt>):stdgo.Error return @:_5 __self__._fprint(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function fprint( __self__:stdgo._internal.go.printer.Printer_t_printer.T_printer, _0:stdgo._internal.io.Io_writer.Writer, _1:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _2:stdgo.AnyInterface):stdgo.Error return @:_5 __self__.fprint(_0, _1, _2);
}
