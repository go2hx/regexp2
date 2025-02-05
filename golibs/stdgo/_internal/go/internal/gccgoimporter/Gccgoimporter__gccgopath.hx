package stdgo._internal.go.internal.gccgoimporter;
function _gccgoPath():stdgo.GoString {
        var _gccgoname = (stdgo._internal.os.Os_getenv.getenv(("GCCGO" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_gccgoname == ((stdgo.Go.str() : stdgo.GoString))) {
            _gccgoname = ("gccgo" : stdgo.GoString);
        };
        {
            var __tmp__ = stdgo._internal.os.exec.Exec_lookpath.lookPath(_gccgoname?.__copy__()), _gpath:stdgo.GoString = __tmp__._0, _gerr:stdgo.Error = __tmp__._1;
            if (_gerr == null) {
                return _gpath?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
