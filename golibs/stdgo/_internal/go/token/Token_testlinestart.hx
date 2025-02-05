package stdgo._internal.go.token;
function testLineStart(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _f = @:check2r _fset.addFile(("input" : stdgo.GoString), (-1 : stdgo.GoInt), ((("one\ntwo\nthree\n" : stdgo.GoString) : stdgo.GoString).length));
        @:check2r _f.setLinesForContent(((("one\ntwo\nthree\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        {
            var _line = (1 : stdgo.GoInt);
            while ((_line <= (3 : stdgo.GoInt) : Bool)) {
                var _pos = (@:check2r _f.lineStart(_line) : stdgo._internal.go.token.Token_pos.Pos);
var _position = (@:check2r _fset.position(_pos).__copy__() : stdgo._internal.go.token.Token_position.Position);
if (((_position.line != _line) || (_position.column != (1 : stdgo.GoInt)) : Bool)) {
                    @:check2r _t.errorf(("LineStart(%d) returned wrong pos %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(stdgo.Go.asInterface(_pos)), stdgo.Go.toInterface(stdgo.Go.asInterface(_position)));
                };
                _line++;
            };
        };
    }
