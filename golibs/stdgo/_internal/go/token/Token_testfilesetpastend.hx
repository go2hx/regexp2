package stdgo._internal.go.token;
function testFileSetPastEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        for (__4 => _test in stdgo._internal.go.token.Token__tests._tests) {
            @:check2r _fset.addFile(_test._filename?.__copy__(), @:check2r _fset.base(), _test._size);
        };
        {
            var _f = @:check2r _fset.file((@:check2r _fset.base() : stdgo._internal.go.token.Token_pos.Pos));
            if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                @:check2r _t.errorf(("got %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            };
        };
    }
