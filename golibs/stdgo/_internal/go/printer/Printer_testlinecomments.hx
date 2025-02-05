package stdgo._internal.go.printer;
function testLineComments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("// comment 1\n\t// comment 2\n\t// comment 3\n\tpackage main\n\t" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        var _nlines = (0 : stdgo.GoInt);
        for (__0 => _ch in @:check2 _buf.bytes()) {
            if (_ch == ((10 : stdgo.GoUInt8))) {
                _nlines++;
            };
        };
        {};
        if ((_nlines < (3 : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("got %d, expected %d\n" : stdgo.GoString), stdgo.Go.toInterface(_nlines), stdgo.Go.toInterface((3 : stdgo.GoInt)));
            @:check2r _t.errorf(("result:\n%s" : stdgo.GoString), stdgo.Go.toInterface(@:check2 _buf.bytes()));
        };
    }
