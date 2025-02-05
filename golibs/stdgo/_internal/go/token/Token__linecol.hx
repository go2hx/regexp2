package stdgo._internal.go.token;
function _linecol(_lines:stdgo.Slice<stdgo.GoInt>, _offs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        var _prevLineOffs = (0 : stdgo.GoInt);
        for (_line => _lineOffs in _lines) {
            if ((_offs < _lineOffs : Bool)) {
                return { _0 : _line, _1 : ((_offs - _prevLineOffs : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            };
            _prevLineOffs = _lineOffs;
        };
        return { _0 : (_lines.length), _1 : ((_offs - _prevLineOffs : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
