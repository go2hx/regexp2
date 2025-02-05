package stdgo._internal.go.doc.comment;
function _indented(_line:stdgo.GoString):Bool {
        return ((_line != (stdgo.Go.str() : stdgo.GoString)) && (((_line[(0 : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_line[(0 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool);
    }
