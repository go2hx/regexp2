package stdgo._internal.math.big;
function benchmarkBitsetNegOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _z = stdgo._internal.math.big.Big_newint.newInt((-1i64 : stdgo.GoInt64));
        stdgo._internal.math.big.Big__altsetbit._altSetBit(_z, _z, (512 : stdgo.GoInt), (0u32 : stdgo.GoUInt));
        @:check2r _b.resetTimer();
        {
            var _i = ((@:checkr _b ?? throw "null pointer dereference").n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.math.big.Big__altsetbit._altSetBit(_z, _z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (0u32 : stdgo.GoUInt));
                _i--;
            };
        };
    }
