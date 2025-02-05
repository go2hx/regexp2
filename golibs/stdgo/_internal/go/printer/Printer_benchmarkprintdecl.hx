package stdgo._internal.go.printer;
function benchmarkPrintDecl(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        if (stdgo._internal.go.printer.Printer__declnode._declNode == null) {
            stdgo._internal.go.printer.Printer__initialize._initialize();
        };
        @:check2r _b.reportAllocs();
        @:check2r _b.setBytes(stdgo._internal.go.printer.Printer__declsize._declSize);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.go.printer.Printer__testprint._testprint(stdgo._internal.io.Io_discard.discard, stdgo._internal.go.printer.Printer__declnode._declNode);
                _i++;
            };
        };
    }
