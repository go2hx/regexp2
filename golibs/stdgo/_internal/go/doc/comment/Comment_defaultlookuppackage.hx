package stdgo._internal.go.doc.comment;
function defaultLookupPackage(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _importPath = ("" : stdgo.GoString), _ok = false;
        if (stdgo._internal.go.doc.comment.Comment__isstdpkg._isStdPkg(_name?.__copy__())) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _name?.__copy__(), _1 : true };
                _importPath = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
            _importPath = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
