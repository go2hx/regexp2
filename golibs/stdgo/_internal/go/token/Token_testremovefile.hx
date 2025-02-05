package stdgo._internal.go.token;
function testRemoveFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _contentA = ((("this\nis\nfileA" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _contentB = ((("this\nis\nfileB" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _a = @:check2r _fset.addFile(("fileA" : stdgo.GoString), (-1 : stdgo.GoInt), (_contentA.length));
        @:check2r _a.setLinesForContent(_contentA);
        var _b = @:check2r _fset.addFile(("fileB" : stdgo.GoString), (-1 : stdgo.GoInt), (_contentB.length));
        @:check2r _b.setLinesForContent(_contentB);
        var _checkPos = (function(_pos:stdgo._internal.go.token.Token_pos.Pos, _want:stdgo.GoString):Void {
            {
                var _got = ((@:check2r _fset.position(_pos).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_want)) {
                    @:check2r _t.errorf(("Position(%d) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            };
        } : (stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void);
        var _checkNumFiles = (function(_want:stdgo.GoInt):Void {
            var _got = (0 : stdgo.GoInt);
            @:check2r _fset.iterate(function(_0:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Bool {
                _got++;
                return true;
            });
            if (_got != (_want)) {
                @:check2r _t.errorf(("Iterate called %d times, want %d" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        } : stdgo.GoInt -> Void);
        var _apos3 = (@:check2r _a.pos((3 : stdgo.GoInt)) : stdgo._internal.go.token.Token_pos.Pos);
        var _bpos3 = (@:check2r _b.pos((3 : stdgo.GoInt)) : stdgo._internal.go.token.Token_pos.Pos);
        _checkPos(_apos3, ("fileA:1:4" : stdgo.GoString));
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString));
        _checkNumFiles((2 : stdgo.GoInt));
        @:check2r _fset.removeFile(_a);
        _checkPos(_apos3, ("-" : stdgo.GoString));
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString));
        _checkNumFiles((1 : stdgo.GoInt));
        @:check2r _fset.removeFile(_a);
        _checkPos(_apos3, ("-" : stdgo.GoString));
        _checkPos(_bpos3, ("fileB:1:4" : stdgo.GoString));
        _checkNumFiles((1 : stdgo.GoInt));
    }
