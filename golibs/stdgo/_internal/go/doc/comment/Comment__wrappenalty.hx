package stdgo._internal.go.doc.comment;
function _wrapPenalty(_s:stdgo.GoString):stdgo.GoInt64 {
        {
            final __value__ = _s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if (__value__ == ((46 : stdgo.GoUInt8)) || __value__ == ((44 : stdgo.GoUInt8)) || __value__ == ((58 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8))) {
                return (0i64 : stdgo.GoInt64);
            };
        };
        return (64i64 : stdgo.GoInt64);
    }
