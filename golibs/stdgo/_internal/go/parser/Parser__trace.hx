package stdgo._internal.go.parser;
function _trace(_p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>, _msg:stdgo.GoString):stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> {
        @:check2r _p._printTrace(stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(("(" : stdgo.GoString)));
        (@:checkr _p ?? throw "null pointer dereference")._indent++;
        return _p;
    }
