package stdgo._internal.go.types;
function _align(_x:stdgo.GoInt64, _a:stdgo.GoInt64):stdgo.GoInt64 {
        stdgo._internal.go.types.Types__assert._assert(((((_x >= (0i64 : stdgo.GoInt64) : Bool) && ((1i64 : stdgo.GoInt64) <= _a : Bool) : Bool) && (_a <= (8i64 : stdgo.GoInt64) : Bool) : Bool) && ((_a & ((_a - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) == (0i64 : stdgo.GoInt64)) : Bool));
        return ((((_x + _a : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) & ((((_a - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt64)) : stdgo.GoInt64);
    }
