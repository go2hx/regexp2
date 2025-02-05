package stdgo._internal.go.ast;
function mergePackageFiles(_pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _mode:stdgo._internal.go.ast.Ast_mergemode.MergeMode):stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> {
        var _ndocs = (0 : stdgo.GoInt);
        var _ncomments = (0 : stdgo.GoInt);
        var _ndecls = (0 : stdgo.GoInt);
        var _filenames = (new stdgo.Slice<stdgo.GoString>(((@:checkr _pkg ?? throw "null pointer dereference").files.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var __0:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), __1:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
var _maxPos = __1, _minPos = __0;
        var _i = (0 : stdgo.GoInt);
        for (_filename => _f in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            _filenames[(_i : stdgo.GoInt)] = _filename?.__copy__();
            _i++;
            if (((@:checkr _f ?? throw "null pointer dereference").doc != null && (((@:checkr _f ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                _ndocs = (_ndocs + ((((@:checkr (@:checkr _f ?? throw "null pointer dereference").doc ?? throw "null pointer dereference").list.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            _ncomments = (_ncomments + (((@:checkr _f ?? throw "null pointer dereference").comments.length)) : stdgo.GoInt);
            _ndecls = (_ndecls + (((@:checkr _f ?? throw "null pointer dereference").decls.length)) : stdgo.GoInt);
            if (((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference").fileStart < _minPos : Bool) : Bool)) {
                _minPos = (@:checkr _f ?? throw "null pointer dereference").fileStart;
            };
            if (((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference").fileEnd > _maxPos : Bool) : Bool)) {
                _maxPos = (@:checkr _f ?? throw "null pointer dereference").fileEnd;
            };
        };
        stdgo._internal.sort.Sort_strings.strings(_filenames);
        var _doc:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _pos:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        if ((_ndocs > (0 : stdgo.GoInt) : Bool)) {
            var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>((_ndocs - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
            var _i = (0 : stdgo.GoInt);
            for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                if (((@:checkr _f ?? throw "null pointer dereference").doc != null && (((@:checkr _f ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _list[(_i : stdgo.GoInt)] = stdgo._internal.go.ast.Ast__separator._separator;
                        _i++;
                    };
                    for (__1 => _c in (@:checkr (@:checkr _f ?? throw "null pointer dereference").doc ?? throw "null pointer dereference").list) {
                        _list[(_i : stdgo.GoInt)] = _c;
                        _i++;
                    };
                    if (((@:checkr _f ?? throw "null pointer dereference").package_ > _pos : Bool)) {
                        _pos = (@:checkr _f ?? throw "null pointer dereference").package_;
                    };
                };
            };
            _doc = (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_commentgroup.CommentGroup(_list) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        };
        var _decls:stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
        if ((_ndecls > (0 : stdgo.GoInt) : Bool)) {
            _decls = (new stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>((_ndecls : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            var _funcs = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
            var _i = (0 : stdgo.GoInt);
            var _n = (0 : stdgo.GoInt);
            for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                for (__1 => _d in (@:checkr _f ?? throw "null pointer dereference").decls) {
                    if ((_mode & (1u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode) : stdgo._internal.go.ast.Ast_mergemode.MergeMode) != ((0u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode))) {
                        {
                            var __tmp__ = try {
                                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_d) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                            } catch(_) {
                                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                            }, _f = __tmp__._0, _isFun = __tmp__._1;
                            if (_isFun) {
                                var _name = (stdgo._internal.go.ast.Ast__nameof._nameOf(_f)?.__copy__() : stdgo.GoString);
                                {
                                    var __tmp__ = (_funcs != null && _funcs.exists(_name?.__copy__()) ? { _0 : _funcs[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _j:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                                    if (_exists) {
                                        if (((_decls[(_j : stdgo.GoInt)] != null) && ((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decls[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) ?? throw "null pointer dereference").doc == null || ((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decls[(_j : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) ?? throw "null pointer dereference").doc : Dynamic).__nil__) : Bool)) {
                                            _decls[(_j : stdgo.GoInt)] = (null : stdgo._internal.go.ast.Ast_decl.Decl);
                                        } else {
                                            _d = (null : stdgo._internal.go.ast.Ast_decl.Decl);
                                        };
                                        _n++;
                                    } else {
                                        _funcs[_name] = _i;
                                    };
                                };
                            };
                        };
                    };
                    _decls[(_i : stdgo.GoInt)] = _d;
                    _i++;
                };
            };
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                _i = (0 : stdgo.GoInt);
                for (__1 => _d in _decls) {
                    if (_d != null) {
                        _decls[(_i : stdgo.GoInt)] = _d;
                        _i++;
                    };
                };
                _decls = (_decls.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
            };
        };
        var _imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        if ((_mode & (4u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode) : stdgo._internal.go.ast.Ast_mergemode.MergeMode) != ((0u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode))) {
            var _seen = (({
                final x = new stdgo.GoMap.GoStringMap<Bool>();
                x.__defaultValue__ = () -> false;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
            for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                for (__1 => _imp in (@:checkr _f ?? throw "null pointer dereference").imports) {
                    {
                        var _path = ((@:checkr (@:checkr _imp ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
                        if (!(_seen[_path] ?? false)) {
                            _imports = (_imports.__append__(_imp));
                            _seen[_path] = true;
                        };
                    };
                };
            };
        } else {
            for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                _imports = (_imports.__append__(...((@:checkr _f ?? throw "null pointer dereference").imports : Array<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>)));
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        if ((_mode & (2u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode) : stdgo._internal.go.ast.Ast_mergemode.MergeMode) == ((0u32 : stdgo._internal.go.ast.Ast_mergemode.MergeMode))) {
            _comments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((_ncomments : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            var _i = (0 : stdgo.GoInt);
            for (__0 => _filename in _filenames) {
                var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
                _i = (_i + ((_comments.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>).__copyTo__((@:checkr _f ?? throw "null pointer dereference").comments)) : stdgo.GoInt);
            };
        };
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_file.File(
_doc,
_pos,
stdgo._internal.go.ast.Ast_newident.newIdent((@:checkr _pkg ?? throw "null pointer dereference").name?.__copy__()),
_decls,
_minPos,
_maxPos,
(@:checkr _pkg ?? throw "null pointer dereference").scope,
_imports,
(null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>),
_comments,
(stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.go.ast.Ast_file.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
    }
