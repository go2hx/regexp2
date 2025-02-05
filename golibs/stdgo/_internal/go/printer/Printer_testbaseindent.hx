package stdgo._internal.go.printer;
function testBaseIndent(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
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
            var _indent = (0 : stdgo.GoInt);
            while ((_indent < (4 : stdgo.GoInt) : Bool)) {
                var _indent = (_indent : stdgo.GoInt);
@:check2r _t.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_indent)).__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                    @:check2r _t.parallel();
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    @:check2r (stdgo.Go.setRef(({ tabwidth : (8 : stdgo.GoInt), indent : _indent } : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>).fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file)));
                    var _lines = stdgo._internal.bytes.Bytes_split.split(@:check2 _buf.bytes(), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(10 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                    for (_i => _line in _lines) {
                        if ((_line.length) == ((0 : stdgo.GoInt))) {
                            continue;
                        };
                        var _n = (0 : stdgo.GoInt);
                        for (_j => _b in _line) {
                            if (_b != ((9 : stdgo.GoUInt8))) {
                                _n = _j;
                                break;
                            };
                        };
                        if ((_n < _indent : Bool)) {
                            @:check2r _t.errorf(("line %d: got only %d tabs; want at least %d: %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_indent), stdgo.Go.toInterface(_line));
                        };
                    };
                });
                _indent++;
            };
        };
    }
