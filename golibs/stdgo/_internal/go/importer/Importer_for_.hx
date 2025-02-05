package stdgo._internal.go.importer;
function for_(_compiler:stdgo.GoString, _lookup:stdgo._internal.go.importer.Importer_lookup.Lookup):stdgo._internal.go.types.Types_importer.Importer {
        return stdgo._internal.go.importer.Importer_forcompiler.forCompiler(stdgo._internal.go.token.Token_newfileset.newFileSet(), _compiler?.__copy__(), _lookup);
    }
