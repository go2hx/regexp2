package stdgo._internal.go.token;
function testPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        for (__4 => _test in stdgo._internal.go.token.Token__tests._tests) {
            if (((_test._source != null) && (_test._source.length != _test._size) : Bool)) {
                @:check2r _t.errorf(("%s: inconsistent test case: got file size %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._filename), stdgo.Go.toInterface((_test._source.length)), stdgo.Go.toInterface(_test._size));
            };
            var _f = @:check2r _fset.addFile(_test._filename?.__copy__(), (@:check2r _fset.base() + (7 : stdgo.GoInt) : stdgo.GoInt), _test._size);
            if (@:check2r _f.name() != (_test._filename)) {
                @:check2r _t.errorf(("got filename %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(_test._filename));
            };
            if (@:check2r _f.size() != (_test._size)) {
                @:check2r _t.errorf(("%s: got file size %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(@:check2r _f.size()), stdgo.Go.toInterface(_test._size));
            };
            if (@:check2r _fset.file(@:check2r _f.pos((0 : stdgo.GoInt))) != (_f)) {
                @:check2r _t.errorf(("%s: f.Pos(0) was not found in f" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()));
            };
            for (_i => _offset in _test._lines) {
                @:check2r _f.addLine(_offset);
                if (@:check2r _f.lineCount() != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    @:check2r _t.errorf(("%s, AddLine: got line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(@:check2r _f.lineCount()), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                };
                @:check2r _f.addLine(_offset);
                if (@:check2r _f.lineCount() != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    @:check2r _t.errorf(("%s, AddLine: got unchanged line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(@:check2r _f.lineCount()), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                };
                stdgo._internal.go.token.Token__verifypositions._verifyPositions(_t, _fset, _f, (_test._lines.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            };
            {
                var _ok = (@:check2r _f.setLines(_test._lines) : Bool);
                if (!_ok) {
                    @:check2r _t.errorf(("%s: SetLines failed" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()));
                };
            };
            if (@:check2r _f.lineCount() != ((_test._lines.length))) {
                @:check2r _t.errorf(("%s, SetLines: got line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(@:check2r _f.lineCount()), stdgo.Go.toInterface((_test._lines.length)));
            };
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(@:check2r _f.lines()), stdgo.Go.toInterface(_test._lines))) {
                @:check2r _t.errorf(("%s, Lines after SetLines(v): got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(@:check2r _f.lines()), stdgo.Go.toInterface(_test._lines));
            };
            stdgo._internal.go.token.Token__verifypositions._verifyPositions(_t, _fset, _f, _test._lines);
            var _src = _test._source;
            if (_src == null) {
                _src = stdgo._internal.go.token.Token__maketestsource._makeTestSource(_test._size, _test._lines);
            };
            @:check2r _f.setLinesForContent(_src);
            if (@:check2r _f.lineCount() != ((_test._lines.length))) {
                @:check2r _t.errorf(("%s, SetLinesForContent: got line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(@:check2r _f.lineCount()), stdgo.Go.toInterface((_test._lines.length)));
            };
            stdgo._internal.go.token.Token__verifypositions._verifyPositions(_t, _fset, _f, _test._lines);
        };
    }
