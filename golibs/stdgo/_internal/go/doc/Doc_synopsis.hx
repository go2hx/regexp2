package stdgo._internal.go.doc;
function synopsis(_text:stdgo.GoString):stdgo.GoString {
        var _p:stdgo._internal.go.doc.Doc_package.Package = ({} : stdgo._internal.go.doc.Doc_package.Package);
        return @:check2 _p.synopsis(_text?.__copy__())?.__copy__();
    }
