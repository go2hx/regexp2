package stdgo._internal.go.build;
function _defaultGOPATH():stdgo.GoString {
        var _env = (("HOME" : stdgo.GoString) : stdgo.GoString);
        if (false) {
            _env = ("USERPROFILE" : stdgo.GoString);
        } else if (false) {
            _env = ("home" : stdgo.GoString);
        };
        {
            var _home = (stdgo._internal.os.Os_getenv.getenv(_env?.__copy__())?.__copy__() : stdgo.GoString);
            if (_home != ((stdgo.Go.str() : stdgo.GoString))) {
                var _def = (stdgo._internal.path.filepath.Filepath_join.join(_home?.__copy__(), ("go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                if (stdgo._internal.path.filepath.Filepath_clean.clean(_def?.__copy__()) == (stdgo._internal.path.filepath.Filepath_clean.clean(stdgo._internal.runtime.Runtime_goroot.gOROOT()?.__copy__()))) {
                    return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
                return _def?.__copy__();
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
