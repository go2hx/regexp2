package stdgo._internal.go.token;
function benchmarkSearchInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>((10000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10000 : stdgo.GoInt) : Bool)) {
                _data[(_i : stdgo.GoInt)] = _i;
                _i++;
            };
        };
        {};
        {
            var _r = (stdgo._internal.go.token.Token__searchints._searchInts(_data, (8 : stdgo.GoInt)) : stdgo.GoInt);
            if (_r != ((8 : stdgo.GoInt))) {
                @:check2r _b.errorf(("got index = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface((8 : stdgo.GoInt)));
            };
        };
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.go.token.Token__searchints._searchInts(_data, (8 : stdgo.GoInt));
                _i++;
            };
        };
    }
