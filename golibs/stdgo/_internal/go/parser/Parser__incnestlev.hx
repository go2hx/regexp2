package stdgo._internal.go.parser;
function _incNestLev(_p:stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser>):stdgo.Ref<stdgo._internal.go.parser.Parser_t_parser.T_parser> {
        (@:checkr _p ?? throw "null pointer dereference")._nestLev++;
        if (((@:checkr _p ?? throw "null pointer dereference")._nestLev > (100000 : stdgo.GoInt) : Bool)) {
            @:check2r _p._error((@:checkr _p ?? throw "null pointer dereference")._pos, ("exceeded max nesting depth" : stdgo.GoString));
            throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.parser.Parser_t_bailout.T_bailout() : stdgo._internal.go.parser.Parser_t_bailout.T_bailout)));
        };
        return _p;
    }
