package stdgo._internal.go.printer;
function testX(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var __tmp__ = stdgo._internal.go.printer.Printer__format._format(((("\npackage p\nfunc _() {}\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (0u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(_err));
        };
    }
