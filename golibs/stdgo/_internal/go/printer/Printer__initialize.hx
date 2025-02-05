package stdgo._internal.go.printer;
function _initialize():Void {
        {};
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("testdata/parser.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatalf.fatalf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, ("testdata/parser.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatalf.fatalf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        stdgo._internal.go.printer.Printer__testprint._testprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo.Go.asInterface(_file));
        if (!stdgo._internal.bytes.Bytes_equal.equal(@:check2 _buf.bytes(), _src)) {
            stdgo._internal.log.Log_fatalf.fatalf(("print error: %s not idempotent" : stdgo.GoString), stdgo.Go.toInterface(("testdata/parser.go" : stdgo.GoString)));
        };
        stdgo._internal.go.printer.Printer__filenode._fileNode = _file;
        stdgo._internal.go.printer.Printer__filesize._fileSize = (_src.length : stdgo.GoInt64);
        for (__0 => _decl in (@:checkr _file ?? throw "null pointer dereference").decls) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
                }, _decl = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((@:checkr _decl ?? throw "null pointer dereference").tok == (85 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                    stdgo._internal.go.printer.Printer__declnode._declNode = stdgo.Go.asInterface(_decl);
                    stdgo._internal.go.printer.Printer__declsize._declSize = ((@:check2r stdgo._internal.go.printer.Printer__fset._fset.position(@:check2r _decl.end()).offset - @:check2r stdgo._internal.go.printer.Printer__fset._fset.position(@:check2r _decl.pos()).offset : stdgo.GoInt) : stdgo.GoInt64);
                    break;
                };
            };
        };
    }
