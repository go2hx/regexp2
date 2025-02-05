package stdgo._internal.go.types;
function _nextID():stdgo.GoUInt64 {
        return (stdgo._internal.sync.atomic_.Atomic__adduint32.addUint32(stdgo.Go.pointer(stdgo._internal.go.types.Types__lastid._lastID), (1u32 : stdgo.GoUInt32)) : stdgo.GoUInt64);
    }
