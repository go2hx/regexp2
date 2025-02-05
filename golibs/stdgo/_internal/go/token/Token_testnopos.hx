package stdgo._internal.go.token;
function testNoPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if ((0 : stdgo._internal.go.token.Token_pos.Pos).isValid()) {
            @:check2r _t.errorf(("NoPos should not be valid" : stdgo.GoString));
        };
        var _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("nil NoPos" : stdgo.GoString), @:check2r _fset.position((0 : stdgo._internal.go.token.Token_pos.Pos))?.__copy__(), (new stdgo._internal.go.token.Token_position.Position() : stdgo._internal.go.token.Token_position.Position));
        _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        stdgo._internal.go.token.Token__checkpos._checkPos(_t, ("fset NoPos" : stdgo.GoString), @:check2r _fset.position((0 : stdgo._internal.go.token.Token_pos.Pos))?.__copy__(), (new stdgo._internal.go.token.Token_position.Position() : stdgo._internal.go.token.Token_position.Position));
    }
