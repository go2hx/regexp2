package stdgo._internal.go.build;
function isLocalImport(_path:stdgo.GoString):Bool {
        return (((_path == (("." : stdgo.GoString)) || _path == ((".." : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("./" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("../" : stdgo.GoString)) : Bool);
    }
