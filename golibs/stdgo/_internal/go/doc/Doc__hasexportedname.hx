package stdgo._internal.go.doc;
function _hasExportedName(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Bool {
        for (__0 => _x in _list) {
            if (@:check2r _x.isExported()) {
                return true;
            };
        };
        return false;
    }
