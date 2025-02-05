package stdgo._internal.go.types;
function id(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.GoString {
        if (stdgo._internal.go.types.Types__isexported._isExported(_name?.__copy__())) {
            return _name?.__copy__();
        };
        var _path = (("_" : stdgo.GoString) : stdgo.GoString);
        if (((_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__)) && ((@:checkr _pkg ?? throw "null pointer dereference")._path != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _path = (@:checkr _pkg ?? throw "null pointer dereference")._path?.__copy__();
        };
        return ((_path + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__();
    }
