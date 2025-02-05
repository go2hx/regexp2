package stdgo._internal.go.printer;
function testWriteErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        @:check2r _t.parallel();
        {};
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("printer.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, ("printer.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (20 : stdgo.GoInt) : Bool)) {
                var _lw = (stdgo.Go.setRef(({ _remaining : _i } : stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter)) : stdgo.Ref<stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter>);
var _err = (@:check2r (stdgo.Go.setRef(({ mode : (1u32 : stdgo._internal.go.printer.Printer_mode.Mode) } : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>).fprint(stdgo.Go.asInterface(_lw), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file))) : stdgo.Error);
if (((@:checkr _lw ?? throw "null pointer dereference")._errCount > (1 : stdgo.GoInt) : Bool)) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(("Writes continued after first error returned" : stdgo.GoString)));
                };
if (((@:checkr _lw ?? throw "null pointer dereference")._errCount != (0 : stdgo.GoInt)) != ((_err != null))) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(("Expected err when errCount != 0" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
