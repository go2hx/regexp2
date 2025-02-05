package stdgo._internal.go.printer;
function testBadNodes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("package p\n(" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected illegal program" : stdgo.GoString)));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        if ((@:check2 _buf.string() : stdgo.GoString) != (("package p\nBadDecl\n" : stdgo.GoString))) {
            @:check2r _t.errorf(("got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("package p\nBadDecl\n" : stdgo.GoString)));
        };
    }
