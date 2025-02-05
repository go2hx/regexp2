package stdgo._internal.go.types;
function _pathString(_path:stdgo.Slice<stdgo._internal.go.types.Types_object.Object>):stdgo.GoString {
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        for (_i => _p in _path) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + (("->" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (_p.name())?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
