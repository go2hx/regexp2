package stdgo._internal.go.token;
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _got:stdgo._internal.go.token.Token_position.Position, _want:stdgo._internal.go.token.Token_position.Position):Void {
        if (_got.filename != (_want.filename)) {
            @:check2r _t.errorf(("%s: got filename = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.filename), stdgo.Go.toInterface(_want.filename));
        };
        if (_got.offset != (_want.offset)) {
            @:check2r _t.errorf(("%s: got offset = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.offset), stdgo.Go.toInterface(_want.offset));
        };
        if (_got.line != (_want.line)) {
            @:check2r _t.errorf(("%s: got line = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.line), stdgo.Go.toInterface(_want.line));
        };
        if (_got.column != (_want.column)) {
            @:check2r _t.errorf(("%s: got column = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.column), stdgo.Go.toInterface(_want.column));
        };
    }
