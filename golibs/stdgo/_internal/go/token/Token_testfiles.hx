package stdgo._internal.go.token;
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        for (_i => _test in stdgo._internal.go.token.Token__tests._tests) {
            var _base = (@:check2r _fset.base() : stdgo.GoInt);
            if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _base = (-1 : stdgo.GoInt);
            };
            @:check2r _fset.addFile(_test._filename?.__copy__(), _base, _test._size);
            var _j = (0 : stdgo.GoInt);
            @:check2r _fset.iterate(function(_f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Bool {
                if (@:check2r _f.name() != (stdgo._internal.go.token.Token__tests._tests[(_j : stdgo.GoInt)]._filename)) {
                    @:check2r _t.errorf(("got filename = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(stdgo._internal.go.token.Token__tests._tests[(_j : stdgo.GoInt)]._filename));
                };
                _j++;
                return true;
            });
            if (_j != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                @:check2r _t.errorf(("got %d files; want %d" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
            };
        };
    }
