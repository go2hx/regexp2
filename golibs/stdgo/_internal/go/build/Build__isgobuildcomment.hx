package stdgo._internal.go.build;
function _isGoBuildComment(_line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, stdgo._internal.go.build.Build__gobuildcomment._goBuildComment)) {
            return false;
        };
        _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
        var _rest = (_line.__slice__((stdgo._internal.go.build.Build__gobuildcomment._goBuildComment.length)) : stdgo.Slice<stdgo.GoUInt8>);
        return ((_rest.length == (0 : stdgo.GoInt)) || ((stdgo._internal.bytes.Bytes_trimspace.trimSpace(_rest).length) < (_rest.length) : Bool) : Bool);
    }
