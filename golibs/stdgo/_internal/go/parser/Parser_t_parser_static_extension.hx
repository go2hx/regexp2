package stdgo._internal.go.parser;
@:keep @:allow(stdgo._internal.go.parser.Parser.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parseFile( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("File" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._errors.len() != ((0 : stdgo.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return null;
                };
            };
            var _doc = (@:checkr _p ?? throw "null pointer dereference")._leadComment;
            var _pos = (@:check2r _p._expect((78 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _ident = @:check2r _p._parseIdent();
            if ((((@:checkr _ident ?? throw "null pointer dereference").name == ("_" : stdgo.GoString)) && (((@:checkr _p ?? throw "null pointer dereference")._mode & (16u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) != (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)) : Bool)) {
                @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("invalid package name _" : stdgo.GoString));
            };
            @:check2r _p._expectSemi();
            if ((@:checkr _p ?? throw "null pointer dereference")._errors.len() != ((0 : stdgo.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return null;
                };
            };
            var _decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            if (((@:checkr _p ?? throw "null pointer dereference")._mode & (1u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((75 : stdgo._internal.go.token.Token_token.Token))) {
                    _decls = (_decls.__append__(stdgo.Go.asInterface(@:check2r _p._parseGenDecl((75 : stdgo._internal.go.token.Token_token.Token), @:check2r _p._parseImportSpec))));
                };
                if (((@:checkr _p ?? throw "null pointer dereference")._mode & (2u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                    var _prev = (75 : stdgo._internal.go.token.Token_token.Token);
                    while ((@:checkr _p ?? throw "null pointer dereference")._tok != ((1 : stdgo._internal.go.token.Token_token.Token))) {
                        if ((((@:checkr _p ?? throw "null pointer dereference")._tok == (75 : stdgo._internal.go.token.Token_token.Token)) && (_prev != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("imports must appear before other declarations" : stdgo.GoString));
                        };
                        _prev = (@:checkr _p ?? throw "null pointer dereference")._tok;
                        _decls = (_decls.__append__(@:check2r _p._parseDecl(stdgo._internal.go.parser.Parser__declstart._declStart)));
                    };
                };
            };
            var _f = (stdgo.Go.setRef(({ doc : _doc, package_ : _pos, name : _ident, decls : _decls, fileStart : (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.base() : stdgo._internal.go.token.Token_pos.Pos), fileEnd : ((@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.base() + @:check2r (@:checkr _p ?? throw "null pointer dereference")._file.size() : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), imports : (@:checkr _p ?? throw "null pointer dereference")._imports, comments : (@:checkr _p ?? throw "null pointer dereference")._comments, goVersion : (@:checkr _p ?? throw "null pointer dereference")._goVersion?.__copy__() } : stdgo._internal.go.ast.Ast_file.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            var _declErr:(stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void = null;
            if (((@:checkr _p ?? throw "null pointer dereference")._mode & (16u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) != ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                _declErr = @:check2r _p._error;
            };
            if (((@:checkr _p ?? throw "null pointer dereference")._mode & (64u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                stdgo._internal.go.parser.Parser__resolvefile._resolveFile(_f, (@:checkr _p ?? throw "null pointer dereference")._file, _declErr);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _f;
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _sync:stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>):stdgo._internal.go.ast.Ast_decl.Decl {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Declaration" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _f:stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction = (null : stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction);
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((75 : stdgo._internal.go.token.Token_token.Token))) {
                    _f = @:check2r _p._parseImportSpec;
                } else if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                    _f = @:check2r _p._parseValueSpec;
                } else if (__value__ == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                    _f = @:check2r _p._parseTypeSpec;
                } else if (__value__ == ((71 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_decl.Decl = stdgo.Go.asInterface(@:check2r _p._parseFuncDecl());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else {
                    var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._errorExpected(_pos, ("declaration" : stdgo.GoString));
                    @:check2r _p._advance(_sync);
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_decl.Decl = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_baddecl.BadDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_baddecl.BadDecl>));
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
                final __ret__:stdgo._internal.go.ast.Ast_decl.Decl = stdgo.Go.asInterface(@:check2r _p._parseGenDecl((@:checkr _p ?? throw "null pointer dereference")._tok, _f));
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
                return (null : stdgo._internal.go.ast.Ast_decl.Decl);
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
                return (null : stdgo._internal.go.ast.Ast_decl.Decl);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFuncDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FunctionDecl" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw "null pointer dereference")._leadComment;
            var _pos = (@:check2r _p._expect((71 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = @:check2r _p._parseParameters(false);
                    _recv = @:tmpset0 __tmp__._1;
                };
            };
            var _ident = @:check2r _p._parseIdent();
            var __tmp__ = @:check2r _p._parseParameters(true), _tparams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
            if (((_recv != null && ((_recv : Dynamic).__nil__ == null || !(_recv : Dynamic).__nil__)) && (_tparams != null && ((_tparams : Dynamic).__nil__ == null || !(_tparams : Dynamic).__nil__)) : Bool)) {
                @:check2r _p._error((@:checkr _tparams ?? throw "null pointer dereference").opening, ("method must have no type parameters" : stdgo.GoString));
                _tparams = null;
            };
            var _results = @:check2r _p._parseResult();
            var _body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                    _body = @:check2r _p._parseBody();
                    @:check2r _p._expectSemi();
                } else if (__value__ == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    @:check2r _p._next();
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("unexpected semicolon or newline before {" : stdgo.GoString));
                        _body = @:check2r _p._parseBody();
                        @:check2r _p._expectSemi();
                    };
                } else {
                    @:check2r _p._expectSemi();
                };
            };
            var _decl = (stdgo.Go.setRef(({ doc : _doc, recv : _recv, name : _ident, type : (stdgo.Go.setRef(({ func : _pos, typeParams : _tparams, params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), body : _body } : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _decl;
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseGenDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _keyword:stdgo._internal.go.token.Token_token.Token, _f:stdgo._internal.go.parser.Parser_t_parsespecfunction.T_parseSpecFunction):stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ((("GenDecl(" : stdgo.GoString) + (_keyword.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw "null pointer dereference")._leadComment;
            var _pos = (@:check2r _p._expect(_keyword) : stdgo._internal.go.token.Token_pos.Pos);
            var __0:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), __1:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
var _rparen = __1, _lparen = __0;
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                _lparen = (@:checkr _p ?? throw "null pointer dereference")._pos;
                @:check2r _p._next();
                {
                    var _iota = (0 : stdgo.GoInt);
                    while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (54 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _list = (_list.__append__(_f((@:checkr _p ?? throw "null pointer dereference")._leadComment, _keyword, _iota)));
                        _iota++;
                    };
                };
                _rparen = @:check2r _p._expect((54 : stdgo._internal.go.token.Token_token.Token));
                @:check2r _p._expectSemi();
            } else {
                _list = (_list.__append__(_f(null, _keyword, (0 : stdgo.GoInt))));
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = (stdgo.Go.setRef(({ doc : _doc, tokPos : _pos, tok : _keyword, lparen : _lparen, specs : _list, rparen : _rparen } : stdgo._internal.go.ast.Ast_gendecl.GenDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, __0:stdgo._internal.go.token.Token_token.Token, __1:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeSpec" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _name = @:check2r _p._parseIdent();
            var _spec = (stdgo.Go.setRef(({ doc : _doc, name : _name } : stdgo._internal.go.ast.Ast_typespec.TypeSpec)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                var _lbrack = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _p._next();
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _x:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseIdent());
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((50 : stdgo._internal.go.token.Token_token.Token))) {
                        (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
                        var _lhs = (@:check2r _p._parsePrimaryExpr(_x) : stdgo._internal.go.ast.Ast_expr.Expr);
                        _x = @:check2r _p._parseBinaryExpr(_lhs, (1 : stdgo.GoInt));
                        (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
                    };
                    {
                        var __tmp__ = stdgo._internal.go.parser.Parser__extractname._extractName(_x, (@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))), _pname:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __tmp__._0, _ptype:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._1;
                        if (((_pname != null && ((_pname : Dynamic).__nil__ == null || !(_pname : Dynamic).__nil__)) && (((_ptype != null) || ((@:checkr _p ?? throw "null pointer dereference")._tok != (55 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                            @:check2r _p._parseGenericType(_spec, _lbrack, _pname, _ptype);
                        } else {
                            (@:checkr _spec ?? throw "null pointer dereference").type = stdgo.Go.asInterface(@:check2r _p._parseArrayType(_lbrack, _x));
                        };
                    };
                } else {
                    (@:checkr _spec ?? throw "null pointer dereference").type = stdgo.Go.asInterface(@:check2r _p._parseArrayType(_lbrack, (null : stdgo._internal.go.ast.Ast_expr.Expr)));
                };
            } else {
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                    (@:checkr _spec ?? throw "null pointer dereference").assign = (@:checkr _p ?? throw "null pointer dereference")._pos;
                    @:check2r _p._next();
                };
                (@:checkr _spec ?? throw "null pointer dereference").type = @:check2r _p._parseType();
            };
            (@:checkr _spec ?? throw "null pointer dereference").comment = @:check2r _p._expectSemi();
            {
                final __ret__:stdgo._internal.go.ast.Ast_spec.Spec = stdgo.Go.asInterface(_spec);
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
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
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
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseGenericType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>, _openPos:stdgo._internal.go.token.Token_pos.Pos, _name0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typ0:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("parseGenericType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _list = @:check2r _p._parseParameterList(_name0, _typ0, (55 : stdgo._internal.go.token.Token_token.Token));
            var _closePos = (@:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            (@:checkr _spec ?? throw "null pointer dereference").typeParams = (stdgo.Go.setRef(({ opening : _openPos, list : _list, closing : _closePos } : stdgo._internal.go.ast.Ast_fieldlist.FieldList)) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                (@:checkr _spec ?? throw "null pointer dereference").assign = (@:checkr _p ?? throw "null pointer dereference")._pos;
                @:check2r _p._next();
            };
            (@:checkr _spec ?? throw "null pointer dereference").type = @:check2r _p._parseType();
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
    static public function _parseValueSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, _keyword:stdgo._internal.go.token.Token_token.Token, _iota:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ((_keyword.string() : stdgo.GoString) + ("Spec" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _idents = @:check2r _p._parseIdentList();
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _values:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            {
                final __value__ = _keyword;
                if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token))) {
                    if ((((@:checkr _p ?? throw "null pointer dereference")._tok != ((1 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (54 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _typ = @:check2r _p._tryIdentOrType();
                        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                            @:check2r _p._next();
                            _values = @:check2r _p._parseList(true);
                        };
                    };
                } else if (__value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((42 : stdgo._internal.go.token.Token_token.Token))) {
                        _typ = @:check2r _p._parseType();
                    };
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((42 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _p._next();
                        _values = @:check2r _p._parseList(true);
                    };
                } else {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            var _comment = @:check2r _p._expectSemi();
            var _spec = (stdgo.Go.setRef(({ doc : _doc, names : _idents, type : _typ, values : _values, comment : _comment } : stdgo._internal.go.ast.Ast_valuespec.ValueSpec)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
            {
                final __ret__:stdgo._internal.go.ast.Ast_spec.Spec = stdgo.Go.asInterface(_spec);
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
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
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
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseImportSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>, __0:stdgo._internal.go.token.Token_token.Token, __1:stdgo.GoInt):stdgo._internal.go.ast.Ast_spec.Spec {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ImportSpec" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    _ident = @:check2r _p._parseIdent();
                } else if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                    _ident = (stdgo.Go.setRef(({ namePos : (@:checkr _p ?? throw "null pointer dereference")._pos, name : ("." : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                    @:check2r _p._next();
                };
            };
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _path:stdgo.GoString = ("" : stdgo.GoString);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                _path = (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__();
                @:check2r _p._next();
            } else if ((@:checkr _p ?? throw "null pointer dereference")._tok.isLiteral()) {
                @:check2r _p._error(_pos, ("import path must be a string" : stdgo.GoString));
                @:check2r _p._next();
            } else {
                @:check2r _p._error(_pos, ("missing import path" : stdgo.GoString));
                @:check2r _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
            };
            var _comment = @:check2r _p._expectSemi();
            var _spec = (stdgo.Go.setRef(({ doc : _doc, name : _ident, path : (stdgo.Go.setRef(({ valuePos : _pos, kind : (9 : stdgo._internal.go.token.Token_token.Token), value : _path?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>), comment : _comment } : stdgo._internal.go.ast.Ast_importspec.ImportSpec)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            (@:checkr _p ?? throw "null pointer dereference")._imports = ((@:checkr _p ?? throw "null pointer dereference")._imports.__append__(_spec));
            {
                final __ret__:stdgo._internal.go.ast.Ast_spec.Spec = stdgo.Go.asInterface(_spec);
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
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
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
                return (null : stdgo._internal.go.ast.Ast_spec.Spec);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _s = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Statement" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((84 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ decl : @:check2r _p._parseDecl(stdgo._internal.go.parser.Parser__stmtstart._stmtStart) } : stdgo._internal.go.ast.Ast_declstmt.DeclStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>));
                } else if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((5 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((6 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((7 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((8 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((9 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((71 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((49 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((82 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((77 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((76 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((12 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((13 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((17 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((19 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((43 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        var __tmp__ = @:check2r _p._parseSimpleStmt((1 : stdgo.GoInt));
                        _s = @:tmpset0 __tmp__._0;
                    };
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>), _1 : false };
                        }, __0 = __tmp__._0, _isLabeledStmt = __tmp__._1;
                        if (!_isLabeledStmt) {
                            @:check2r _p._expectSemi();
                        };
                    };
                } else if (__value__ == ((72 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = @:check2r _p._parseGoStmt();
                } else if (__value__ == ((67 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = @:check2r _p._parseDeferStmt();
                } else if (__value__ == ((80 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(@:check2r _p._parseReturnStmt());
                } else if (__value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((73 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(@:check2r _p._parseBranchStmt((@:checkr _p ?? throw "null pointer dereference")._tok));
                } else if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(@:check2r _p._parseBlockStmt());
                    @:check2r _p._expectSemi();
                } else if (__value__ == ((74 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(@:check2r _p._parseIfStmt());
                } else if (__value__ == ((83 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = @:check2r _p._parseSwitchStmt();
                } else if (__value__ == ((81 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface(@:check2r _p._parseSelectStmt());
                } else if (__value__ == ((70 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = @:check2r _p._parseForStmt();
                } else if (__value__ == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ semicolon : (@:checkr _p ?? throw "null pointer dereference")._pos, implicit : (@:checkr _p ?? throw "null pointer dereference")._lit == (("\n" : stdgo.GoString)) } : stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>));
                    @:check2r _p._next();
                } else if (__value__ == ((56 : stdgo._internal.go.token.Token_token.Token))) {
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ semicolon : (@:checkr _p ?? throw "null pointer dereference")._pos, implicit : true } : stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>));
                } else {
                    var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._errorExpected(_pos, ("statement" : stdgo.GoString));
                    @:check2r _p._advance(stdgo._internal.go.parser.Parser__stmtstart._stmtStart);
                    _s = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badstmt.BadStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>));
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _s;
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
                return _s;
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
                return _s;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseForStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ForStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((70 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var __0:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), __1:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), __2:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
var _s3 = __2, _s2 = __1, _s1 = __0;
            var _isRange:Bool = false;
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                var _prevLev = ((@:checkr _p ?? throw "null pointer dereference")._exprLev : stdgo.GoInt);
                (@:checkr _p ?? throw "null pointer dereference")._exprLev = (-1 : stdgo.GoInt);
                if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((79 : stdgo._internal.go.token.Token_token.Token))) {
                        var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                        @:check2r _p._next();
                        var _y = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _pos, op : (79 : stdgo._internal.go.token.Token_token.Token), x : @:check2r _p._parseRhs() } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                        _s2 = stdgo.Go.asInterface((stdgo.Go.setRef(({ rhs : _y } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>));
                        _isRange = true;
                    } else {
                        {
                            var __tmp__ = @:check2r _p._parseSimpleStmt((2 : stdgo.GoInt));
                            _s2 = @:tmpset0 __tmp__._0;
                            _isRange = @:tmpset0 __tmp__._1;
                        };
                    };
                };
                if ((!_isRange && ((@:checkr _p ?? throw "null pointer dereference")._tok == (57 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    @:check2r _p._next();
                    _s1 = _s2;
                    _s2 = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = @:check2r _p._parseSimpleStmt((0 : stdgo.GoInt));
                            _s2 = @:tmpset0 __tmp__._0;
                        };
                    };
                    @:check2r _p._expectSemi();
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = @:check2r _p._parseSimpleStmt((0 : stdgo.GoInt));
                            _s3 = @:tmpset0 __tmp__._0;
                        };
                    };
                };
                (@:checkr _p ?? throw "null pointer dereference")._exprLev = _prevLev;
            };
            var _body = @:check2r _p._parseBlockStmt();
            @:check2r _p._expectSemi();
            if (_isRange) {
                var _as = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s2) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>);
                var __0:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr), __1:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
var _value = __1, _key = __0;
                {
                    final __value__ = ((@:checkr _as ?? throw "null pointer dereference").lhs.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {} else if (__value__ == ((1 : stdgo.GoInt))) {
                        _key = (@:checkr _as ?? throw "null pointer dereference").lhs[(0 : stdgo.GoInt)];
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        {
                            final __tmp__0 = (@:checkr _as ?? throw "null pointer dereference").lhs[(0 : stdgo.GoInt)];
                            final __tmp__1 = (@:checkr _as ?? throw "null pointer dereference").lhs[(1 : stdgo.GoInt)];
                            _key = __tmp__0;
                            _value = __tmp__1;
                        };
                    } else {
                        @:check2r _p._errorExpected((@:checkr _as ?? throw "null pointer dereference").lhs[(((@:checkr _as ?? throw "null pointer dereference").lhs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].pos(), ("at most 2 expressions" : stdgo.GoString));
                        {
                            final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : @:check2r _p._safePos(@:check2r _body.end()) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                var _x = ((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _as ?? throw "null pointer dereference").rhs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) ?? throw "null pointer dereference").x : stdgo._internal.go.ast.Ast_expr.Expr);
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ for_ : _pos, key : _key, value : _value, tokPos : (@:checkr _as ?? throw "null pointer dereference").tokPos, tok : (@:checkr _as ?? throw "null pointer dereference").tok, range : (@:checkr _as ?? throw "null pointer dereference").rhs[(0 : stdgo.GoInt)].pos(), x : _x, body : _body } : stdgo._internal.go.ast.Ast_rangestmt.RangeStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ for_ : _pos, init : _s1, cond : @:check2r _p._makeExpr(_s2, ("boolean or range expression" : stdgo.GoString)), post : _s3, body : _body } : stdgo._internal.go.ast.Ast_forstmt.ForStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>));
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseSelectStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("SelectStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((81 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _lbrace = (@:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            while ((((@:checkr _p ?? throw "null pointer dereference")._tok == (62 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw "null pointer dereference")._tok == (66 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(stdgo.Go.asInterface(@:check2r _p._parseCommClause())));
            };
            var _rbrace = (@:check2r _p._expect((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            @:check2r _p._expectSemi();
            var _body = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = (stdgo.Go.setRef(({ select : _pos, body : _body } : stdgo._internal.go.ast.Ast_selectstmt.SelectStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseCommClause( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("CommClause" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _comm:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((62 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                var _lhs = @:check2r _p._parseList(false);
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    if (((_lhs.length) > (1 : stdgo.GoInt) : Bool)) {
                        @:check2r _p._errorExpected(_lhs[(0 : stdgo.GoInt)].pos(), ("1 expression" : stdgo.GoString));
                    };
                    var _arrow = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    var _rhs = (@:check2r _p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                    _comm = stdgo.Go.asInterface((stdgo.Go.setRef(({ chan : _lhs[(0 : stdgo.GoInt)], arrow : _arrow, value : _rhs } : stdgo._internal.go.ast.Ast_sendstmt.SendStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>));
                } else {
                    {
                        var _tok = ((@:checkr _p ?? throw "null pointer dereference")._tok : stdgo._internal.go.token.Token_token.Token);
                        if (((_tok == (42 : stdgo._internal.go.token.Token_token.Token)) || (_tok == (47 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            if (((_lhs.length) > (2 : stdgo.GoInt) : Bool)) {
                                @:check2r _p._errorExpected(_lhs[(0 : stdgo.GoInt)].pos(), ("1 or 2 expressions" : stdgo.GoString));
                                _lhs = (_lhs.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                            };
                            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                            @:check2r _p._next();
                            var _rhs = (@:check2r _p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                            _comm = stdgo.Go.asInterface((stdgo.Go.setRef(({ lhs : _lhs, tokPos : _pos, tok : _tok, rhs : (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[_rhs]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>));
                        } else {
                            if (((_lhs.length) > (1 : stdgo.GoInt) : Bool)) {
                                @:check2r _p._errorExpected(_lhs[(0 : stdgo.GoInt)].pos(), ("1 expression" : stdgo.GoString));
                            };
                            _comm = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _lhs[(0 : stdgo.GoInt)] } : stdgo._internal.go.ast.Ast_exprstmt.ExprStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>));
                        };
                    };
                };
            } else {
                @:check2r _p._expect((66 : stdgo._internal.go.token.Token_token.Token));
            };
            var _colon = (@:check2r _p._expect((58 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _body = @:check2r _p._parseStmtList();
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = (stdgo.Go.setRef(({ case_ : _pos, comm : _comm, colon : _colon, body : _body } : stdgo._internal.go.ast.Ast_commclause.CommClause)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseSwitchStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("SwitchStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((83 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var __0:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), __1:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
var _s2 = __1, _s1 = __0;
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                var _prevLev = ((@:checkr _p ?? throw "null pointer dereference")._exprLev : stdgo.GoInt);
                (@:checkr _p ?? throw "null pointer dereference")._exprLev = (-1 : stdgo.GoInt);
                if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        var __tmp__ = @:check2r _p._parseSimpleStmt((0 : stdgo.GoInt));
                        _s2 = @:tmpset0 __tmp__._0;
                    };
                };
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                    @:check2r _p._next();
                    _s1 = _s2;
                    _s2 = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        {
                            var __tmp__ = @:check2r _p._parseSimpleStmt((0 : stdgo.GoInt));
                            _s2 = @:tmpset0 __tmp__._0;
                        };
                    };
                };
                (@:checkr _p ?? throw "null pointer dereference")._exprLev = _prevLev;
            };
            var _typeSwitch = (@:check2r _p._isTypeSwitchGuard(_s2) : Bool);
            var _lbrace = (@:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
            while ((((@:checkr _p ?? throw "null pointer dereference")._tok == (62 : stdgo._internal.go.token.Token_token.Token)) || ((@:checkr _p ?? throw "null pointer dereference")._tok == (66 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(stdgo.Go.asInterface(@:check2r _p._parseCaseClause())));
            };
            var _rbrace = (@:check2r _p._expect((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            @:check2r _p._expectSemi();
            var _body = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            if (_typeSwitch) {
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ switch_ : _pos, init : _s1, assign : _s2, body : _body } : stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ switch_ : _pos, init : _s1, tag : @:check2r _p._makeExpr(_s2, ("switch expression" : stdgo.GoString)), body : _body } : stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>));
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _isTypeSwitchGuard( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _s:stdgo._internal.go.ast.Ast_stmt.Stmt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        {
            final __type__ = _s;
            {
                var __bool__ = true;
                while (__bool__) {
                    __bool__ = false;
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>) : __type__.__underlying__().value;
                        return stdgo._internal.go.parser.Parser__istypeswitchassert._isTypeSwitchAssert((@:checkr _t ?? throw "null pointer dereference").x);
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>))) {
                        var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>) : __type__.__underlying__().value;
                        if (((((@:checkr _t ?? throw "null pointer dereference").lhs.length) == ((1 : stdgo.GoInt)) && ((@:checkr _t ?? throw "null pointer dereference").rhs.length) == ((1 : stdgo.GoInt)) : Bool) && stdgo._internal.go.parser.Parser__istypeswitchassert._isTypeSwitchAssert((@:checkr _t ?? throw "null pointer dereference").rhs[(0 : stdgo.GoInt)]) : Bool)) {
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = (@:checkr _t ?? throw "null pointer dereference").tok;
                                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (42 : stdgo._internal.go.token.Token_token.Token)))) {
                                            @:check2r _p._error((@:checkr _t ?? throw "null pointer dereference").tokPos, ("expected \':=\', found \'=\'" : stdgo.GoString));
                                            @:fallthrough {
                                                __switchIndex__ = 1;
                                                __run__ = true;
                                                continue;
                                            };
                                            break;
                                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (47 : stdgo._internal.go.token.Token_token.Token)))) {
                                            return true;
                                            break;
                                            break;
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                    };
                    break;
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _parseCaseClause( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("CaseClause" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((62 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                _list = @:check2r _p._parseList(true);
            } else {
                @:check2r _p._expect((66 : stdgo._internal.go.token.Token_token.Token));
            };
            var _colon = (@:check2r _p._expect((58 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _body = @:check2r _p._parseStmtList();
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = (stdgo.Go.setRef(({ case_ : _pos, list : _list, colon : _colon, body : _body } : stdgo._internal.go.ast.Ast_caseclause.CaseClause)) : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIfStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("IfStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((74 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = @:check2r _p._parseIfHeader(), _init:stdgo._internal.go.ast.Ast_stmt.Stmt = __tmp__._0, _cond:stdgo._internal.go.ast.Ast_expr.Expr = __tmp__._1;
            var _body = @:check2r _p._parseBlockStmt();
            var _else_:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((68 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                {
                    final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                    if (__value__ == ((74 : stdgo._internal.go.token.Token_token.Token))) {
                        _else_ = stdgo.Go.asInterface(@:check2r _p._parseIfStmt());
                    } else if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                        _else_ = stdgo.Go.asInterface(@:check2r _p._parseBlockStmt());
                        @:check2r _p._expectSemi();
                    } else {
                        @:check2r _p._errorExpected((@:checkr _p ?? throw "null pointer dereference")._pos, ("if statement or block" : stdgo.GoString));
                        _else_ = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _p ?? throw "null pointer dereference")._pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badstmt.BadStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>));
                    };
                };
            } else {
                @:check2r _p._expectSemi();
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = (stdgo.Go.setRef(({ if_ : _pos, init : _init, cond : _cond, body : _body, else_ : _else_ } : stdgo._internal.go.ast.Ast_ifstmt.IfStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIfHeader( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _init = (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _cond = (null : stdgo._internal.go.ast.Ast_expr.Expr);
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((51 : stdgo._internal.go.token.Token_token.Token))) {
            @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("missing condition in if statement" : stdgo.GoString));
            _cond = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _p ?? throw "null pointer dereference")._pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
            return { _0 : _init, _1 : _cond };
        };
        var _prevLev = ((@:checkr _p ?? throw "null pointer dereference")._exprLev : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._exprLev = (-1 : stdgo.GoInt);
        if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((57 : stdgo._internal.go.token.Token_token.Token))) {
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("var declaration not allowed in if initializer" : stdgo.GoString));
            };
            {
                var __tmp__ = @:check2r _p._parseSimpleStmt((0 : stdgo.GoInt));
                _init = @:tmpset0 __tmp__._0;
            };
        };
        var _condStmt:stdgo._internal.go.ast.Ast_stmt.Stmt = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        var _semi:stdgo._internal.go.parser.Parser_t__struct_0.T__struct_0 = ({ _pos : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _lit : ("" : stdgo.GoString) } : stdgo._internal.go.parser.Parser_t__struct_0.T__struct_0);
        if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((57 : stdgo._internal.go.token.Token_token.Token))) {
                _semi._pos = (@:checkr _p ?? throw "null pointer dereference")._pos;
                _semi._lit = (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__();
                @:check2r _p._next();
            } else {
                @:check2r _p._expect((57 : stdgo._internal.go.token.Token_token.Token));
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = @:check2r _p._parseSimpleStmt((0 : stdgo.GoInt));
                    _condStmt = @:tmpset0 __tmp__._0;
                };
            };
        } else {
            _condStmt = _init;
            _init = (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
        };
        if (_condStmt != null) {
            _cond = @:check2r _p._makeExpr(_condStmt, ("boolean expression" : stdgo.GoString));
        } else if (_semi._pos.isValid()) {
            if (_semi._lit == (("\n" : stdgo.GoString))) {
                @:check2r _p._error(_semi._pos, ("unexpected newline, expecting { after if clause" : stdgo.GoString));
            } else {
                @:check2r _p._error(_semi._pos, ("missing condition in if statement" : stdgo.GoString));
            };
        };
        if (_cond == null) {
            _cond = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (@:checkr _p ?? throw "null pointer dereference")._pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
        };
        (@:checkr _p ?? throw "null pointer dereference")._exprLev = _prevLev;
        return { _0 : _init, _1 : _cond };
    }
    @:keep
    @:tdfield
    static public function _makeExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _s:stdgo._internal.go.ast.Ast_stmt.Stmt, _want:stdgo.GoString):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        if (_s == null) {
            return (null : stdgo._internal.go.ast.Ast_expr.Expr);
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>), _1 : false };
            }, _es = __tmp__._0, _isExpr = __tmp__._1;
            if (_isExpr) {
                return (@:checkr _es ?? throw "null pointer dereference").x;
            };
        };
        var _found = (("simple statement" : stdgo.GoString) : stdgo.GoString);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>), _1 : false };
            }, __0 = __tmp__._0, _isAss = __tmp__._1;
            if (_isAss) {
                _found = ("assignment" : stdgo.GoString);
            };
        };
        @:check2r _p._error(_s.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("expected %s, found %s (missing parentheses around composite literal?)" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_found))?.__copy__());
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _s.pos(), to : @:check2r _p._safePos(_s.end()) } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
    }
    @:keep
    @:tdfield
    static public function _parseBranchStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("BranchStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect(_tok) : stdgo._internal.go.token.Token_pos.Pos);
            var _label:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
            if (((_tok != (69 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok == (4 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _label = @:check2r _p._parseIdent();
            };
            @:check2r _p._expectSemi();
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = (stdgo.Go.setRef(({ tokPos : _pos, tok : _tok, label : _label } : stdgo._internal.go.ast.Ast_branchstmt.BranchStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseReturnStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ReturnStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            @:check2r _p._expect((80 : stdgo._internal.go.token.Token_token.Token));
            var _x:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            if ((((@:checkr _p ?? throw "null pointer dereference")._tok != (57 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (56 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _x = @:check2r _p._parseList(true);
            };
            @:check2r _p._expectSemi();
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt> = (stdgo.Go.setRef(({ return_ : _pos, results : _x } : stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseDeferStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("DeferStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((67 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _call = @:check2r _p._parseCallExpr(("defer" : stdgo.GoString));
            @:check2r _p._expectSemi();
            if ((_call == null || (_call : Dynamic).__nil__)) {
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (_pos + (5 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ defer : _pos, call : _call } : stdgo._internal.go.ast.Ast_deferstmt.DeferStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>));
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseGoStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_stmt.Stmt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("GoStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((72 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _call = @:check2r _p._parseCallExpr(("go" : stdgo.GoString));
            @:check2r _p._expectSemi();
            if ((_call == null || (_call : Dynamic).__nil__)) {
                {
                    final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (_pos + (2 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_stmt.Stmt = stdgo.Go.asInterface((stdgo.Go.setRef(({ go : _pos, call : _call } : stdgo._internal.go.ast.Ast_gostmt.GoStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>));
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
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
                return (null : stdgo._internal.go.ast.Ast_stmt.Stmt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseCallExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _callType:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _x = (@:check2r _p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
        {
            var _t = (stdgo._internal.go.parser.Parser__unparen._unparen(_x) : stdgo._internal.go.ast.Ast_expr.Expr);
            if (stdgo.Go.toInterface(_t) != (stdgo.Go.toInterface(_x))) {
                @:check2r _p._error(_x.pos(), stdgo._internal.fmt.Fmt_sprintf.sprintf(("expression in %s must not be parenthesized" : stdgo.GoString), stdgo.Go.toInterface(_callType))?.__copy__());
                _x = _t;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>), _1 : false };
            }, _call = __tmp__._0, _isCall = __tmp__._1;
            if (_isCall) {
                return _call;
            };
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>), _1 : false };
            }, __0 = __tmp__._0, _isBad = __tmp__._1;
            if (!_isBad) {
                @:check2r _p._error(@:check2r _p._safePos(_x.end()), stdgo._internal.fmt.Fmt_sprintf.sprintf(("expression in %s must be function call" : stdgo.GoString), stdgo.Go.toInterface(_callType))?.__copy__());
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _parseSimpleStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _mode:stdgo.GoInt):{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("SimpleStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _x = @:check2r _p._parseList(false);
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((47 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((42 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((23 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((24 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((25 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((26 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((27 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((28 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((29 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((30 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((31 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((32 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((33 : stdgo._internal.go.token.Token_token.Token))) {
                    var __0 = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos), __1 = ((@:checkr _p ?? throw "null pointer dereference")._tok : stdgo._internal.go.token.Token_token.Token);
var _tok = __1, _pos = __0;
                    @:check2r _p._next();
                    var _y:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                    var _isRange = (false : Bool);
                    if (((_mode == ((2 : stdgo.GoInt)) && (@:checkr _p ?? throw "null pointer dereference")._tok == ((79 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (((_tok == (47 : stdgo._internal.go.token.Token_token.Token)) || (_tok == (42 : stdgo._internal.go.token.Token_token.Token)) : Bool)) : Bool)) {
                        var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                        @:check2r _p._next();
                        _y = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _pos, op : (79 : stdgo._internal.go.token.Token_token.Token), x : @:check2r _p._parseRhs() } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                        _isRange = true;
                    } else {
                        _y = @:check2r _p._parseList(true);
                    };
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ lhs : _x, tokPos : _pos, tok : _tok, rhs : _y } : stdgo._internal.go.ast.Ast_assignstmt.AssignStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>)), _1 : _isRange };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            if (((_x.length) > (1 : stdgo.GoInt) : Bool)) {
                @:check2r _p._errorExpected(_x[(0 : stdgo.GoInt)].pos(), ("1 expression" : stdgo.GoString));
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((58 : stdgo._internal.go.token.Token_token.Token))) {
                    var _colon = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                        }, _label = __tmp__._0, _isIdent = __tmp__._1;
                        if (((_mode == (1 : stdgo.GoInt)) && _isIdent : Bool)) {
                            var _stmt = (stdgo.Go.setRef(({ label : _label, colon : _colon, stmt : @:check2r _p._parseStmt() } : stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
                            {
                                final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface(_stmt), _1 : false };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    @:check2r _p._error(_colon, ("illegal label declaration" : stdgo.GoString));
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _x[(0 : stdgo.GoInt)].pos(), to : (_colon + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos) } : stdgo._internal.go.ast.Ast_badstmt.BadStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>)), _1 : false };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    var _arrow = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    var _y = (@:check2r _p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ chan : _x[(0 : stdgo.GoInt)], arrow : _arrow, value : _y } : stdgo._internal.go.ast.Ast_sendstmt.SendStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>)), _1 : false };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((37 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((38 : stdgo._internal.go.token.Token_token.Token))) {
                    var _s = (stdgo.Go.setRef(({ x : _x[(0 : stdgo.GoInt)], tokPos : (@:checkr _p ?? throw "null pointer dereference")._pos, tok : (@:checkr _p ?? throw "null pointer dereference")._tok } : stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>);
                    @:check2r _p._next();
                    {
                        final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface(_s), _1 : false };
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
                final __ret__:{ var _0 : stdgo._internal.go.ast.Ast_stmt.Stmt; var _1 : Bool; } = { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x[(0 : stdgo.GoInt)] } : stdgo._internal.go.ast.Ast_exprstmt.ExprStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>)), _1 : false };
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
                return { _0 : (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _1 : false };
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
                return { _0 : (null : stdgo._internal.go.ast.Ast_stmt.Stmt), _1 : false };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseRhs( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _old = ((@:checkr _p ?? throw "null pointer dereference")._inRhs : Bool);
        (@:checkr _p ?? throw "null pointer dereference")._inRhs = true;
        var _x = (@:check2r _p._parseExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
        (@:checkr _p ?? throw "null pointer dereference")._inRhs = _old;
        return _x;
    }
    @:keep
    @:tdfield
    static public function _parseExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Expression" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = @:check2r _p._parseBinaryExpr((null : stdgo._internal.go.ast.Ast_expr.Expr), (1 : stdgo.GoInt));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseBinaryExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr, _prec1:stdgo.GoInt):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("BinaryExpr" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if (_x == null) {
                _x = @:check2r _p._parseUnaryExpr();
            };
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _p ?? throw "null pointer dereference")._nestLev = ((@:checkr _p ?? throw "null pointer dereference")._nestLev - (_n) : stdgo.GoInt);
                    };
                    a();
                }) });
            };
            {
                _n = (1 : stdgo.GoInt);
                while (true) {
                    stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
var __tmp__ = @:check2r _p._tokPrec(), _op:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _oprec:stdgo.GoInt = __tmp__._1;
if ((_oprec < _prec1 : Bool)) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _x;
                        };
                    };
var _pos = (@:check2r _p._expect(_op) : stdgo._internal.go.token.Token_pos.Pos);
var _y = (@:check2r _p._parseBinaryExpr((null : stdgo._internal.go.ast.Ast_expr.Expr), (_oprec + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.go.ast.Ast_expr.Expr);
_x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, opPos : _pos, op : _op, y : _y } : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>));
                    _n++;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokPrec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _tok = ((@:checkr _p ?? throw "null pointer dereference")._tok : stdgo._internal.go.token.Token_token.Token);
        if (((@:checkr _p ?? throw "null pointer dereference")._inRhs && (_tok == (42 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
            _tok = (39 : stdgo._internal.go.token.Token_token.Token);
        };
        return { _0 : _tok, _1 : _tok.precedence() };
    }
    @:keep
    @:tdfield
    static public function _parseUnaryExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("UnaryExpr" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((13 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((43 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((19 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((17 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                    var __0 = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos), __1 = ((@:checkr _p ?? throw "null pointer dereference")._tok : stdgo._internal.go.token.Token_token.Token);
var _op = __1, _pos = __0;
                    @:check2r _p._next();
                    var _x = (@:check2r _p._parseUnaryExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _pos, op : _op, x : _x } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    var _arrow = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    var _x = (@:check2r _p._parseUnaryExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : false };
                        }, _typ = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            var _dir = (1 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
                            while ((_ok && (_dir == (1 : stdgo._internal.go.ast.Ast_chandir.ChanDir)) : Bool)) {
                                if ((@:checkr _typ ?? throw "null pointer dereference").dir == ((2 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                                    @:check2r _p._errorExpected((@:checkr _typ ?? throw "null pointer dereference").arrow, ("\'chan\'" : stdgo.GoString));
                                };
                                {
                                    final __tmp__0 = (@:checkr _typ ?? throw "null pointer dereference").arrow;
                                    final __tmp__1 = _arrow;
                                    final __tmp__2 = _arrow;
                                    _arrow = __tmp__0;
                                    (@:checkr _typ ?? throw "null pointer dereference").begin = __tmp__1;
                                    (@:checkr _typ ?? throw "null pointer dereference").arrow = __tmp__2;
                                };
                                {
                                    final __tmp__0 = (@:checkr _typ ?? throw "null pointer dereference").dir;
                                    final __tmp__1 = (2 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
                                    _dir = __tmp__0;
                                    (@:checkr _typ ?? throw "null pointer dereference").dir = __tmp__1;
                                };
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _typ ?? throw "null pointer dereference").value) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>), _1 : false };
                                    };
                                    _typ = @:tmpset0 __tmp__._0;
                                    _ok = @:tmpset0 __tmp__._1;
                                };
                            };
                            if (_dir == ((1 : stdgo._internal.go.ast.Ast_chandir.ChanDir))) {
                                @:check2r _p._errorExpected(_arrow, ("channel type" : stdgo.GoString));
                            };
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _x;
                            };
                        };
                    };
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ opPos : _arrow, op : (36 : stdgo._internal.go.token.Token_token.Token), x : _x } : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                    var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    var _x = (@:check2r _p._parseUnaryExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _pos, x : _x } : stdgo._internal.go.ast.Ast_starexpr.StarExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>));
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
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = @:check2r _p._parsePrimaryExpr((null : stdgo._internal.go.ast.Ast_expr.Expr));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parsePrimaryExpr( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("PrimaryExpr" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if (_x == null) {
                _x = @:check2r _p._parseOperand();
            };
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _p ?? throw "null pointer dereference")._nestLev = ((@:checkr _p ?? throw "null pointer dereference")._nestLev - (_n) : stdgo.GoInt);
                    };
                    a();
                }) });
            };
            {
                _n = (1 : stdgo.GoInt);
                while (true) {
                    stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
{
                        final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                        if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                            @:check2r _p._next();
                            {
                                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                                    _x = @:check2r _p._parseSelector(_x);
                                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                                    _x = @:check2r _p._parseTypeAssertion(_x);
                                } else {
                                    var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                                    @:check2r _p._errorExpected(_pos, ("selector or type assertion" : stdgo.GoString));
                                    if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((56 : stdgo._internal.go.token.Token_token.Token))) {
                                        @:check2r _p._next();
                                    };
                                    var _sel = (stdgo.Go.setRef(({ namePos : _pos, name : ("_" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
                                    _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, sel : _sel } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>));
                                };
                            };
                        } else if (__value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                            _x = @:check2r _p._parseIndexOrSliceOrInstance(_x);
                        } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                            _x = stdgo.Go.asInterface(@:check2r _p._parseCallOrConversion(_x));
                        } else if (__value__ == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                            var _t = (stdgo._internal.go.parser.Parser__unparen._unparen(_x) : stdgo._internal.go.ast.Ast_expr.Expr);
                            {
                                final __type__ = _t;
                                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>))) {
                                    if (((@:checkr _p ?? throw "null pointer dereference")._exprLev < (0 : stdgo.GoInt) : Bool)) {
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return _x;
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_indexlistexpr.IndexListExpr>))) {
                                    if (((@:checkr _p ?? throw "null pointer dereference")._exprLev < (0 : stdgo.GoInt) : Bool)) {
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return _x;
                                        };
                                    };
                                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {} else {
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return _x;
                                    };
                                };
                            };
                            if (stdgo.Go.toInterface(_t) != (stdgo.Go.toInterface(_x))) {
                                @:check2r _p._error(_t.pos(), ("cannot parenthesize type in composite literal" : stdgo.GoString));
                            };
                            _x = @:check2r _p._parseLiteralValue(_x);
                        } else {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _x;
                            };
                        };
                    };
                    _n++;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseLiteralValue( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("LiteralValue" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrace = (@:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _elts:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((56 : stdgo._internal.go.token.Token_token.Token))) {
                _elts = @:check2r _p._parseElementList();
            };
            (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            var _rbrace = (@:check2r _p._expectClosing((56 : stdgo._internal.go.token.Token_token.Token), ("composite literal" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : _typ, lbrace : _lbrace, elts : _elts, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_compositelit.CompositeLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseElementList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ElementList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (56 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(@:check2r _p._parseElement()));
                if (!@:check2r _p._atComma(("composite literal" : stdgo.GoString), (56 : stdgo._internal.go.token.Token_token.Token))) {
                    break;
                };
                @:check2r _p._next();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
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
                return _list;
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
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseElement( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Element" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _x = (@:check2r _p._parseValue() : stdgo._internal.go.ast.Ast_expr.Expr);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((58 : stdgo._internal.go.token.Token_token.Token))) {
                var _colon = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _p._next();
                _x = stdgo.Go.asInterface((stdgo.Go.setRef(({ key : _x, colon : _colon, value : @:check2r _p._parseValue() } : stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_keyvalueexpr.KeyValueExpr>));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _x;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseValue( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Element" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((51 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = @:check2r _p._parseLiteralValue((null : stdgo._internal.go.ast.Ast_expr.Expr));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _x = (@:check2r _p._parseExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _x;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseCallOrConversion( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _fun:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("CallOrConversion" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lparen = (@:check2r _p._expect((49 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            var _ellipsis:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            while ((((@:checkr _p ?? throw "null pointer dereference")._tok != ((54 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((1 : stdgo._internal.go.token.Token_token.Token)) : Bool) && !_ellipsis.isValid() : Bool)) {
                _list = (_list.__append__(@:check2r _p._parseRhs()));
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                    _ellipsis = (@:checkr _p ?? throw "null pointer dereference")._pos;
                    @:check2r _p._next();
                };
                if (!@:check2r _p._atComma(("argument list" : stdgo.GoString), (54 : stdgo._internal.go.token.Token_token.Token))) {
                    break;
                };
                @:check2r _p._next();
            };
            (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            var _rparen = (@:check2r _p._expectClosing((54 : stdgo._internal.go.token.Token_token.Token), ("argument list" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr> = (stdgo.Go.setRef(({ fun : _fun, lparen : _lparen, args : _list, ellipsis : _ellipsis, rparen : _rparen } : stdgo._internal.go.ast.Ast_callexpr.CallExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_callexpr.CallExpr>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIndexOrSliceOrInstance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("parseIndexOrSliceOrInstance" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrack = (@:check2r _p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((55 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._errorExpected((@:checkr _p ?? throw "null pointer dereference")._pos, ("operand" : stdgo.GoString));
                var _rbrack = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _p._next();
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _rbrack, to : _rbrack } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>)), rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
            {};
            var _args:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            var _index:stdgo.GoArray<stdgo._internal.go.ast.Ast_expr.Expr> = new stdgo.GoArray<stdgo._internal.go.ast.Ast_expr.Expr>(3, 3);
            var _colons:stdgo.GoArray<stdgo._internal.go.token.Token_pos.Pos> = new stdgo.GoArray<stdgo._internal.go.token.Token_pos.Pos>(2, 2).__setNumber32__();
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((58 : stdgo._internal.go.token.Token_token.Token))) {
                _index[(0 : stdgo.GoInt)] = @:check2r _p._parseRhs();
            };
            var _ncolons = (0 : stdgo.GoInt);
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((58 : stdgo._internal.go.token.Token_token.Token))) {
                    while ((((@:checkr _p ?? throw "null pointer dereference")._tok == (58 : stdgo._internal.go.token.Token_token.Token)) && (_ncolons < (_colons.length) : Bool) : Bool)) {
                        _colons[(_ncolons : stdgo.GoInt)] = (@:checkr _p ?? throw "null pointer dereference")._pos;
                        _ncolons++;
                        @:check2r _p._next();
                        if ((((@:checkr _p ?? throw "null pointer dereference")._tok != ((58 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((55 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            _index[(_ncolons : stdgo.GoInt)] = @:check2r _p._parseRhs();
                        };
                    };
                } else if (__value__ == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                    _args = (_args.__append__(_index[(0 : stdgo.GoInt)]));
                    while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _p._next();
                        if ((((@:checkr _p ?? throw "null pointer dereference")._tok != (55 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            _args = (_args.__append__(@:check2r _p._parseType()));
                        };
                    };
                };
            };
            (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            var _rbrack = (@:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            if ((_ncolons > (0 : stdgo.GoInt) : Bool)) {
                var _slice3 = (false : Bool);
                if (_ncolons == ((2 : stdgo.GoInt))) {
                    _slice3 = true;
                    if (_index[(1 : stdgo.GoInt)] == null) {
                        @:check2r _p._error(_colons[(0 : stdgo.GoInt)], ("middle index required in 3-index slice" : stdgo.GoString));
                        _index[(1 : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (_colons[(0 : stdgo.GoInt)] + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos), to : _colons[(1 : stdgo.GoInt)] } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
                    };
                    if (_index[(2 : stdgo.GoInt)] == null) {
                        @:check2r _p._error(_colons[(1 : stdgo.GoInt)], ("final index required in 3-index slice" : stdgo.GoString));
                        _index[(2 : stdgo.GoInt)] = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (_colons[(1 : stdgo.GoInt)] + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos), to : _rbrack } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
                    };
                };
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, low : _index[(0 : stdgo.GoInt)], high : _index[(1 : stdgo.GoInt)], max : _index[(2 : stdgo.GoInt)], slice3 : _slice3, rbrack : _rbrack } : stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_sliceexpr.SliceExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((_args.length) == ((0 : stdgo.GoInt))) {
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, lbrack : _lbrack, index : _index[(0 : stdgo.GoInt)], rbrack : _rbrack } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(_x, _lbrack, _args, _rbrack);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeAssertion( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeAssertion" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lparen = (@:check2r _p._expect((49 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
            } else {
                _typ = @:check2r _p._parseType();
            };
            var _rparen = (@:check2r _p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, type : _typ, lparen : _lparen, rparen : _rparen } : stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typeassertexpr.TypeAssertExpr>));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseSelector( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Selector" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _sel = @:check2r _p._parseIdent();
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _x, sel : _sel } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseOperand( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Operand" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _x = @:check2r _p._parseIdent();
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_x);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((5 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((6 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((7 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((8 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                    var _x = (stdgo.Go.setRef(({ valuePos : (@:checkr _p ?? throw "null pointer dereference")._pos, kind : (@:checkr _p ?? throw "null pointer dereference")._tok, value : (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
                    @:check2r _p._next();
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_x);
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    var _lparen = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
                    var _x = (@:check2r _p._parseRhs() : stdgo._internal.go.ast.Ast_expr.Expr);
                    (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
                    var _rparen = (@:check2r _p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ lparen : _lparen, x : _x, rparen : _rparen } : stdgo._internal.go.ast.Ast_parenexpr.ParenExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((71 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = @:check2r _p._parseFuncTypeOrLit();
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
                var _typ = (@:check2r _p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
                if (_typ != null) {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                    }, __0 = __tmp__._0, _isIdent = __tmp__._1;
                    stdgo._internal.go.parser.Parser__assert._assert(!_isIdent, ("type cannot be identifier" : stdgo.GoString));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _typ;
                    };
                };
            };
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            @:check2r _p._errorExpected(_pos, ("operand" : stdgo.GoString));
            @:check2r _p._advance(stdgo._internal.go.parser.Parser__stmtstart._stmtStart);
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFuncTypeOrLit( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FuncTypeOrLit" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _typ = @:check2r _p._parseFuncType();
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((51 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_typ);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
            var _body = @:check2r _p._parseBody();
            (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ type : _typ, body : _body } : stdgo._internal.go.ast.Ast_funclit.FuncLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funclit.FuncLit>));
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseBlockStmt( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("BlockStmt" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrace = (@:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list = @:check2r _p._parseStmtList();
            var _rbrace = (@:check2r _p._expect2((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseBody( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Body" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrace = (@:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list = @:check2r _p._parseStmtList();
            var _rbrace = (@:check2r _p._expect2((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = (stdgo.Go.setRef(({ lbrace : _lbrace, list : _list, rbrace : _rbrace } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseStmtList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("StatementList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            while (((((@:checkr _p ?? throw "null pointer dereference")._tok != ((62 : stdgo._internal.go.token.Token_token.Token)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((66 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((56 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(@:check2r _p._parseStmt()));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
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
                return _list;
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
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tryIdentOrType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.go.parser.Parser__incnestlev._incNestLev(_p);
                final __f__ = stdgo._internal.go.parser.Parser__decnestlev._decNestLev;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _typ = (@:check2r _p._parseTypeName(null) : stdgo._internal.go.ast.Ast_expr.Expr);
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                        _typ = @:check2r _p._parseTypeInstance(_typ);
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _typ;
                    };
                } else if (__value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                    var _lbrack = (@:check2r _p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseArrayType(_lbrack, (null : stdgo._internal.go.ast.Ast_expr.Expr)));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((82 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseStructType());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parsePointerType());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((71 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseFuncType());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((76 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseInterfaceType());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((77 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseMapType());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(@:check2r _p._parseChanType());
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    var _lparen = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    var _typ = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
                    var _rparen = (@:check2r _p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                    {
                        final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ lparen : _lparen, x : _typ, rparen : _rparen } : stdgo._internal.go.ast.Ast_parenexpr.ParenExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>));
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
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeInstance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeInstance" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _opening = (@:check2r _p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
            var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (55 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(@:check2r _p._parseType()));
                if (!@:check2r _p._atComma(("type argument list" : stdgo.GoString), (55 : stdgo._internal.go.token.Token_token.Token))) {
                    break;
                };
                @:check2r _p._next();
            };
            (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            var _closing = (@:check2r _p._expectClosing((55 : stdgo._internal.go.token.Token_token.Token), ("type argument list" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                @:check2r _p._errorExpected(_closing, ("type argument list" : stdgo.GoString));
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _typ, lbrack : _opening, index : stdgo.Go.asInterface((stdgo.Go.setRef(({ from : (_opening + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos), to : _closing } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>)), rbrack : _closing } : stdgo._internal.go.ast.Ast_indexexpr.IndexExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_indexexpr.IndexExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(_typ, _opening, _list, _closing);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseChanType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ChanType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            var _dir = (3 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
            var _arrow:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((63 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((36 : stdgo._internal.go.token.Token_token.Token))) {
                    _arrow = (@:checkr _p ?? throw "null pointer dereference")._pos;
                    @:check2r _p._next();
                    _dir = (1 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
                };
            } else {
                _arrow = @:check2r _p._expect((36 : stdgo._internal.go.token.Token_token.Token));
                @:check2r _p._expect((63 : stdgo._internal.go.token.Token_token.Token));
                _dir = (2 : stdgo._internal.go.ast.Ast_chandir.ChanDir);
            };
            var _value = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = (stdgo.Go.setRef(({ begin : _pos, arrow : _arrow, dir : _dir, value : _value } : stdgo._internal.go.ast.Ast_chantype.ChanType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseMapType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("MapType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((77 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            @:check2r _p._expect((50 : stdgo._internal.go.token.Token_token.Token));
            var _key = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            @:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token));
            var _value = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = (stdgo.Go.setRef(({ map_ : _pos, key : _key, value : _value } : stdgo._internal.go.ast.Ast_maptype.MapType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseInterfaceType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _parseElementsBreak = false;
            var _list_3853888:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            var _rbrace_3854632:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _typ_3854326:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _t_3854286:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _comment_3854179:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
            var _typ_3854149:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _f_3853972:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            var _lbrace_3853849:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _pos_3853815:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            var _comment_3854355:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
            var _gotoNext = 0i32;
            var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
            while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i32)) {
                        if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                            _gotoNext = 3853770i32;
                        } else {
                            _gotoNext = 3853815i32;
                        };
                    } else if (__value__ == (3853770i32)) {
                        {
                            var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("InterfaceType" : stdgo.GoString));
                            final __f__ = stdgo._internal.go.parser.Parser__un._un;
                            __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                        };
                        _gotoNext = 3853815i32;
                    } else if (__value__ == (3853815i32)) {
                        _pos_3853815 = @:check2r _p._expect((76 : stdgo._internal.go.token.Token_token.Token));
                        _lbrace_3853849 = @:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token));
                        _gotoNext = 3853907i32;
                    } else if (__value__ == (3853907i32)) {
                        var __blank__ = 0i32;
                        _parseElementsBreak = false;
                        _gotoNext = 3853923i32;
                    } else if (__value__ == (3853923i32)) {
                        if (!_parseElementsBreak) {
                            _gotoNext = 3853927i32;
                        } else {
                            _gotoNext = 3854632i32;
                        };
                    } else if (__value__ == (3853927i32)) {
                        _gotoNext = 3853931i32;
                    } else if (__value__ == (3853931i32)) {
                        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 3853942i32;
                        } else if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 3854119i32;
                        } else {
                            _gotoNext = 3854271i32;
                        };
                    } else if (__value__ == (3853942i32)) {
                        _f_3853972 = @:check2r _p._parseMethodSpec();
                        if ((@:checkr _f_3853972 ?? throw "null pointer dereference").names == null) {
                            _gotoNext = 3854018i32;
                        } else {
                            _gotoNext = 3854064i32;
                        };
                    } else if (__value__ == (3854018i32)) {
                        (@:checkr _f_3853972 ?? throw "null pointer dereference").type = @:check2r _p._embeddedElem((@:checkr _f_3853972 ?? throw "null pointer dereference").type);
                        _gotoNext = 3854064i32;
                    } else if (__value__ == (3854064i32)) {
                        (@:checkr _f_3853972 ?? throw "null pointer dereference").comment = @:check2r _p._expectSemi();
                        _list_3853888 = (_list_3853888.__append__(_f_3853972));
                        _gotoNext = 3853923i32;
                    } else if (__value__ == (3854119i32)) {
                        _typ_3854149 = @:check2r _p._embeddedElem((null : stdgo._internal.go.ast.Ast_expr.Expr));
                        _comment_3854179 = @:check2r _p._expectSemi();
                        _list_3853888 = (_list_3853888.__append__((stdgo.Go.setRef(({ type : _typ_3854149, comment : _comment_3854179 } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)));
                        _gotoNext = 3853923i32;
                    } else if (__value__ == (3854271i32)) {
                        {
                            _t_3854286 = @:check2r _p._tryIdentOrType();
                            if (_t_3854286 != null) {
                                _gotoNext = 3854320i32;
                            } else {
                                _gotoNext = 3854456i32;
                            };
                        };
                    } else if (__value__ == (3854320i32)) {
                        _typ_3854326 = @:check2r _p._embeddedElem(_t_3854286);
                        _comment_3854355 = @:check2r _p._expectSemi();
                        _list_3853888 = (_list_3853888.__append__((stdgo.Go.setRef(({ type : _typ_3854326, comment : _comment_3854355 } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)));
                        _gotoNext = 3853923i32;
                    } else if (__value__ == (3854456i32)) {
                        _gotoNext = 3854456i32;
                        _parseElementsBreak = true;
                        _gotoNext = 3853923i32;
                    } else if (__value__ == (3854632i32)) {
                        _rbrace_3854632 = @:check2r _p._expect((56 : stdgo._internal.go.token.Token_token.Token));
                        {
                            final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = (stdgo.Go.setRef(({ interface_ : _pos_3853815, methods : (stdgo.Go.setRef(({ opening : _lbrace_3853849, list : _list_3853888, closing : _rbrace_3854632 } : stdgo._internal.go.ast.Ast_fieldlist.FieldList)) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) } : stdgo._internal.go.ast.Ast_interfacetype.InterfaceType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i32;
                    };
                };
            };
            throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _embeddedTerm( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("EmbeddedTerm" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>);
                (@:checkr _t ?? throw "null pointer dereference").opPos = (@:checkr _p ?? throw "null pointer dereference")._pos;
                (@:checkr _t ?? throw "null pointer dereference").op = (88 : stdgo._internal.go.token.Token_token.Token);
                @:check2r _p._next();
                (@:checkr _t ?? throw "null pointer dereference").x = @:check2r _p._parseType();
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_t);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _t = (@:check2r _p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
            if (_t == null) {
                var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _p._errorExpected(_pos, ("~ term or type" : stdgo.GoString));
                @:check2r _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _t;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _embeddedElem( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("EmbeddedElem" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if (_x == null) {
                _x = @:check2r _p._embeddedTerm();
            };
            while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                var _t = (stdgo.Go.setRef(({} : stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>);
                (@:checkr _t ?? throw "null pointer dereference").opPos = (@:checkr _p ?? throw "null pointer dereference")._pos;
                (@:checkr _t ?? throw "null pointer dereference").op = (18 : stdgo._internal.go.token.Token_token.Token);
                @:check2r _p._next();
                (@:checkr _t ?? throw "null pointer dereference").x = _x;
                (@:checkr _t ?? throw "null pointer dereference").y = @:check2r _p._embeddedTerm();
                _x = stdgo.Go.asInterface(_t);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _x;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseMethodSpec( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("MethodSpec" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw "null pointer dereference")._leadComment;
            var _idents:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _x = (@:check2r _p._parseTypeName(null) : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _ident = __tmp__._0, __0 = __tmp__._1;
                if ((_ident != null && ((_ident : Dynamic).__nil__ == null || !(_ident : Dynamic).__nil__))) {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                                var _lbrack = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                                @:check2r _p._next();
                                (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
                                var _x = (@:check2r _p._parseExpr() : stdgo._internal.go.ast.Ast_expr.Expr);
                                (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                                    } catch(_) {
                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                                    }, _name0 = __tmp__._0, __1 = __tmp__._1;
                                    if ((((_name0 != null && ((_name0 : Dynamic).__nil__ == null || !(_name0 : Dynamic).__nil__)) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((52 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (55 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                                        var __blank__ = @:check2r _p._parseParameterList(_name0, (null : stdgo._internal.go.ast.Ast_expr.Expr), (55 : stdgo._internal.go.token.Token_token.Token));
                                        var __blank__ = @:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token));
                                        @:check2r _p._error(_lbrack, ("interface method must have no type parameters" : stdgo.GoString));
                                        var __tmp__ = @:check2r _p._parseParameters(false), __2:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
                                        var _results = @:check2r _p._parseResult();
                                        _idents = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(1, 1, ...[_ident]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                        _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ func : (0 : stdgo._internal.go.token.Token_pos.Pos), params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>));
                                    } else {
                                        var _list = (new stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>(1, 1, ...[_x]) : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
                                        if (@:check2r _p._atComma(("type argument list" : stdgo.GoString), (55 : stdgo._internal.go.token.Token_token.Token))) {
                                            (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
                                            @:check2r _p._next();
                                            while ((((@:checkr _p ?? throw "null pointer dereference")._tok != (55 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                                                _list = (_list.__append__(@:check2r _p._parseType()));
                                                if (!@:check2r _p._atComma(("type argument list" : stdgo.GoString), (55 : stdgo._internal.go.token.Token_token.Token))) {
                                                    break;
                                                };
                                                @:check2r _p._next();
                                            };
                                            (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
                                        };
                                        var _rbrack = (@:check2r _p._expectClosing((55 : stdgo._internal.go.token.Token_token.Token), ("type argument list" : stdgo.GoString)) : stdgo._internal.go.token.Token_pos.Pos);
                                        _typ = stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(stdgo.Go.asInterface(_ident), _lbrack, _list, _rbrack);
                                    };
                                };
                                break;
                            } else if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                                var __tmp__ = @:check2r _p._parseParameters(false), __1:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
                                var _results = @:check2r _p._parseResult();
                                _idents = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(1, 1, ...[_ident]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                                _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ func : (0 : stdgo._internal.go.token.Token_pos.Pos), params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>));
                                break;
                            } else {
                                _typ = _x;
                            };
                            break;
                        };
                    };
                } else {
                    _typ = _x;
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                        _typ = @:check2r _p._parseTypeInstance(_typ);
                    };
                };
            };
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> = (stdgo.Go.setRef(({ doc : _doc, names : _idents, type : _typ } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFuncType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FuncType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((71 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = @:check2r _p._parseParameters(true), _tparams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _params:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
            if ((_tparams != null && ((_tparams : Dynamic).__nil__ == null || !(_tparams : Dynamic).__nil__))) {
                @:check2r _p._error(@:check2r _tparams.pos(), ("function type must have no type parameters" : stdgo.GoString));
            };
            var _results = @:check2r _p._parseResult();
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = (stdgo.Go.setRef(({ func : _pos, params : _params, results : _results } : stdgo._internal.go.ast.Ast_functype.FuncType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseResult( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Result" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                var __tmp__ = @:check2r _p._parseParameters(false), __0:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._0, _results:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = __tmp__._1;
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _results;
                };
            };
            var _typ = (@:check2r _p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
            if (_typ != null) {
                var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>((1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
                _list[(0 : stdgo.GoInt)] = (stdgo.Go.setRef(({ type : _typ } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
                {
                    final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = (stdgo.Go.setRef(({ list : _list } : stdgo._internal.go.ast.Ast_fieldlist.FieldList)) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return null;
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParameters( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _acceptTParams:Bool):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>; var _1 : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _tparams = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>), _params = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Parameters" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if ((_acceptTParams && ((@:checkr _p ?? throw "null pointer dereference")._tok == (50 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                var _opening = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _p._next();
                var _list = @:check2r _p._parseParameterList(null, (null : stdgo._internal.go.ast.Ast_expr.Expr), (55 : stdgo._internal.go.token.Token_token.Token));
                var _rbrack = (@:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
                _tparams = (stdgo.Go.setRef(({ opening : _opening, list : _list, closing : _rbrack } : stdgo._internal.go.ast.Ast_fieldlist.FieldList)) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
                if (@:check2r _tparams.numFields() == ((0 : stdgo.GoInt))) {
                    @:check2r _p._error((@:checkr _tparams ?? throw "null pointer dereference").closing, ("empty type parameter list" : stdgo.GoString));
                    _tparams = null;
                };
            };
            var _opening = (@:check2r _p._expect((49 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((54 : stdgo._internal.go.token.Token_token.Token))) {
                _fields = @:check2r _p._parseParameterList(null, (null : stdgo._internal.go.ast.Ast_expr.Expr), (54 : stdgo._internal.go.token.Token_token.Token));
            };
            var _rparen = (@:check2r _p._expect((54 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            _params = (stdgo.Go.setRef(({ opening : _opening, list : _fields, closing : _rparen } : stdgo._internal.go.ast.Ast_fieldlist.FieldList)) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _tparams, _1 : _params };
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
                return { _0 : _tparams, _1 : _params };
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
                return { _0 : _tparams, _1 : _params };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParameterList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _name0:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typ0:stdgo._internal.go.ast.Ast_expr.Expr, _closing:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _params = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ParameterList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _tparams = (_closing == ((55 : stdgo._internal.go.token.Token_token.Token)) : Bool);
            var _typeSetsOK = (_tparams : Bool);
            var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
            if ((_name0 != null && ((_name0 : Dynamic).__nil__ == null || !(_name0 : Dynamic).__nil__))) {
                _pos = @:check2r _name0.pos();
            };
            var _list:stdgo.Slice<stdgo._internal.go.parser.Parser_t_field.T_field> = (null : stdgo.Slice<stdgo._internal.go.parser.Parser_t_field.T_field>);
            var _named:stdgo.GoInt = (0 : stdgo.GoInt);
            while (((_name0 != null && ((_name0 : Dynamic).__nil__ == null || !(_name0 : Dynamic).__nil__)) || ((@:checkr _p ?? throw "null pointer dereference")._tok != (_closing) && (@:checkr _p ?? throw "null pointer dereference")._tok != ((1 : stdgo._internal.go.token.Token_token.Token)) : Bool) : Bool)) {
                var _par:stdgo._internal.go.parser.Parser_t_field.T_field = ({} : stdgo._internal.go.parser.Parser_t_field.T_field);
                if (_typ0 != null) {
                    if (_typeSetsOK) {
                        _typ0 = @:check2r _p._embeddedElem(_typ0);
                    };
                    _par = (new stdgo._internal.go.parser.Parser_t_field.T_field(_name0, _typ0) : stdgo._internal.go.parser.Parser_t_field.T_field);
                } else {
                    _par = @:check2r _p._parseParamDecl(_name0, _typeSetsOK)?.__copy__();
                };
                _name0 = null;
                _typ0 = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                if (((_par._name != null && ((_par._name : Dynamic).__nil__ == null || !(_par._name : Dynamic).__nil__)) || (_par._typ != null) : Bool)) {
                    _list = (_list.__append__(_par?.__copy__()));
                    if (((_par._name != null && ((_par._name : Dynamic).__nil__ == null || !(_par._name : Dynamic).__nil__)) && (_par._typ != null) : Bool)) {
                        _named++;
                    };
                };
                if (!@:check2r _p._atComma(("parameter list" : stdgo.GoString), _closing)) {
                    break;
                };
                @:check2r _p._next();
            };
            if ((_list.length) == ((0 : stdgo.GoInt))) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _params;
                };
            };
            if (_named == ((0 : stdgo.GoInt))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (_list.length) : Bool)) {
                        var _par = (stdgo.Go.setRef(_list[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.parser.Parser_t_field.T_field>);
{
                            var _typ = (@:checkr _par ?? throw "null pointer dereference")._name;
                            if ((_typ != null && ((_typ : Dynamic).__nil__ == null || !(_typ : Dynamic).__nil__))) {
                                (@:checkr _par ?? throw "null pointer dereference")._typ = stdgo.Go.asInterface(_typ);
                                (@:checkr _par ?? throw "null pointer dereference")._name = null;
                            };
                        };
                        _i++;
                    };
                };
                if (_tparams) {
                    @:check2r _p._error(_pos, ("type parameters must be named" : stdgo.GoString));
                };
            } else if (_named != ((_list.length))) {
                var _ok = (true : Bool);
                var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                var _missingName = (_pos : stdgo._internal.go.token.Token_pos.Pos);
                {
                    var _i = ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        {
                            var _par = (stdgo.Go.setRef(_list[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.parser.Parser_t_field.T_field>);
                            if ((@:checkr _par ?? throw "null pointer dereference")._typ != null) {
                                _typ = (@:checkr _par ?? throw "null pointer dereference")._typ;
                                if (((@:checkr _par ?? throw "null pointer dereference")._name == null || ((@:checkr _par ?? throw "null pointer dereference")._name : Dynamic).__nil__)) {
                                    _ok = false;
                                    _missingName = (@:checkr _par ?? throw "null pointer dereference")._typ.pos();
                                    var _n = stdgo._internal.go.ast.Ast_newident.newIdent(("_" : stdgo.GoString));
                                    (@:checkr _n ?? throw "null pointer dereference").namePos = _typ.pos();
                                    (@:checkr _par ?? throw "null pointer dereference")._name = _n;
                                };
                            } else if (_typ != null) {
                                (@:checkr _par ?? throw "null pointer dereference")._typ = _typ;
                            } else {
                                _ok = false;
                                _missingName = @:check2r (@:checkr _par ?? throw "null pointer dereference")._name.pos();
                                (@:checkr _par ?? throw "null pointer dereference")._typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : @:check2r (@:checkr _par ?? throw "null pointer dereference")._name.pos(), to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
                            };
                        };
                        _i--;
                    };
                };
                if (!_ok) {
                    if (_tparams) {
                        @:check2r _p._error(_missingName, ("type parameters must be named" : stdgo.GoString));
                    } else {
                        @:check2r _p._error(_pos, ("mixed named and unnamed parameters" : stdgo.GoString));
                    };
                };
            };
            if (_named == ((0 : stdgo.GoInt))) {
                for (__0 => _par in _list) {
                    stdgo._internal.go.parser.Parser__assert._assert(_par._typ != null, ("nil type in unnamed parameter list" : stdgo.GoString));
                    _params = (_params.__append__((stdgo.Go.setRef(({ type : _par._typ } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)));
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _params;
                };
            };
            var _names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            var _addParams = (function():Void {
                stdgo._internal.go.parser.Parser__assert._assert(_typ != null, ("nil type in named parameter list" : stdgo.GoString));
                var _field = (stdgo.Go.setRef(({ names : _names, type : _typ } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
                _params = (_params.__append__(_field));
                _names = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            } : () -> Void);
            for (__0 => _par in _list) {
                if (stdgo.Go.toInterface(_par._typ) != (stdgo.Go.toInterface(_typ))) {
                    if (((_names.length) > (0 : stdgo.GoInt) : Bool)) {
                        _addParams();
                    };
                    _typ = _par._typ;
                };
                _names = (_names.__append__(_par._name));
            };
            if (((_names.length) > (0 : stdgo.GoInt) : Bool)) {
                _addParams();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _params;
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
                return _params;
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
                return _params;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseParamDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _typeSetsOK:Bool):stdgo._internal.go.parser.Parser_t_field.T_field {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _f = ({} : stdgo._internal.go.parser.Parser_t_field.T_field);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ParamDeclOrNil" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _ptok = ((@:checkr _p ?? throw "null pointer dereference")._tok : stdgo._internal.go.token.Token_token.Token);
            if ((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__))) {
                (@:checkr _p ?? throw "null pointer dereference")._tok = (4 : stdgo._internal.go.token.Token_token.Token);
            } else if ((_typeSetsOK && ((@:checkr _p ?? throw "null pointer dereference")._tok == (88 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                {
                    final __ret__:stdgo._internal.go.parser.Parser_t_field.T_field = _f = (new stdgo._internal.go.parser.Parser_t_field.T_field(null, @:check2r _p._embeddedElem((null : stdgo._internal.go.ast.Ast_expr.Expr))) : stdgo._internal.go.parser.Parser_t_field.T_field);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    if ((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__))) {
                        _f._name = _name;
                        (@:checkr _p ?? throw "null pointer dereference")._tok = _ptok;
                    } else {
                        _f._name = @:check2r _p._parseIdent();
                    };
                    {
                        final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                        if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((71 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((77 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((82 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((76 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                            _f._typ = @:check2r _p._parseType();
                        } else if (__value__ == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                            {
                                var __tmp__ = @:check2r _p._parseArrayFieldOrTypeInstance(_f._name);
                                _f._name = @:tmpset0 __tmp__._0;
                                _f._typ = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                            _f._typ = stdgo.Go.asInterface(@:check2r _p._parseDotsType());
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _f;
                            };
                        } else if (__value__ == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                            _f._typ = @:check2r _p._parseQualifiedIdent(_f._name);
                            _f._name = null;
                        } else if (__value__ == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                            if (_typeSetsOK) {
                                _f._typ = @:check2r _p._embeddedElem((null : stdgo._internal.go.ast.Ast_expr.Expr));
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _f;
                                };
                            };
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            if (_typeSetsOK) {
                                _f._typ = @:check2r _p._embeddedElem(stdgo.Go.asInterface(_f._name));
                                _f._name = null;
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _f;
                                };
                            };
                        };
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((36 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((71 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((50 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((63 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((77 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((82 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((76 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    _f._typ = @:check2r _p._parseType();
                } else if (__value__ == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                    _f._typ = stdgo.Go.asInterface(@:check2r _p._parseDotsType());
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _f;
                    };
                } else {
                    @:check2r _p._errorExpected((@:checkr _p ?? throw "null pointer dereference")._pos, ("\')\'" : stdgo.GoString));
                    @:check2r _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                };
            };
            if (((_typeSetsOK && (@:checkr _p ?? throw "null pointer dereference")._tok == ((18 : stdgo._internal.go.token.Token_token.Token)) : Bool) && (_f._typ != null) : Bool)) {
                _f._typ = @:check2r _p._embeddedElem(_f._typ);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _f;
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
                return _f;
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
                return _f;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseDotsType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("DotsType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((48 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _elt = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis> = (stdgo.Go.setRef(({ ellipsis : _pos, elt : _elt } : stdgo._internal.go.ast.Ast_ellipsis.Ellipsis)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parsePointerType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("PointerType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _star = (@:check2r _p._expect((14 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _base = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = (stdgo.Go.setRef(({ star : _star, x : _base } : stdgo._internal.go.ast.Ast_starexpr.StarExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseStructType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("StructType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _pos = (@:check2r _p._expect((82 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _lbrace = (@:check2r _p._expect((51 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
            while ((((@:checkr _p ?? throw "null pointer dereference")._tok == ((4 : stdgo._internal.go.token.Token_token.Token)) || (@:checkr _p ?? throw "null pointer dereference")._tok == ((14 : stdgo._internal.go.token.Token_token.Token)) : Bool) || ((@:checkr _p ?? throw "null pointer dereference")._tok == (49 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _list = (_list.__append__(@:check2r _p._parseFieldDecl()));
            };
            var _rbrace = (@:check2r _p._expect((56 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = (stdgo.Go.setRef(({ struct_ : _pos, fields : (stdgo.Go.setRef(({ opening : _lbrace, list : _list, closing : _rbrace } : stdgo._internal.go.ast.Ast_fieldlist.FieldList)) : stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>) } : stdgo._internal.go.ast.Ast_structtype.StructType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFieldDecl( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("FieldDecl" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _doc = (@:checkr _p ?? throw "null pointer dereference")._leadComment;
            var _names:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
            var _typ:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token))) {
                    var _name = @:check2r _p._parseIdent();
                    if (((((@:checkr _p ?? throw "null pointer dereference")._tok == ((53 : stdgo._internal.go.token.Token_token.Token)) || (@:checkr _p ?? throw "null pointer dereference")._tok == ((9 : stdgo._internal.go.token.Token_token.Token)) : Bool) || (@:checkr _p ?? throw "null pointer dereference")._tok == ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) || ((@:checkr _p ?? throw "null pointer dereference")._tok == (56 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _typ = stdgo.Go.asInterface(_name);
                        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                            _typ = @:check2r _p._parseQualifiedIdent(_name);
                        };
                    } else {
                        _names = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>(1, 1, ...[_name]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                        while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                            @:check2r _p._next();
                            _names = (_names.__append__(@:check2r _p._parseIdent()));
                        };
                        if (((_names.length == (1 : stdgo.GoInt)) && ((@:checkr _p ?? throw "null pointer dereference")._tok == (50 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                            {
                                var __tmp__ = @:check2r _p._parseArrayFieldOrTypeInstance(_name);
                                _name = @:tmpset0 __tmp__._0;
                                _typ = @:tmpset0 __tmp__._1;
                            };
                            if ((_name == null || (_name : Dynamic).__nil__)) {
                                _names = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
                            };
                        } else {
                            _typ = @:check2r _p._parseType();
                        };
                    };
                } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                    var _star = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("cannot parenthesize embedded type" : stdgo.GoString));
                        @:check2r _p._next();
                        _typ = @:check2r _p._parseQualifiedIdent(null);
                        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((54 : stdgo._internal.go.token.Token_token.Token))) {
                            @:check2r _p._next();
                        };
                    } else {
                        _typ = @:check2r _p._parseQualifiedIdent(null);
                    };
                    _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _star, x : _typ } : stdgo._internal.go.ast.Ast_starexpr.StarExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>));
                } else if (__value__ == ((49 : stdgo._internal.go.token.Token_token.Token))) {
                    @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("cannot parenthesize embedded type" : stdgo.GoString));
                    @:check2r _p._next();
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                        var _star = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                        @:check2r _p._next();
                        _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ star : _star, x : @:check2r _p._parseQualifiedIdent(null) } : stdgo._internal.go.ast.Ast_starexpr.StarExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>));
                    } else {
                        _typ = @:check2r _p._parseQualifiedIdent(null);
                    };
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((54 : stdgo._internal.go.token.Token_token.Token))) {
                        @:check2r _p._next();
                    };
                } else {
                    var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._errorExpected(_pos, ("field name or embedded type" : stdgo.GoString));
                    @:check2r _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                    _typ = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
                };
            };
            var _tag:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((9 : stdgo._internal.go.token.Token_token.Token))) {
                _tag = (stdgo.Go.setRef(({ valuePos : (@:checkr _p ?? throw "null pointer dereference")._pos, kind : (@:checkr _p ?? throw "null pointer dereference")._tok, value : (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
                @:check2r _p._next();
            };
            var _comment = @:check2r _p._expectSemi();
            var _field = (stdgo.Go.setRef(({ doc : _doc, names : _names, type : _typ, tag : _tag, comment : _comment } : stdgo._internal.go.ast.Ast_field.Field)) : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _field;
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseArrayFieldOrTypeInstance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _x:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ArrayFieldOrTypeInstance" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _lbrack = (@:check2r _p._expect((50 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            var _trailingComma = (0 : stdgo._internal.go.token.Token_pos.Pos);
            var _args:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((55 : stdgo._internal.go.token.Token_token.Token))) {
                (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
                _args = (_args.__append__(@:check2r _p._parseRhs()));
                while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                    var _comma = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                    @:check2r _p._next();
                    if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((55 : stdgo._internal.go.token.Token_token.Token))) {
                        _trailingComma = _comma;
                        break;
                    };
                    _args = (_args.__append__(@:check2r _p._parseRhs()));
                };
                (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            };
            var _rbrack = (@:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token)) : stdgo._internal.go.token.Token_pos.Pos);
            if ((_args.length) == ((0 : stdgo.GoInt))) {
                var _elt = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } = { _0 : _x, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ lbrack : _lbrack, elt : _elt } : stdgo._internal.go.ast.Ast_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if ((_args.length) == ((1 : stdgo.GoInt))) {
                var _elt = (@:check2r _p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
                if (_elt != null) {
                    if (_trailingComma.isValid()) {
                        @:check2r _p._error(_trailingComma, ("unexpected comma; expecting ]" : stdgo.GoString));
                    };
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } = { _0 : _x, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ lbrack : _lbrack, len : _args[(0 : stdgo.GoInt)], elt : _elt } : stdgo._internal.go.ast.Ast_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) };
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
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>; var _1 : stdgo._internal.go.ast.Ast_expr.Expr; } = { _0 : null, _1 : stdgo._internal.go.internal.typeparams.Typeparams_packindexexpr.packIndexExpr(stdgo.Go.asInterface(_x), _lbrack, _args, _rbrack) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : (null : stdgo._internal.go.ast.Ast_expr.Expr) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : (null : stdgo._internal.go.ast.Ast_expr.Expr) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseArrayType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _lbrack:stdgo._internal.go.token.Token_pos.Pos, _len:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ArrayType" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if (_len == null) {
                (@:checkr _p ?? throw "null pointer dereference")._exprLev++;
                if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((48 : stdgo._internal.go.token.Token_token.Token))) {
                    _len = stdgo.Go.asInterface((stdgo.Go.setRef(({ ellipsis : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_ellipsis.Ellipsis)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ellipsis.Ellipsis>));
                    @:check2r _p._next();
                } else if ((@:checkr _p ?? throw "null pointer dereference")._tok != ((55 : stdgo._internal.go.token.Token_token.Token))) {
                    _len = @:check2r _p._parseRhs();
                };
                (@:checkr _p ?? throw "null pointer dereference")._exprLev--;
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("unexpected comma; expecting ]" : stdgo.GoString));
                @:check2r _p._next();
            };
            @:check2r _p._expect((55 : stdgo._internal.go.token.Token_token.Token));
            var _elt = (@:check2r _p._parseType() : stdgo._internal.go.ast.Ast_expr.Expr);
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = (stdgo.Go.setRef(({ lbrack : _lbrack, len : _len, elt : _elt } : stdgo._internal.go.ast.Ast_arraytype.ArrayType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
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
                return (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseTypeName( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("TypeName" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            if ((_ident == null || (_ident : Dynamic).__nil__)) {
                _ident = @:check2r _p._parseIdent();
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((53 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                var _sel = @:check2r _p._parseIdent();
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ x : stdgo.Go.asInterface(_ident), sel : _sel } : stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_selectorexpr.SelectorExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface(_ident);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseQualifiedIdent( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("QualifiedIdent" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _typ = (@:check2r _p._parseTypeName(_ident) : stdgo._internal.go.ast.Ast_expr.Expr);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((50 : stdgo._internal.go.token.Token_token.Token))) {
                _typ = @:check2r _p._parseTypeInstance(_typ);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _typ;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseType( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo._internal.go.ast.Ast_expr.Expr {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("Type" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _typ = (@:check2r _p._tryIdentOrType() : stdgo._internal.go.ast.Ast_expr.Expr);
            if (_typ == null) {
                var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r _p._errorExpected(_pos, ("type" : stdgo.GoString));
                @:check2r _p._advance(stdgo._internal.go.parser.Parser__exprend._exprEnd);
                {
                    final __ret__:stdgo._internal.go.ast.Ast_expr.Expr = stdgo.Go.asInterface((stdgo.Go.setRef(({ from : _pos, to : (@:checkr _p ?? throw "null pointer dereference")._pos } : stdgo._internal.go.ast.Ast_badexpr.BadExpr)) : stdgo.Ref<stdgo._internal.go.ast.Ast_badexpr.BadExpr>));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _typ;
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
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
                return (null : stdgo._internal.go.ast.Ast_expr.Expr);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _inRhs:Bool):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _old = ((@:checkr _p ?? throw "null pointer dereference")._inRhs : Bool);
        (@:checkr _p ?? throw "null pointer dereference")._inRhs = _inRhs;
        var _list = @:check2r _p._parseExprList();
        (@:checkr _p ?? throw "null pointer dereference")._inRhs = _old;
        return _list;
    }
    @:keep
    @:tdfield
    static public function _parseExprList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("ExpressionList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            _list = (_list.__append__(@:check2r _p._parseExpr()));
            while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                _list = (_list.__append__(@:check2r _p._parseExpr()));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
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
                return _list;
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
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIdentList( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _list = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, ("IdentList" : stdgo.GoString));
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            _list = (_list.__append__(@:check2r _p._parseIdent()));
            while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
                @:check2r _p._next();
                _list = (_list.__append__(@:check2r _p._parseIdent()));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _list;
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
                return _list;
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
                return _list;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseIdent( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
        var _name = (("_" : stdgo.GoString) : stdgo.GoString);
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((4 : stdgo._internal.go.token.Token_token.Token))) {
            _name = (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__();
            @:check2r _p._next();
        } else {
            @:check2r _p._expect((4 : stdgo._internal.go.token.Token_token.Token));
        };
        return (stdgo.Go.setRef(({ namePos : _pos, name : _name?.__copy__() } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    }
    @:keep
    @:tdfield
    static public function _safePos( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _res = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null) {
                            _res = ((@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.base() + @:check2r (@:checkr _p ?? throw "null pointer dereference")._file.size() : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
                        };
                    };
                    a();
                }) });
            };
            var __blank__ = @:check2r (@:checkr _p ?? throw "null pointer dereference")._file.offset(_pos);
            {
                final __ret__:stdgo._internal.go.token.Token_pos.Pos = _res = _pos;
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
                return _res;
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
                return _res;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _advance( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _to:stdgo.GoMap<stdgo._internal.go.token.Token_token.Token, Bool>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        while ((@:checkr _p ?? throw "null pointer dereference")._tok != ((1 : stdgo._internal.go.token.Token_token.Token))) {
            if ((_to[(@:checkr _p ?? throw "null pointer dereference")._tok] ?? false)) {
                if ((((@:checkr _p ?? throw "null pointer dereference")._pos == (@:checkr _p ?? throw "null pointer dereference")._syncPos) && ((@:checkr _p ?? throw "null pointer dereference")._syncCnt < (10 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._syncCnt++;
                    return;
                };
                if (((@:checkr _p ?? throw "null pointer dereference")._pos > (@:checkr _p ?? throw "null pointer dereference")._syncPos : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._syncPos = (@:checkr _p ?? throw "null pointer dereference")._pos;
                    (@:checkr _p ?? throw "null pointer dereference")._syncCnt = (0 : stdgo.GoInt);
                    return;
                };
            };
            @:check2r _p._next();
        };
    }
    @:keep
    @:tdfield
    static public function _atComma( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _context:stdgo.GoString, _follow:stdgo._internal.go.token.Token_token.Token):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((52 : stdgo._internal.go.token.Token_token.Token))) {
            return true;
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._tok != (_follow)) {
            var _msg = (("missing \',\'" : stdgo.GoString) : stdgo.GoString);
            if ((((@:checkr _p ?? throw "null pointer dereference")._tok == (57 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._lit == ("\n" : stdgo.GoString)) : Bool)) {
                _msg = (_msg + ((" before newline" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ((_msg + (" in " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__());
            return true;
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _expectSemi( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _comment = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        if ((((@:checkr _p ?? throw "null pointer dereference")._tok != (54 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._tok != (56 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _p ?? throw "null pointer dereference")._tok;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (52 : stdgo._internal.go.token.Token_token.Token)))) {
                            @:check2r _p._errorExpected((@:checkr _p ?? throw "null pointer dereference")._pos, ("\';\'" : stdgo.GoString));
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (57 : stdgo._internal.go.token.Token_token.Token)))) {
                            if ((@:checkr _p ?? throw "null pointer dereference")._lit == ((";" : stdgo.GoString))) {
                                @:check2r _p._next();
                                _comment = (@:checkr _p ?? throw "null pointer dereference")._lineComment;
                            } else {
                                _comment = (@:checkr _p ?? throw "null pointer dereference")._lineComment;
                                @:check2r _p._next();
                            };
                            return _comment;
                            break;
                            break;
                        } else {
                            @:check2r _p._errorExpected((@:checkr _p ?? throw "null pointer dereference")._pos, ("\';\'" : stdgo.GoString));
                            @:check2r _p._advance(stdgo._internal.go.parser.Parser__stmtstart._stmtStart);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        return _comment = null;
    }
    @:keep
    @:tdfield
    static public function _expectClosing( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token, _context:stdgo.GoString):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        if ((((@:checkr _p ?? throw "null pointer dereference")._tok != (_tok) && (@:checkr _p ?? throw "null pointer dereference")._tok == ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) && ((@:checkr _p ?? throw "null pointer dereference")._lit == ("\n" : stdgo.GoString)) : Bool)) {
            @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, (("missing \',\' before newline in " : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__());
            @:check2r _p._next();
        };
        return @:check2r _p._expect(_tok);
    }
    @:keep
    @:tdfield
    static public function _expect2( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == (_tok)) {
            _pos = (@:checkr _p ?? throw "null pointer dereference")._pos;
        } else {
            @:check2r _p._errorExpected((@:checkr _p ?? throw "null pointer dereference")._pos, ((("\'" : stdgo.GoString) + (_tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        @:check2r _p._next();
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _expect( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _pos = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
        if ((@:checkr _p ?? throw "null pointer dereference")._tok != (_tok)) {
            @:check2r _p._errorExpected(_pos, ((("\'" : stdgo.GoString) + (_tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        @:check2r _p._next();
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _errorExpected( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        _msg = (("expected " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__();
        if (_pos == ((@:checkr _p ?? throw "null pointer dereference")._pos)) {
            if ((((@:checkr _p ?? throw "null pointer dereference")._tok == (57 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _p ?? throw "null pointer dereference")._lit == ("\n" : stdgo.GoString)) : Bool)) {
                _msg = (_msg + ((", found newline" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            } else if ((@:checkr _p ?? throw "null pointer dereference")._tok.isLiteral()) {
                _msg = (_msg + (((", found " : stdgo.GoString) + (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            } else {
                _msg = (_msg + ((((", found \'" : stdgo.GoString) + ((@:checkr _p ?? throw "null pointer dereference")._tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        @:check2r _p._error(_pos, _msg?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _pos:stdgo._internal.go.token.Token_pos.Pos, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((@:checkr _p ?? throw "null pointer dereference")._trace) {
                {
                    var _a0 = stdgo._internal.go.parser.Parser__trace._trace(_p, (("error: " : stdgo.GoString) + _msg?.__copy__() : stdgo.GoString)?.__copy__());
                    final __f__ = stdgo._internal.go.parser.Parser__un._un;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
                };
            };
            var _epos = (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.position(_pos)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            if (((@:checkr _p ?? throw "null pointer dereference")._mode & (32u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                var _n = ((@:checkr _p ?? throw "null pointer dereference")._errors.length : stdgo.GoInt);
                if (((_n > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._errors[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").pos.line == _epos.line) : Bool)) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                if ((_n > (10 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.parser.Parser_t_bailout.T_bailout() : stdgo._internal.go.parser.Parser_t_bailout.T_bailout)));
                };
            };
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._errors.add(_epos?.__copy__(), _msg?.__copy__());
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
    static public function _next( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._leadComment = null;
        (@:checkr _p ?? throw "null pointer dereference")._lineComment = null;
        var _prev = ((@:checkr _p ?? throw "null pointer dereference")._pos : stdgo._internal.go.token.Token_pos.Pos);
        @:check2r _p._next0();
        if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((2 : stdgo._internal.go.token.Token_token.Token))) {
            var _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
            var _endline:stdgo.GoInt = (0 : stdgo.GoInt);
            if (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line((@:checkr _p ?? throw "null pointer dereference")._pos) == (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line(_prev))) {
                {
                    var __tmp__ = @:check2r _p._consumeCommentGroup((0 : stdgo.GoInt));
                    _comment = @:tmpset0 __tmp__._0;
                    _endline = @:tmpset0 __tmp__._1;
                };
                if (((@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line((@:checkr _p ?? throw "null pointer dereference")._pos) != (_endline) || (@:checkr _p ?? throw "null pointer dereference")._tok == ((57 : stdgo._internal.go.token.Token_token.Token)) : Bool) || ((@:checkr _p ?? throw "null pointer dereference")._tok == (1 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._lineComment = _comment;
                };
            };
            _endline = (-1 : stdgo.GoInt);
            while ((@:checkr _p ?? throw "null pointer dereference")._tok == ((2 : stdgo._internal.go.token.Token_token.Token))) {
                {
                    var __tmp__ = @:check2r _p._consumeCommentGroup((1 : stdgo.GoInt));
                    _comment = @:tmpset0 __tmp__._0;
                    _endline = @:tmpset0 __tmp__._1;
                };
            };
            if ((_endline + (1 : stdgo.GoInt) : stdgo.GoInt) == (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line((@:checkr _p ?? throw "null pointer dereference")._pos))) {
                (@:checkr _p ?? throw "null pointer dereference")._leadComment = _comment;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _consumeCommentGroup( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _n:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _comments = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>), _endline = (0 : stdgo.GoInt);
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        _endline = @:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line((@:checkr _p ?? throw "null pointer dereference")._pos);
        while ((((@:checkr _p ?? throw "null pointer dereference")._tok == (2 : stdgo._internal.go.token.Token_token.Token)) && (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line((@:checkr _p ?? throw "null pointer dereference")._pos) <= (_endline + _n : stdgo.GoInt) : Bool) : Bool)) {
            var _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
            {
                var __tmp__ = @:check2r _p._consumeComment();
                _comment = @:tmpset0 __tmp__._0;
                _endline = @:tmpset0 __tmp__._1;
            };
            _list = (_list.__append__(_comment));
        };
        _comments = (stdgo.Go.setRef(({ list : _list } : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        (@:checkr _p ?? throw "null pointer dereference")._comments = ((@:checkr _p ?? throw "null pointer dereference")._comments.__append__(_comments));
        return { _0 : _comments, _1 : _endline };
    }
    @:keep
    @:tdfield
    static public function _consumeComment( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        var _comment = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>), _endline = (0 : stdgo.GoInt);
        _endline = @:check2r (@:checkr _p ?? throw "null pointer dereference")._file.line((@:checkr _p ?? throw "null pointer dereference")._pos);
        if ((@:checkr _p ?? throw "null pointer dereference")._lit[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _p ?? throw "null pointer dereference")._lit.length) : Bool)) {
                    if ((@:checkr _p ?? throw "null pointer dereference")._lit[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                        _endline++;
                    };
                    _i++;
                };
            };
        };
        _comment = (stdgo.Go.setRef(({ slash : (@:checkr _p ?? throw "null pointer dereference")._pos, text : (@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        @:check2r _p._next0();
        return { _0 : _comment, _1 : _endline };
    }
    @:keep
    @:tdfield
    static public function _next0( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference")._trace && (@:checkr _p ?? throw "null pointer dereference")._pos.isValid() : Bool)) {
            var _s = (((@:checkr _p ?? throw "null pointer dereference")._tok.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if ((@:checkr _p ?? throw "null pointer dereference")._tok.isLiteral()) {
                @:check2r _p._printTrace(stdgo.Go.toInterface(_s), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._lit));
            } else if ((@:checkr _p ?? throw "null pointer dereference")._tok.isOperator() || (@:checkr _p ?? throw "null pointer dereference")._tok.isKeyword()) {
                @:check2r _p._printTrace(stdgo.Go.toInterface(((("\"" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("\"" : stdgo.GoString)?.__copy__() : stdgo.GoString)));
            } else {
                @:check2r _p._printTrace(stdgo.Go.toInterface(_s));
            };
        };
        while (true) {
            {
                var __tmp__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._scanner.scan();
                (@:checkr _p ?? throw "null pointer dereference")._pos = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw "null pointer dereference")._tok = @:tmpset0 __tmp__._1;
                (@:checkr _p ?? throw "null pointer dereference")._lit = @:tmpset0 __tmp__._2?.__copy__();
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._tok == ((2 : stdgo._internal.go.token.Token_token.Token))) {
                if (((@:checkr _p ?? throw "null pointer dereference")._top && stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__(), ("//go:build" : stdgo.GoString)) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse((@:checkr _p ?? throw "null pointer dereference")._lit?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            (@:checkr _p ?? throw "null pointer dereference")._goVersion = stdgo._internal.go.build.constraint.Constraint_goversion.goVersion(_x)?.__copy__();
                        };
                    };
                };
                if (((@:checkr _p ?? throw "null pointer dereference")._mode & (4u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) == ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode))) {
                    continue;
                };
            } else {
                (@:checkr _p ?? throw "null pointer dereference")._top = false;
            };
            break;
        };
    }
    @:keep
    @:tdfield
    static public function _printTrace( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _a:haxe.Rest<stdgo.AnyInterface>):Void {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        {};
        {};
        var _pos = (@:check2r (@:checkr _p ?? throw "null pointer dereference")._file.position((@:checkr _p ?? throw "null pointer dereference")._pos)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        stdgo._internal.fmt.Fmt_printf.printf(("%5d:%3d: " : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column));
        var _i = ((2 : stdgo.GoInt) * (@:checkr _p ?? throw "null pointer dereference")._indent : stdgo.GoInt);
        while ((_i > (64 : stdgo.GoInt) : Bool)) {
            stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface((". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . " : stdgo.GoString)));
            _i = (_i - ((64 : stdgo.GoInt)) : stdgo.GoInt);
        };
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(((". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . " : stdgo.GoString).__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_println.println(...(_a : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _init( _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _src:stdgo.Slice<stdgo.GoUInt8>, _mode:stdgo._internal.go.parser.Parser_mode.Mode):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._file = @:check2r _fset.addFile(_filename?.__copy__(), (-1 : stdgo.GoInt), (_src.length));
        var _eh = (function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._errors.add(_pos?.__copy__(), _msg?.__copy__());
        } : (stdgo._internal.go.token.Token_position.Position, stdgo.GoString) -> Void);
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._scanner.init((@:checkr _p ?? throw "null pointer dereference")._file, _src, _eh, (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        (@:checkr _p ?? throw "null pointer dereference")._top = true;
        (@:checkr _p ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _p ?? throw "null pointer dereference")._trace = (_mode & (8u32 : stdgo._internal.go.parser.Parser_mode.Mode) : stdgo._internal.go.parser.Parser_mode.Mode) != ((0u32 : stdgo._internal.go.parser.Parser_mode.Mode));
        @:check2r _p._next();
    }
}
