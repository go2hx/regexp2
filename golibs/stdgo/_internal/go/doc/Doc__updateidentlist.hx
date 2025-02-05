package stdgo._internal.go.doc;
function _updateIdentList(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Bool {
        var _hasExported = false;
        for (_i => _x in _list) {
            if (stdgo._internal.go.token.Token_isexported.isExported((@:checkr _x ?? throw "null pointer dereference").name?.__copy__())) {
                _hasExported = true;
            } else {
                _list[(_i : stdgo.GoInt)] = stdgo._internal.go.doc.Doc__underscore._underscore;
            };
        };
        return _hasExported;
    }
