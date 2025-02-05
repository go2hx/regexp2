package stdgo._internal.go.doc.comment;
function _validImportPath(_path:stdgo.GoString):Bool {
        if (!stdgo._internal.unicode.utf8.Utf8_validstring.validString(_path?.__copy__())) {
            return false;
        };
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return false;
        };
        if (_path[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            return false;
        };
        if (stdgo._internal.strings.Strings_contains.contains(_path?.__copy__(), ("//" : stdgo.GoString))) {
            return false;
        };
        if (_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
            return false;
        };
        var _elemStart = (0 : stdgo.GoInt);
        for (_i => _r in _path) {
            if (_r == ((47 : stdgo.GoInt32))) {
                if (!stdgo._internal.go.doc.comment.Comment__validimportpathelem._validImportPathElem((_path.__slice__(_elemStart, _i) : stdgo.GoString)?.__copy__())) {
                    return false;
                };
                _elemStart = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return stdgo._internal.go.doc.comment.Comment__validimportpathelem._validImportPathElem((_path.__slice__(_elemStart) : stdgo.GoString)?.__copy__());
    }
