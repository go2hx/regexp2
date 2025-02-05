package stdgo._internal.go.doc;
@:keep @:allow(stdgo._internal.go.doc.Doc.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function _cleanupTypes( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        for (__0 => _t in (@:checkr _r ?? throw "null pointer dereference")._types) {
            var _visible = (@:check2r _r._isVisible((@:checkr _t ?? throw "null pointer dereference")._name?.__copy__()) : Bool);
            var _predeclared = (stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[(@:checkr _t ?? throw "null pointer dereference")._name] ?? false : Bool);
            if ((((@:checkr _t ?? throw "null pointer dereference")._decl == null || ((@:checkr _t ?? throw "null pointer dereference")._decl : Dynamic).__nil__) && ((_predeclared || (_visible && (((@:checkr _t ?? throw "null pointer dereference")._isEmbedded || (@:checkr _r ?? throw "null pointer dereference")._hasDotImp : Bool)) : Bool) : Bool)) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._values = ((@:checkr _r ?? throw "null pointer dereference")._values.__append__(...((@:checkr _t ?? throw "null pointer dereference")._values : Array<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>)));
                for (_name => _f in (@:checkr _t ?? throw "null pointer dereference")._funcs) {
                    (@:checkr _r ?? throw "null pointer dereference")._funcs[_name] = _f;
                };
                if (!_predeclared) {
                    for (_name => _m in (@:checkr _t ?? throw "null pointer dereference")._methods) {
                        {
                            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._funcs != null && (@:checkr _r ?? throw "null pointer dereference")._funcs.exists(_name?.__copy__()) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._funcs[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>), _1 : false }), __1:stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func> = __tmp__._0, _found:Bool = __tmp__._1;
                            if (!_found) {
                                (@:checkr _r ?? throw "null pointer dereference")._funcs[_name] = _m;
                            };
                        };
                    };
                };
            };
            if ((((@:checkr _t ?? throw "null pointer dereference")._decl == null || ((@:checkr _t ?? throw "null pointer dereference")._decl : Dynamic).__nil__) || !_visible : Bool)) {
                if ((@:checkr _r ?? throw "null pointer dereference")._types != null) (@:checkr _r ?? throw "null pointer dereference")._types.remove((@:checkr _t ?? throw "null pointer dereference")._name);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _computeMethodSets( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        for (__0 => _t in (@:checkr _r ?? throw "null pointer dereference")._types) {
            if ((@:checkr _t ?? throw "null pointer dereference")._isStruct) {
                @:check2r _r._collectEmbeddedMethods((@:checkr _t ?? throw "null pointer dereference")._methods, _t, (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), false, (1 : stdgo.GoInt), (({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>) : stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet));
            } else {};
        };
        for (_predecl => _ in (@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl) {
            for (__1 => _ityp in ((@:checkr _r ?? throw "null pointer dereference")._fixmap[_predecl] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>))) {
                stdgo._internal.go.doc.Doc__removeanonymousfield._removeAnonymousField(_predecl?.__copy__(), _ityp);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _collectEmbeddedMethods( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _mset:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _recvTypeName:stdgo.GoString, _embeddedIsPtr:Bool, _level:stdgo.GoInt, _visited:stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        _visited[_typ] = true;
        for (_embedded => _isPtr in (@:checkr _typ ?? throw "null pointer dereference")._embedded) {
            var _thisEmbeddedIsPtr = (_embeddedIsPtr || _isPtr : Bool);
            for (__0 => _m in (@:checkr _embedded ?? throw "null pointer dereference")._methods) {
                if ((@:checkr _m ?? throw "null pointer dereference").level == ((0 : stdgo.GoInt))) {
                    _mset._add(stdgo._internal.go.doc.Doc__customizerecv._customizeRecv(_m, _recvTypeName?.__copy__(), _thisEmbeddedIsPtr, _level));
                };
            };
            if (!(_visited[_embedded] ?? false)) {
                @:check2r _r._collectEmbeddedMethods(_mset, _embedded, _recvTypeName?.__copy__(), _thisEmbeddedIsPtr, (_level + (1 : stdgo.GoInt) : stdgo.GoInt), _visited);
            };
        };
        if (_visited != null) _visited.remove(_typ);
    }
    @:keep
    @:tdfield
    static public function _readPackage( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>, _mode:stdgo._internal.go.doc.Doc_mode.Mode):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._filenames = (new stdgo.Slice<stdgo.GoString>(((@:checkr _pkg ?? throw "null pointer dereference").files.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        (@:checkr _r ?? throw "null pointer dereference")._imports = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        (@:checkr _r ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _r ?? throw "null pointer dereference")._types = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>);
        (@:checkr _r ?? throw "null pointer dereference")._funcs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>) : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet);
        (@:checkr _r ?? throw "null pointer dereference")._notes = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>>);
        (@:checkr _r ?? throw "null pointer dereference")._importByName = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _i = (0 : stdgo.GoInt);
        for (_filename => _ in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            (@:checkr _r ?? throw "null pointer dereference")._filenames[(_i : stdgo.GoInt)] = _filename?.__copy__();
            _i++;
        };
        stdgo._internal.sort.Sort_strings.strings((@:checkr _r ?? throw "null pointer dereference")._filenames);
        for (__0 => _filename in (@:checkr _r ?? throw "null pointer dereference")._filenames) {
            var _f = ((@:checkr _pkg ?? throw "null pointer dereference").files[_filename] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>));
            if ((_mode & (1 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
                @:check2r _r._fileExports(_f);
            };
            @:check2r _r._readFile(_f);
        };
        for (_name => _path in (@:checkr _r ?? throw "null pointer dereference")._importByName) {
            if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                if ((@:checkr _r ?? throw "null pointer dereference")._importByName != null) (@:checkr _r ?? throw "null pointer dereference")._importByName.remove(_name);
            };
        };
        for (__1 => _f in (@:checkr _pkg ?? throw "null pointer dereference").files) {
            for (__2 => _decl in (@:checkr _f ?? throw "null pointer dereference").decls) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                    }, _d = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        @:check2r _r._readFunc(_d);
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readFile( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        if (((@:checkr _src ?? throw "null pointer dereference").doc != null && (((@:checkr _src ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _src ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
            @:check2r _r._readDoc((@:checkr _src ?? throw "null pointer dereference").doc);
            if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
                (@:checkr _src ?? throw "null pointer dereference").doc = null;
            };
        };
        for (__0 => _decl in (@:checkr _src ?? throw "null pointer dereference").decls) {
            {
                final __type__ = _decl;
                {
                    var __bool__ = true;
                    while (__bool__) {
                        __bool__ = false;
                        if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                            var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                            {
                                var __switchIndex__ = -1;
                                var __run__ = true;
                                while (__run__) {
                                    __run__ = false;
                                    {
                                        final __value__ = (@:checkr _d ?? throw "null pointer dereference").tok;
                                        if (__value__ == ((75 : stdgo._internal.go.token.Token_token.Token))) {
                                            for (__1 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                                                {
                                                    var __tmp__ = try {
                                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : true };
                                                    } catch(_) {
                                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : false };
                                                    }, _s = __tmp__._0, _ok = __tmp__._1;
                                                    if (_ok) {
                                                        {
                                                            var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__()), _import_:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                            if (_err == null) {
                                                                (@:checkr _r ?? throw "null pointer dereference")._imports[_import_] = (1 : stdgo.GoInt);
                                                                var _name:stdgo.GoString = ("" : stdgo.GoString);
                                                                if (((@:checkr _s ?? throw "null pointer dereference").name != null && (((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__))) {
                                                                    _name = (@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                                                                    if (_name == (("." : stdgo.GoString))) {
                                                                        (@:checkr _r ?? throw "null pointer dereference")._hasDotImp = true;
                                                                    };
                                                                };
                                                                if (_name != (("." : stdgo.GoString))) {
                                                                    if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
                                                                        _name = stdgo._internal.go.doc.Doc__assumedpackagename._assumedPackageName(_import_?.__copy__())?.__copy__();
                                                                    };
                                                                    var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._importByName != null && (@:checkr _r ?? throw "null pointer dereference")._importByName.exists(_name?.__copy__()) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._importByName[_name?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _old:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                                                    if (!_ok) {
                                                                        (@:checkr _r ?? throw "null pointer dereference")._importByName[_name] = _import_?.__copy__();
                                                                    } else if (((_old != _import_) && (_old != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                                                                        (@:checkr _r ?? throw "null pointer dereference")._importByName[_name] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                                                                    };
                                                                };
                                                            };
                                                        };
                                                    };
                                                };
                                            };
                                            break;
                                        } else if (__value__ == ((64 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((85 : stdgo._internal.go.token.Token_token.Token))) {
                                            @:check2r _r._readValue(_d);
                                            break;
                                        } else if (__value__ == ((84 : stdgo._internal.go.token.Token_token.Token))) {
                                            if ((((@:checkr _d ?? throw "null pointer dereference").specs.length == (1 : stdgo.GoInt)) && !(@:checkr _d ?? throw "null pointer dereference").lparen.isValid() : Bool)) {
                                                {
                                                    var __tmp__ = try {
                                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : true };
                                                    } catch(_) {
                                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : false };
                                                    }, _s = __tmp__._0, _ok = __tmp__._1;
                                                    if (_ok) {
                                                        @:check2r _r._readType(_d, _s);
                                                    };
                                                };
                                                break;
                                            };
                                            for (__1 => _spec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                                                {
                                                    var __tmp__ = try {
                                                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : true };
                                                    } catch(_) {
                                                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>), _1 : false };
                                                    }, _s = __tmp__._0, _ok = __tmp__._1;
                                                    if (_ok) {
                                                        var _fake = (stdgo.Go.setRef(({ doc : (@:checkr _d ?? throw "null pointer dereference").doc, tokPos : @:check2r _s.pos(), tok : (84 : stdgo._internal.go.token.Token_token.Token), specs : (new stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>(1, 1, ...[stdgo.Go.asInterface(_s)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>) } : stdgo._internal.go.ast.Ast_gendecl.GenDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>);
                                                        @:check2r _r._readType(_fake, _s);
                                                    };
                                                };
                                            };
                                            break;
                                        };
                                    };
                                    break;
                                };
                            };
                        };
                        break;
                    };
                };
            };
        };
        @:check2r _r._readNotes((@:checkr _src ?? throw "null pointer dereference").comments);
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _src ?? throw "null pointer dereference").comments = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
    }
    @:keep
    @:tdfield
    static public function _readNotes( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        for (__0 => _group in _comments) {
            var _i = (-1 : stdgo.GoInt);
            var _list = (@:checkr _group ?? throw "null pointer dereference").list;
            for (_j => _c in _list) {
                if (@:check2r stdgo._internal.go.doc.Doc__notecommentrx._noteCommentRx.matchString((@:checkr _c ?? throw "null pointer dereference").text?.__copy__())) {
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _r._readNote((_list.__slice__(_i, _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>));
                    };
                    _i = _j;
                };
            };
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                @:check2r _r._readNote((_list.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readNote( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _text = (@:check2r (stdgo.Go.setRef(({ list : _list } : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>).text()?.__copy__() : stdgo.GoString);
        {
            var _m = @:check2r stdgo._internal.go.doc.Doc__notemarkerrx._noteMarkerRx.findStringSubmatchIndex(_text?.__copy__());
            if (_m != null) {
                var _body = (stdgo._internal.go.doc.Doc__clean._clean((_text.__slice__(_m[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
                if (_body != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _marker = ((_text.__slice__(_m[(2 : stdgo.GoInt)], _m[(3 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    (@:checkr _r ?? throw "null pointer dereference")._notes[_marker] = (((@:checkr _r ?? throw "null pointer dereference")._notes[_marker] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>>)).__append__((stdgo.Go.setRef(({ pos : @:check2r _list[(0 : stdgo.GoInt)].pos(), end : @:check2r _list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end(), uID : (_text.__slice__(_m[(4 : stdgo.GoInt)], _m[(5 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__(), body : _body?.__copy__() } : stdgo._internal.go.doc.Doc_note.Note)) : stdgo.Ref<stdgo._internal.go.doc.Doc_note.Note>)));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readFunc( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _fun:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _fun ?? throw "null pointer dereference").body = null;
        };
        if (((@:checkr _fun ?? throw "null pointer dereference").recv != null && (((@:checkr _fun ?? throw "null pointer dereference").recv : Dynamic).__nil__ == null || !((@:checkr _fun ?? throw "null pointer dereference").recv : Dynamic).__nil__))) {
            if (((@:checkr (@:checkr _fun ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list.length) == ((0 : stdgo.GoInt))) {
                return;
            };
            var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName((@:checkr (@:checkr (@:checkr _fun ?? throw "null pointer dereference").recv ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type), _recvTypeName:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
            if (_imp) {
                return;
            };
            {
                var _typ = @:check2r _r._lookupType(_recvTypeName?.__copy__());
                if ((_typ != null && ((_typ : Dynamic).__nil__ == null || !(_typ : Dynamic).__nil__))) {
                    (@:checkr _typ ?? throw "null pointer dereference")._methods._set(_fun, ((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode)));
                };
            };
            return;
        };
        if ((@:check2r (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results.numFields() >= (1 : stdgo.GoInt) : Bool)) {
            var _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> = (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
            var _numResultTypes = (0 : stdgo.GoInt);
            for (__0 => _res in (@:checkr (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").results ?? throw "null pointer dereference").list) {
                var _factoryType = ((@:checkr _res ?? throw "null pointer dereference").type : stdgo._internal.go.ast.Ast_expr.Expr);
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_factoryType) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>), _1 : false };
                    }, _t = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _factoryType = (@:checkr _t ?? throw "null pointer dereference").elt;
                    };
                };
                {
                    var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName(_factoryType), _n:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
                    if (((!_imp && @:check2r _r._isVisible(_n?.__copy__()) : Bool) && !@:check2r _r._isPredeclared(_n?.__copy__()) : Bool)) {
                        if ((stdgo._internal.go.doc.Doc__lookuptypeparam._lookupTypeParam(_n?.__copy__(), (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams) != null && ((stdgo._internal.go.doc.Doc__lookuptypeparam._lookupTypeParam(_n?.__copy__(), (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams) : Dynamic).__nil__ == null || !(stdgo._internal.go.doc.Doc__lookuptypeparam._lookupTypeParam(_n?.__copy__(), (@:checkr (@:checkr _fun ?? throw "null pointer dereference").type ?? throw "null pointer dereference").typeParams) : Dynamic).__nil__))) {
                            continue;
                        };
                        {
                            var _t = @:check2r _r._lookupType(_n?.__copy__());
                            if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                                _typ = _t;
                                _numResultTypes++;
                                if ((_numResultTypes > (1 : stdgo.GoInt) : Bool)) {
                                    break;
                                };
                            };
                        };
                    };
                };
            };
            if (_numResultTypes == ((1 : stdgo.GoInt))) {
                (@:checkr _typ ?? throw "null pointer dereference")._funcs._set(_fun, ((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode)));
                return;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._funcs._set(_fun, ((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != ((0 : stdgo._internal.go.doc.Doc_mode.Mode)));
    }
    @:keep
    @:tdfield
    static public function _isPredeclared( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _n:stdgo.GoString):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        return ((stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_n] ?? false) && (((@:checkr _r ?? throw "null pointer dereference")._types[_n] ?? (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>)) == null || ((@:checkr _r ?? throw "null pointer dereference")._types[_n] ?? (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>) : Dynamic).__nil__) : Bool);
    }
    @:keep
    @:tdfield
    static public function _readType( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>, _spec:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _typ = @:check2r _r._lookupType((@:checkr (@:checkr _spec ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__());
        if ((_typ == null || (_typ : Dynamic).__nil__)) {
            return;
        };
        (@:checkr _typ ?? throw "null pointer dereference")._decl = _decl;
        var _doc = (@:checkr _spec ?? throw "null pointer dereference").doc;
        if ((_doc == null || (_doc : Dynamic).__nil__)) {
            _doc = (@:checkr _decl ?? throw "null pointer dereference").doc;
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _spec ?? throw "null pointer dereference").doc = null;
            (@:checkr _decl ?? throw "null pointer dereference").doc = null;
        };
        (@:checkr _typ ?? throw "null pointer dereference")._doc = @:check2r _doc.text()?.__copy__();
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        {
            var __tmp__ = stdgo._internal.go.doc.Doc__fields._fields((@:checkr _spec ?? throw "null pointer dereference").type);
            _list = @:tmpset0 __tmp__._0;
            (@:checkr _typ ?? throw "null pointer dereference")._isStruct = @:tmpset0 __tmp__._1;
        };
        for (__0 => _field in _list) {
            if (((@:checkr _field ?? throw "null pointer dereference").names.length) == ((0 : stdgo.GoInt))) {
                @:check2r _r._recordAnonymousField(_typ, (@:checkr _field ?? throw "null pointer dereference").type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readValue( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _decl:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _domName = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _domFreq = (0 : stdgo.GoInt);
        var _prev = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _n = (0 : stdgo.GoInt);
        for (__0 => _spec in (@:checkr _decl ?? throw "null pointer dereference").specs) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                continue;
            };
            var _name = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if ((@:checkr _s ?? throw "null pointer dereference").type != null) {
                {
                    var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName((@:checkr _s ?? throw "null pointer dereference").type), _n:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
                    if (!_imp) {
                        _name = _n?.__copy__();
                    };
                };
            } else if ((((@:checkr _decl ?? throw "null pointer dereference").tok == (64 : stdgo._internal.go.token.Token_token.Token)) && ((@:checkr _s ?? throw "null pointer dereference").values.length == (0 : stdgo.GoInt)) : Bool)) {
                _name = _prev?.__copy__();
            };
            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                if (((_domName != (stdgo.Go.str() : stdgo.GoString)) && (_domName != _name) : Bool)) {
                    _domName = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    break;
                };
                _domName = _name?.__copy__();
                _domFreq++;
            };
            _prev = _name?.__copy__();
            _n++;
        };
        if (_n == ((0 : stdgo.GoInt))) {
            return;
        };
        var _values = (stdgo.Go.setRef((@:checkr _r ?? throw "null pointer dereference")._values) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>>);
        {};
        if (((_domName != ((stdgo.Go.str() : stdgo.GoString)) && @:check2r _r._isVisible(_domName?.__copy__()) : Bool) && (_domFreq >= ((((@:checkr _decl ?? throw "null pointer dereference").specs.length : stdgo.GoFloat64) * (0.75 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoInt) : Bool) : Bool)) {
            {
                var _typ = @:check2r _r._lookupType(_domName?.__copy__());
                if ((_typ != null && ((_typ : Dynamic).__nil__ == null || !(_typ : Dynamic).__nil__))) {
                    _values = (stdgo.Go.setRef((@:checkr _typ ?? throw "null pointer dereference")._values) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>>);
                };
            };
        };
        (_values : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>).__setData__(((_values : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>).__append__((stdgo.Go.setRef(({ doc : @:check2r (@:checkr _decl ?? throw "null pointer dereference").doc.text()?.__copy__(), names : stdgo._internal.go.doc.Doc__specnames._specNames((@:checkr _decl ?? throw "null pointer dereference").specs), decl : _decl, _order : (@:checkr _r ?? throw "null pointer dereference")._order } : stdgo._internal.go.doc.Doc_value.Value)) : stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>))));
        if (((@:checkr _r ?? throw "null pointer dereference")._mode & (4 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) == ((0 : stdgo._internal.go.doc.Doc_mode.Mode))) {
            (@:checkr _decl ?? throw "null pointer dereference").doc = null;
        };
        (@:checkr _r ?? throw "null pointer dereference")._order++;
    }
    @:keep
    @:tdfield
    static public function _remember( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _predecl:stdgo.GoString, _typ:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._fixmap == null) {
            (@:checkr _r ?? throw "null pointer dereference")._fixmap = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>>);
        };
        (@:checkr _r ?? throw "null pointer dereference")._fixmap[_predecl] = (((@:checkr _r ?? throw "null pointer dereference")._fixmap[_predecl] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>>)).__append__(_typ));
    }
    @:keep
    @:tdfield
    static public function _readDoc( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _text = (@:check2r _comment.text()?.__copy__() : stdgo.GoString);
        if ((@:checkr _r ?? throw "null pointer dereference")._doc == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _r ?? throw "null pointer dereference")._doc = _text?.__copy__();
            return;
        };
        (@:checkr _r ?? throw "null pointer dereference")._doc = ((@:checkr _r ?? throw "null pointer dereference")._doc + ((("\n" : stdgo.GoString) + _text?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function _recordAnonymousField( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _fieldType:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _fname = ("" : stdgo.GoString);
        var __tmp__ = stdgo._internal.go.doc.Doc__basetypename._baseTypeName(_fieldType), _fname:stdgo.GoString = __tmp__._0, _imp:Bool = __tmp__._1;
        if (((_parent == null || (_parent : Dynamic).__nil__) || _imp : Bool)) {
            return _fname;
        };
        {
            var _ftype = @:check2r _r._lookupType(_fname?.__copy__());
            if ((_ftype != null && ((_ftype : Dynamic).__nil__ == null || !(_ftype : Dynamic).__nil__))) {
                (@:checkr _ftype ?? throw "null pointer dereference")._isEmbedded = true;
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_fieldType) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>), _1 : false };
                }, __0 = __tmp__._0, _ptr = __tmp__._1;
                (@:checkr _parent ?? throw "null pointer dereference")._embedded[_ftype] = _ptr;
            };
        };
        return _fname;
    }
    @:keep
    @:tdfield
    static public function _lookupType( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        if (((_name == (stdgo.Go.str() : stdgo.GoString)) || (_name == ("_" : stdgo.GoString)) : Bool)) {
            return null;
        };
        {
            var __tmp__ = ((@:checkr _r ?? throw "null pointer dereference")._types != null && (@:checkr _r ?? throw "null pointer dereference")._types.exists(_name?.__copy__()) ? { _0 : (@:checkr _r ?? throw "null pointer dereference")._types[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>), _1 : false }), _typ:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType> = __tmp__._0, _found:Bool = __tmp__._1;
            if (_found) {
                return _typ;
            };
        };
        var _typ = (stdgo.Go.setRef(({ _name : _name?.__copy__(), _embedded : (({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, Bool>) : stdgo._internal.go.doc.Doc_t_embeddedset.T_embeddedSet), _funcs : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>) : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet), _methods : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>) : stdgo._internal.go.doc.Doc_t_methodset.T_methodSet) } : stdgo._internal.go.doc.Doc_t_namedtype.T_namedType)) : stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>);
        (@:checkr _r ?? throw "null pointer dereference")._types[_name] = _typ;
        return _typ;
    }
    @:keep
    @:tdfield
    static public function _isVisible( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _name:stdgo.GoString):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        return ((((@:checkr _r ?? throw "null pointer dereference")._mode & (1 : stdgo._internal.go.doc.Doc_mode.Mode) : stdgo._internal.go.doc.Doc_mode.Mode) != (0 : stdgo._internal.go.doc.Doc_mode.Mode)) || stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__()) : Bool);
    }
    @:keep
    @:tdfield
    static public function _fileExports( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _j = (0 : stdgo.GoInt);
        for (__0 => _d in (@:checkr _src ?? throw "null pointer dereference").decls) {
            if (@:check2r _r._filterDecl(_d)) {
                (@:checkr _src ?? throw "null pointer dereference").decls[(_j : stdgo.GoInt)] = _d;
                _j++;
            };
        };
        (@:checkr _src ?? throw "null pointer dereference").decls = ((@:checkr _src ?? throw "null pointer dereference").decls.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>);
    }
    @:keep
    @:tdfield
    static public function _filterDecl( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _decl:stdgo._internal.go.ast.Ast_decl.Decl):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        {
            final __type__ = _decl;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) : __type__.__underlying__().value;
                (@:checkr _d ?? throw "null pointer dereference").specs = @:check2r _r._filterSpecList((@:checkr _d ?? throw "null pointer dereference").specs, (@:checkr _d ?? throw "null pointer dereference").tok);
                return (((@:checkr _d ?? throw "null pointer dereference").specs.length) > (0 : stdgo.GoInt) : Bool);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))) {
                var _d:stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) : __type__.__underlying__().value;
                return stdgo._internal.go.token.Token_isexported.isExported((@:checkr (@:checkr _d ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__());
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _filterSpecList( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        if (_tok == ((64 : stdgo._internal.go.token.Token_token.Token))) {
            var _prevType:stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
            for (__0 => _spec in _list) {
                var _spec = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_spec) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
                if ((((@:checkr _spec ?? throw "null pointer dereference").type == null && ((@:checkr _spec ?? throw "null pointer dereference").values.length) == ((0 : stdgo.GoInt)) : Bool) && (_prevType != null) : Bool)) {
                    (@:checkr _spec ?? throw "null pointer dereference").type = stdgo._internal.go.doc.Doc__copyconsttype._copyConstType(_prevType, @:check2r _spec.pos());
                };
                if (stdgo._internal.go.doc.Doc__hasexportedname._hasExportedName((@:checkr _spec ?? throw "null pointer dereference").names)) {
                    _prevType = (null : stdgo._internal.go.ast.Ast_expr.Expr);
                } else {
                    _prevType = (@:checkr _spec ?? throw "null pointer dereference").type;
                };
            };
        };
        var _j = (0 : stdgo.GoInt);
        for (__0 => _s in _list) {
            if (@:check2r _r._filterSpec(_s)) {
                _list[(_j : stdgo.GoInt)] = _s;
                _j++;
            };
        };
        return (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
    }
    @:keep
    @:tdfield
    static public function _filterSpec( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _spec:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        {
            final __type__ = _spec;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>) : __type__.__underlying__().value;
                return true;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) : __type__.__underlying__().value;
                (@:checkr _s ?? throw "null pointer dereference").values = stdgo._internal.go.doc.Doc__filterexprlist._filterExprList((@:checkr _s ?? throw "null pointer dereference").values, stdgo._internal.go.token.Token_isexported.isExported, true);
                if (((((@:checkr _s ?? throw "null pointer dereference").values.length) > (0 : stdgo.GoInt) : Bool) || ((@:checkr _s ?? throw "null pointer dereference").type == null && ((@:checkr _s ?? throw "null pointer dereference").values.length) == ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    if (stdgo._internal.go.doc.Doc__updateidentlist._updateIdentList((@:checkr _s ?? throw "null pointer dereference").names)) {
                        @:check2r _r._filterType(null, (@:checkr _s ?? throw "null pointer dereference").type);
                        return true;
                    };
                } else {
                    (@:checkr _s ?? throw "null pointer dereference").names = stdgo._internal.go.doc.Doc__filteridentlist._filterIdentList((@:checkr _s ?? throw "null pointer dereference").names);
                    if ((((@:checkr _s ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _r._filterType(null, (@:checkr _s ?? throw "null pointer dereference").type);
                        return true;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typespec.TypeSpec>) : __type__.__underlying__().value;
                {
                    var _name = ((@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                    if (stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__())) {
                        @:check2r _r._filterType(@:check2r _r._lookupType((@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__()), (@:checkr _s ?? throw "null pointer dereference").type);
                        return true;
                    } else if (stdgo._internal.go.doc.Doc_ispredeclared.isPredeclared(_name?.__copy__())) {
                        if ((@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl == null) {
                            (@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl = (({
                                final x = new stdgo.GoMap.GoStringMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                        };
                        (@:checkr _r ?? throw "null pointer dereference")._shadowedPredecl[_name] = true;
                    };
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _filterType( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _typ:stdgo._internal.go.ast.Ast_expr.Expr):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        {
            final __type__ = _typ;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>) : __type__.__underlying__().value;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_parenexpr.ParenExpr>) : __type__.__underlying__().value;
                @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_starexpr.StarExpr>) : __type__.__underlying__().value;
                @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>) : __type__.__underlying__().value;
                if ((@:checkr _t ?? throw "null pointer dereference").op == ((88 : stdgo._internal.go.token.Token_token.Token))) {
                    @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>) : __type__.__underlying__().value;
                if ((@:checkr _t ?? throw "null pointer dereference").op == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                    @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").x);
                    @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").y);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_arraytype.ArrayType>) : __type__.__underlying__().value;
                @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").elt);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_structtype.StructType>) : __type__.__underlying__().value;
                if (@:check2r _r._filterFieldList(_parent, (@:checkr _t ?? throw "null pointer dereference").fields, null)) {
                    (@:checkr _t ?? throw "null pointer dereference").incomplete = true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) : __type__.__underlying__().value;
                @:check2r _r._filterParamList((@:checkr _t ?? throw "null pointer dereference").typeParams);
                @:check2r _r._filterParamList((@:checkr _t ?? throw "null pointer dereference").params);
                @:check2r _r._filterParamList((@:checkr _t ?? throw "null pointer dereference").results);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>) : __type__.__underlying__().value;
                if (@:check2r _r._filterFieldList(_parent, (@:checkr _t ?? throw "null pointer dereference").methods, _t)) {
                    (@:checkr _t ?? throw "null pointer dereference").incomplete = true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_maptype.MapType>) : __type__.__underlying__().value;
                @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").key);
                @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").value);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>))) {
                var _t:stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_chantype.ChanType>) : __type__.__underlying__().value;
                @:check2r _r._filterType(null, (@:checkr _t ?? throw "null pointer dereference").value);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _filterParamList( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        if ((_fields != null && ((_fields : Dynamic).__nil__ == null || !(_fields : Dynamic).__nil__))) {
            for (__0 => _f in (@:checkr _fields ?? throw "null pointer dereference").list) {
                @:check2r _r._filterType(null, (@:checkr _f ?? throw "null pointer dereference").type);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _filterFieldList( _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader>, _parent:stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>, _fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _ityp:stdgo.Ref<stdgo._internal.go.ast.Ast_interfacetype.InterfaceType>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.doc.Doc_t_reader.T_reader> = _r;
        var _removedFields = false;
        if ((_fields == null || (_fields : Dynamic).__nil__)) {
            return _removedFields;
        };
        var _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        var _j = (0 : stdgo.GoInt);
        for (__0 => _field in _list) {
            var _keepField = (false : Bool);
            {
                var _n = ((@:checkr _field ?? throw "null pointer dereference").names.length : stdgo.GoInt);
                if (_n == ((0 : stdgo.GoInt))) {
                    var _fname = (@:check2r _r._recordAnonymousField(_parent, (@:checkr _field ?? throw "null pointer dereference").type)?.__copy__() : stdgo.GoString);
                    if (_fname != ((stdgo.Go.str() : stdgo.GoString))) {
                        if (stdgo._internal.go.token.Token_isexported.isExported(_fname?.__copy__())) {
                            _keepField = true;
                        } else if (((_ityp != null && ((_ityp : Dynamic).__nil__ == null || !(_ityp : Dynamic).__nil__)) && (stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_fname] ?? false) : Bool)) {
                            _keepField = true;
                            @:check2r _r._remember(_fname?.__copy__(), _ityp);
                        };
                    } else {
                        _keepField = (_ityp != null && ((_ityp : Dynamic).__nil__ == null || !(_ityp : Dynamic).__nil__));
                    };
                } else {
                    (@:checkr _field ?? throw "null pointer dereference").names = stdgo._internal.go.doc.Doc__filteridentlist._filterIdentList((@:checkr _field ?? throw "null pointer dereference").names);
                    if ((((@:checkr _field ?? throw "null pointer dereference").names.length) < _n : Bool)) {
                        _removedFields = true;
                    };
                    if ((((@:checkr _field ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                        _keepField = true;
                    };
                };
            };
            if (_keepField) {
                @:check2r _r._filterType(null, (@:checkr _field ?? throw "null pointer dereference").type);
                _list[(_j : stdgo.GoInt)] = _field;
                _j++;
            };
        };
        if ((_j < (_list.length) : Bool)) {
            _removedFields = true;
        };
        (@:checkr _fields ?? throw "null pointer dereference").list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        return _removedFields;
    }
}
