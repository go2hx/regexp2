package stdgo._internal.go.parser;
function _decNestLev(_p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):Void {
        (@:checkr _p ?? throw "null pointer dereference")._nestLev--;
    }
