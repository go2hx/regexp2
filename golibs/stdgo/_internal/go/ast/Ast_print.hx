package stdgo._internal.go.ast;
function print(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _x:stdgo.AnyInterface):stdgo.Error {
        return stdgo._internal.go.ast.Ast_fprint.fprint(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout), _fset, _x, stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter);
    }
