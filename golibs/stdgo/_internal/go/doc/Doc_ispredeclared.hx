package stdgo._internal.go.doc;
function isPredeclared(_s:stdgo.GoString):Bool {
        return (((stdgo._internal.go.doc.Doc__predeclaredtypes._predeclaredTypes[_s] ?? false) || (stdgo._internal.go.doc.Doc__predeclaredfuncs._predeclaredFuncs[_s] ?? false) : Bool) || (stdgo._internal.go.doc.Doc__predeclaredconstants._predeclaredConstants[_s] ?? false) : Bool);
    }
