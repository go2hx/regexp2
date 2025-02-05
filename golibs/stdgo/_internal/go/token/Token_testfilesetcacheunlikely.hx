package stdgo._internal.go.token;
function testFileSetCacheUnlikely(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _offsets = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        for (__4 => _test in stdgo._internal.go.token.Token__tests._tests) {
            _offsets[_test._filename] = @:check2r _fset.base();
            @:check2r _fset.addFile(_test._filename?.__copy__(), @:check2r _fset.base(), _test._size);
        };
        for (_file => _pos in _offsets) {
            var _f = @:check2r _fset.file((_pos : stdgo._internal.go.token.Token_pos.Pos));
            if (@:check2r _f.name() != (_file)) {
                @:check2r _t.errorf(("got %q at position %d, want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_file));
            };
        };
    }
