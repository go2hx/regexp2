package stdgo._internal.go.doc.comment;
function _writeNL(_out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        var _data = @:check2r _out.bytes();
        var _n = (0 : stdgo.GoInt);
        while (((_n < (_data.length) : Bool) && (((_data[(((_data.length) - _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_data[(((_data.length) - _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _n++;
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _out.truncate(((_data.length) - _n : stdgo.GoInt));
        };
        @:check2r _out.writeByte((10 : stdgo.GoUInt8));
    }
