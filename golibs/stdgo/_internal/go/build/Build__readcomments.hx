package stdgo._internal.go.build;
function _readComments(_f:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.go.build.Build__newimportreader._newImportReader((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _f);
        @:check2r _r._peekByte(true);
        if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return { _0 : (@:checkr _r ?? throw "null pointer dereference")._buf, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
    }
