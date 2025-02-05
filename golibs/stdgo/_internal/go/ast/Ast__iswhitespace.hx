package stdgo._internal.go.ast;
function _isWhitespace(_ch:stdgo.GoUInt8):Bool {
        return (((_ch == ((32 : stdgo.GoUInt8)) || _ch == ((9 : stdgo.GoUInt8)) : Bool) || _ch == ((10 : stdgo.GoUInt8)) : Bool) || (_ch == (13 : stdgo.GoUInt8)) : Bool);
    }
