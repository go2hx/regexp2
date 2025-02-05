package stdgo._internal.go.printer;
function _identCount(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (_ => _ in stdgo._internal.go.printer.Printer__idents._idents(_f)) {
            _n++;
        };
        return _n;
    }
