package stdgo._internal.go.build;
function _nameExt(_name:stdgo.GoString):stdgo.GoString {
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return (_name.__slice__(_i) : stdgo.GoString)?.__copy__();
    }
