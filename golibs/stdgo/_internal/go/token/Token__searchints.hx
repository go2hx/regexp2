package stdgo._internal.go.token;
function _searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if ((_a[(_h : stdgo.GoInt)] <= _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
