package stdgo._internal.go.doc;
function _nameWithoutInst(_name:stdgo.GoString):stdgo.GoString {
        var _start = (stdgo._internal.strings.Strings_index.index(_name?.__copy__(), ("[" : stdgo.GoString)) : stdgo.GoInt);
        if ((_start < (0 : stdgo.GoInt) : Bool)) {
            return _name?.__copy__();
        };
        var _end = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
        if ((_end < (0 : stdgo.GoInt) : Bool)) {
            return _name?.__copy__();
        };
        return ((_name.__slice__((0 : stdgo.GoInt), _start) : stdgo.GoString) + (_name.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
