package stdgo._internal.go.ast;
function _exportFilter(_name:stdgo.GoString):Bool {
        return stdgo._internal.go.ast.Ast_isexported.isExported(_name?.__copy__());
    }
