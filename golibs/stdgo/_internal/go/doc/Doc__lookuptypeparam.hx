package stdgo._internal.go.doc;
function _lookupTypeParam(_name:stdgo.GoString, _tparams:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        if ((_tparams == null || (_tparams : Dynamic).__nil__)) {
            return null;
        };
        for (__0 => _field in (@:checkr _tparams ?? throw "null pointer dereference").list) {
            for (__1 => _id in (@:checkr _field ?? throw "null pointer dereference").names) {
                if ((@:checkr _id ?? throw "null pointer dereference").name == (_name)) {
                    return _id;
                };
            };
        };
        return null;
    }
