package stdgo._internal.go.printer;
function benchmarkPrintFile(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        if ((stdgo._internal.go.printer.Printer__filenode._fileNode == null || (stdgo._internal.go.printer.Printer__filenode._fileNode : Dynamic).__nil__)) {
            stdgo._internal.go.printer.Printer__initialize._initialize();
        };
        @:check2r _b.reportAllocs();
        @:check2r _b.setBytes(stdgo._internal.go.printer.Printer__filesize._fileSize);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.go.printer.Printer__testprint._testprint(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(stdgo._internal.go.printer.Printer__filenode._fileNode));
                _i++;
            };
        };
    }
