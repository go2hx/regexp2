package stdgo._internal.go.internal.gcimporter;
function _splitVargenSuffix(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _base = ("" : stdgo.GoString), _suffix = ("" : stdgo.GoString);
        var _i = (_name.length : stdgo.GoInt);
        while ((((_i > (0 : stdgo.GoInt) : Bool) && (_name[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] >= (48 : stdgo.GoUInt8) : Bool) : Bool) && (_name[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _i--;
        };
        {};
        if (((_i >= ((("·" : stdgo.GoString) : stdgo.GoString).length) : Bool) && ((_name.__slice__((_i - ((("·" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt), _i) : stdgo.GoString) == ("·" : stdgo.GoString)) : Bool)) {
            _i = (_i - (((("·" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoInt);
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_name.__slice__(_i) : stdgo.GoString)?.__copy__() };
                _base = __tmp__._0;
                _suffix = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _name?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            _base = __tmp__._0;
            _suffix = __tmp__._1;
            __tmp__;
        };
    }
