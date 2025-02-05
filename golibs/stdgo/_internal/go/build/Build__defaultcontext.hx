package stdgo._internal.go.build;
function _defaultContext():stdgo._internal.go.build.Build_context.Context {
        var _c:stdgo._internal.go.build.Build_context.Context = ({} : stdgo._internal.go.build.Build_context.Context);
        _c.gOARCH = stdgo._internal.internal.buildcfg.Buildcfg_goarch.gOARCH?.__copy__();
        _c.gOOS = stdgo._internal.internal.buildcfg.Buildcfg_goos.gOOS?.__copy__();
        {
            var _goroot = (stdgo._internal.runtime.Runtime_goroot.gOROOT()?.__copy__() : stdgo.GoString);
            if (_goroot != ((stdgo.Go.str() : stdgo.GoString))) {
                _c.gOROOT = stdgo._internal.path.filepath.Filepath_clean.clean(_goroot?.__copy__())?.__copy__();
            };
        };
        _c.gOPATH = stdgo._internal.go.build.Build__envor._envOr(("GOPATH" : stdgo.GoString), stdgo._internal.go.build.Build__defaultgopath._defaultGOPATH()?.__copy__())?.__copy__();
        _c.compiler = stdgo._internal.runtime.Runtime_compiler.compiler?.__copy__();
        _c.toolTags = (_c.toolTags.__append__(...(stdgo._internal.internal.buildcfg.Buildcfg_tooltags.toolTags : Array<stdgo.GoString>)));
        stdgo._internal.go.build.Build__defaulttooltags._defaultToolTags = ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_c.toolTags : Array<stdgo.GoString>)));
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i <= (21 : stdgo.GoInt) : Bool)) {
                _c.releaseTags = (_c.releaseTags.__append__((("go1." : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_i).__copy__() : stdgo.GoString).__copy__()));
                _i++;
            };
        };
        stdgo._internal.go.build.Build__defaultreleasetags._defaultReleaseTags = ((new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...(_c.releaseTags : Array<stdgo.GoString>)));
        var _env = (stdgo._internal.os.Os_getenv.getenv(("CGO_ENABLED" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_env == ((stdgo.Go.str() : stdgo.GoString))) {
            _env = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _env;
                    if (__value__ == (("1" : stdgo.GoString))) {
                        _c.cgoEnabled = true;
                        break;
                    } else if (__value__ == (("0" : stdgo.GoString))) {
                        _c.cgoEnabled = false;
                        break;
                    } else {
                        if ((((("wasm" : stdgo.GoString) : stdgo.GoString) == _c.gOARCH) && ((("js" : stdgo.GoString) : stdgo.GoString) == _c.gOOS) : Bool)) {
                            _c.cgoEnabled = stdgo._internal.internal.platform.Platform_cgosupported.cgoSupported(_c.gOOS?.__copy__(), _c.gOARCH?.__copy__());
                            break;
                        };
                        _c.cgoEnabled = false;
                    };
                };
                break;
            };
        };
        return _c?.__copy__();
    }
