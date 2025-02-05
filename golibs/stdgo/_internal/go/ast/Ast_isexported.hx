package stdgo._internal.go.ast;
function isExported(_name:stdgo.GoString):Bool {
        return stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__());
    }
