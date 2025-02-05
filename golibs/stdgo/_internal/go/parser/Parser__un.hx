package stdgo._internal.go.parser;
function _un(_p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):Void {
        (@:checkr _p ?? throw "null pointer dereference")._indent--;
        @:check2r _p._printTrace(stdgo.Go.toInterface((")" : stdgo.GoString)));
    }
