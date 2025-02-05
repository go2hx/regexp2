package stdgo._internal.go.doc.comment;
function _validImportPathElem(_elem:stdgo.GoString):Bool {
        if (((_elem == ((stdgo.Go.str() : stdgo.GoString)) || _elem[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || (_elem[((_elem.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_elem.length) : Bool)) {
                if (!stdgo._internal.go.doc.comment.Comment__importpathok._importPathOK(_elem[(_i : stdgo.GoInt)])) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
