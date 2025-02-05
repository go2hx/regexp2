package stdgo._internal.go.printer;
function testStmtLists(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _src in stdgo._internal.go.printer.Printer__stmts._stmts) {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(((("package p; func _() {" : stdgo.GoString) + _src?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            _err = stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface((@:checkr (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _file ?? throw "null pointer dereference").decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>) ?? throw "null pointer dereference").body ?? throw "null pointer dereference").list));
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var _out = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_out != (_src)) {
                @:check2r _t.errorf(("\ngot : %q\nwant: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_src));
            };
        };
    }
