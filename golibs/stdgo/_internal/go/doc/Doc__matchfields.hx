package stdgo._internal.go.doc;
function _matchFields(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _f:stdgo._internal.go.doc.Doc_filter.Filter):Bool {
        if ((_fields != null && ((_fields : Dynamic).__nil__ == null || !(_fields : Dynamic).__nil__))) {
            for (__0 => _field in (@:checkr _fields ?? throw "null pointer dereference").list) {
                for (__1 => _name in (@:checkr _field ?? throw "null pointer dereference").names) {
                    if (_f((@:checkr _name ?? throw "null pointer dereference").name?.__copy__())) {
                        return true;
                    };
                };
            };
        };
        return false;
    }
