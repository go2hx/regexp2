package stdgo._internal.go.types;
function _subscript(_x:stdgo.GoUInt64):stdgo.GoString {
        {};
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(96, 96).__setNumber32__();
        var _i = (_buf.length : stdgo.GoInt);
        while (true) {
            _i = (_i - ((3 : stdgo.GoInt)) : stdgo.GoInt);
            stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), ((8320 : stdgo.GoInt32) + ((_x % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt32));
            _x = (_x / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if (_x == ((0i64 : stdgo.GoUInt64))) {
                break;
            };
        };
        return ((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
