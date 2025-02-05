package stdgo._internal.go.printer;
function _sanitizeImportPath(_lit:stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>):stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit> {
        if ((@:checkr _lit ?? throw "null pointer dereference").kind != ((9 : stdgo._internal.go.token.Token_token.Token))) {
            return _lit;
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((@:checkr _lit ?? throw "null pointer dereference").value?.__copy__()), _s:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _lit;
        };
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return _lit;
        };
        {};
        for (__0 => _r in _s) {
            if (((!stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_r) || stdgo._internal.unicode.Unicode_isspace.isSpace(_r) : Bool) || stdgo._internal.strings.Strings_containsrune.containsRune(("!\"#$%&\'()*,:;<=>?[\\]^{|}`�" : stdgo.GoString), _r) : Bool)) {
                return _lit;
            };
        };
        _s = stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__();
        if (_s == ((@:checkr _lit ?? throw "null pointer dereference").value)) {
            return _lit;
        };
        return (stdgo.Go.setRef(({ valuePos : (@:checkr _lit ?? throw "null pointer dereference").valuePos, kind : (9 : stdgo._internal.go.token.Token_token.Token), value : _s?.__copy__() } : stdgo._internal.go.ast.Ast_basiclit.BasicLit)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
    }
