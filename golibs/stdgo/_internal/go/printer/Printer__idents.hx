package stdgo._internal.go.printer;
function _idents(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo.Chan<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        var _v = (new stdgo._internal.go.printer.Printer_t_visitor.T_visitor(0, () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo._internal.go.printer.Printer_t_visitor.T_visitor);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_v), stdgo.Go.asInterface(_f));
                if (_v != null) _v.__close__();
            };
            a();
        }));
        return _v;
    }
