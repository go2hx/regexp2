package stdgo._internal.go.types;
function _dir(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i = (stdgo._internal.strings.Strings_lastindexany.lastIndexAny(_path?.__copy__(), ("/\\" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                return (_path.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
        };
        return ("." : stdgo.GoString);
    }
