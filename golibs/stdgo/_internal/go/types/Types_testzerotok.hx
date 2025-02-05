package stdgo._internal.go.types;
function testZeroTok(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero:stdgo._internal.go.token.Token_token.Token = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token);
        if ((0 : stdgo._internal.go.token.Token_token.Token) != (_zero)) {
            @:check2r _t.errorf(("%s == %d; want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.go.token.Token_token.Token))), stdgo.Go.toInterface(stdgo.Go.asInterface(_zero)));
        };
    }
