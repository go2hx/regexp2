package stdgo._internal.go.internal.gcimporter;
function _tparamName(_exportName:stdgo.GoString):stdgo.GoString {
        var _ix = (stdgo._internal.strings.Strings_lastindex.lastIndex(_exportName?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        if ((_ix < (0 : stdgo.GoInt) : Bool)) {
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("malformed type parameter export name %s: missing prefix" : stdgo.GoString), stdgo.Go.toInterface(_exportName));
        };
        var _name = ((_exportName.__slice__((_ix + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("$" : stdgo.GoString))) {
            return ("_" : stdgo.GoString);
        };
        return _name?.__copy__();
    }
