package stdgo._internal.go.types;
function _identicalInstance(_xorig:stdgo._internal.go.types.Types_type_.Type_, _xargs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _yorig:stdgo._internal.go.types.Types_type_.Type_, _yargs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):Bool {
        if ((_xargs.length) != ((_yargs.length))) {
            return false;
        };
        for (_i => _xa in _xargs) {
            if (!stdgo._internal.go.types.Types_identical.identical(_xa, _yargs[(_i : stdgo.GoInt)])) {
                return false;
            };
        };
        return stdgo._internal.go.types.Types_identical.identical(_xorig, _yorig);
    }
