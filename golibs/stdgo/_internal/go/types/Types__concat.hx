package stdgo._internal.go.types;
function _concat(_list:stdgo.Slice<stdgo.GoInt>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _t:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        _t = (_t.__append__(...(_list : Array<stdgo.GoInt>)));
        return (_t.__append__(_i));
    }
