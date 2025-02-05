package stdgo._internal.go.build;
function _readGoInfo(_f:stdgo._internal.io.Io_reader.Reader, _info:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>):stdgo.Error {
        var _r = stdgo._internal.go.build.Build__newimportreader._newImportReader((@:checkr _info ?? throw "null pointer dereference")._name?.__copy__(), _f);
        @:check2r _r._readKeyword(("package" : stdgo.GoString));
        @:check2r _r._readIdent();
        while (@:check2r _r._peekByte(true) == ((105 : stdgo.GoUInt8))) {
            @:check2r _r._readKeyword(("import" : stdgo.GoString));
            if (@:check2r _r._peekByte(true) == ((40 : stdgo.GoUInt8))) {
                @:check2r _r._nextByte(false);
                while (((@:check2r _r._peekByte(true) != (41 : stdgo.GoUInt8)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                    @:check2r _r._readImport();
                };
                @:check2r _r._nextByte(false);
            } else {
                @:check2r _r._readImport();
            };
        };
        (@:checkr _info ?? throw "null pointer dereference")._header = (@:checkr _r ?? throw "null pointer dereference")._buf;
        if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            (@:checkr _info ?? throw "null pointer dereference")._header = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.go.build.Build__errsyntax._errSyntax))) {
            (@:checkr _r ?? throw "null pointer dereference")._err = (null : stdgo.Error);
            while ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                @:check2r _r._readByte();
            };
            (@:checkr _info ?? throw "null pointer dereference")._header = (@:checkr _r ?? throw "null pointer dereference")._buf;
        };
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            return (@:checkr _r ?? throw "null pointer dereference")._err;
        };
        if (((@:checkr _info ?? throw "null pointer dereference")._fset == null || ((@:checkr _info ?? throw "null pointer dereference")._fset : Dynamic).__nil__)) {
            return (null : stdgo.Error);
        };
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile((@:checkr _info ?? throw "null pointer dereference")._fset, (@:checkr _info ?? throw "null pointer dereference")._name?.__copy__(), stdgo.Go.toInterface((@:checkr _info ?? throw "null pointer dereference")._header), (6u32 : stdgo._internal.go.parser.Parser_mode.Mode));
            (@:checkr _info ?? throw "null pointer dereference")._parsed = @:tmpset0 __tmp__._0;
            (@:checkr _info ?? throw "null pointer dereference")._parseErr = @:tmpset0 __tmp__._1;
        };
        if ((@:checkr _info ?? throw "null pointer dereference")._parseErr != null) {
            return (null : stdgo.Error);
        };
        var _hasEmbed = (false : Bool);
        for (__80 => _decl in (@:checkr (@:checkr _info ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").decls) {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                continue;
            };
            for (__81 => _dspec in (@:checkr _d ?? throw "null pointer dereference").specs) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dspec) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>), _1 : false };
                }, _spec = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    continue;
                };
                var _quoted = ((@:checkr (@:checkr _spec ?? throw "null pointer dereference").path ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_quoted?.__copy__()), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("parser returned invalid quoted string: <%s>" : stdgo.GoString), stdgo.Go.toInterface(_quoted));
                };
                if (!stdgo._internal.go.build.Build__isvalidimport._isValidImport(_path?.__copy__())) {
                    (@:checkr _info ?? throw "null pointer dereference")._parseErr = stdgo.Go.asInterface(({ pos : @:check2r (@:checkr _info ?? throw "null pointer dereference")._fset.position(@:check2r _spec.pos())?.__copy__(), msg : (("invalid import path: " : stdgo.GoString) + _path?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_error.Error));
                    (@:checkr _info ?? throw "null pointer dereference")._imports = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileimport.T_fileImport>);
                    return (null : stdgo.Error);
                };
                if (_path == (("embed" : stdgo.GoString))) {
                    _hasEmbed = true;
                };
                var _doc = (@:checkr _spec ?? throw "null pointer dereference").doc;
                if (((_doc == null || (_doc : Dynamic).__nil__) && ((@:checkr _d ?? throw "null pointer dereference").specs.length == (1 : stdgo.GoInt)) : Bool)) {
                    _doc = (@:checkr _d ?? throw "null pointer dereference").doc;
                };
                (@:checkr _info ?? throw "null pointer dereference")._imports = ((@:checkr _info ?? throw "null pointer dereference")._imports.__append__((new stdgo._internal.go.build.Build_t_fileimport.T_fileImport(_path?.__copy__(), @:check2r _spec.pos(), _doc) : stdgo._internal.go.build.Build_t_fileimport.T_fileImport)));
            };
        };
        for (__89 => _group in (@:checkr (@:checkr _info ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").comments) {
            if ((@:check2r _group.pos() >= (@:checkr (@:checkr _info ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").package_ : Bool)) {
                break;
            };
            for (__98 => _c in (@:checkr _group ?? throw "null pointer dereference").list) {
                if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _c ?? throw "null pointer dereference").text?.__copy__(), ("//go:" : stdgo.GoString))) {
                    (@:checkr _info ?? throw "null pointer dereference")._directives = ((@:checkr _info ?? throw "null pointer dereference")._directives.__append__((new stdgo._internal.go.build.Build_directive.Directive((@:checkr _c ?? throw "null pointer dereference").text?.__copy__(), @:check2r (@:checkr _info ?? throw "null pointer dereference")._fset.position((@:checkr _c ?? throw "null pointer dereference").slash)?.__copy__()) : stdgo._internal.go.build.Build_directive.Directive)));
                };
            };
        };
        if (_hasEmbed) {
            var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _first = (true : Bool);
                while (@:check2r _r._findEmbed(_first)) {
                    _line = (_line.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
var _pos = ((@:checkr _r ?? throw "null pointer dereference")._pos.__copy__() : stdgo._internal.go.token.Token_position.Position);
while (true) {
                        var _c = (@:check2r _r._readByteNoBuf() : stdgo.GoUInt8);
                        if (((_c == ((10 : stdgo.GoUInt8)) || (@:checkr _r ?? throw "null pointer dereference")._err != null : Bool) || (@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                            break;
                        };
                        _line = (_line.__append__(_c));
                    };
var __tmp__ = stdgo._internal.go.build.Build__parsegoembed._parseGoEmbed((_line : stdgo.GoString).__copy__(), _pos.__copy__()), _embs:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err == null) {
                        (@:checkr _info ?? throw "null pointer dereference")._embeds = ((@:checkr _info ?? throw "null pointer dereference")._embeds.__append__(...(_embs : Array<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>)));
                    };
                    _first = false;
                };
            };
        };
        return (null : stdgo.Error);
    }
