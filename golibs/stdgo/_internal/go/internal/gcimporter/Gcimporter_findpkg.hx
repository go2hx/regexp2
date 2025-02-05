package stdgo._internal.go.internal.gcimporter;
function findPkg(_path:stdgo.GoString, _srcDir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _filename = ("" : stdgo.GoString), _id = ("" : stdgo.GoString);
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : _filename, _1 : _id };
        };
        var _noext:stdgo.GoString = ("" : stdgo.GoString);
        if (stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__())) {
            _noext = stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), _path?.__copy__())?.__copy__();
            _id = _noext?.__copy__();
        } else if (stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__())) {
            _noext = _path?.__copy__();
            _id = _path?.__copy__();
        } else {
            {
                var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(_srcDir?.__copy__()), _abs:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _srcDir = _abs?.__copy__();
                };
            };
            var __tmp__ = stdgo._internal.go.build.Build_import_.import_(_path?.__copy__(), _srcDir?.__copy__(), (3u32 : stdgo._internal.go.build.Build_importmode.ImportMode)), _bp:stdgo.Ref<stdgo._internal.go.build.Build_package.Package> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if ((@:checkr _bp ?? throw "null pointer dereference").pkgObj == ((stdgo.Go.str() : stdgo.GoString))) {
                var _ok:Bool = false;
                if (((@:checkr _bp ?? throw "null pointer dereference").goroot && ((@:checkr _bp ?? throw "null pointer dereference").dir != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.go.internal.gcimporter.Gcimporter__lookupgorootexport._lookupGorootExport((@:checkr _bp ?? throw "null pointer dereference").dir?.__copy__());
                        _filename = @:tmpset0 __tmp__._0?.__copy__();
                        _ok = @:tmpset0 __tmp__._1;
                    };
                };
                if (!_ok) {
                    _id = _path?.__copy__();
                    return { _0 : _filename, _1 : _id };
                };
            } else {
                _noext = stdgo._internal.strings.Strings_trimsuffix.trimSuffix((@:checkr _bp ?? throw "null pointer dereference").pkgObj?.__copy__(), (".a" : stdgo.GoString))?.__copy__();
            };
            _id = (@:checkr _bp ?? throw "null pointer dereference").importPath?.__copy__();
        };
        if (false) {
            if (_path != (_id)) {
                stdgo._internal.fmt.Fmt_printf.printf(("%s -> %s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_id));
            };
        };
        if (_filename != ((stdgo.Go.str() : stdgo.GoString))) {
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_filename?.__copy__()), _f:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && !_f.isDir() : Bool)) {
                    return { _0 : _filename, _1 : _id };
                };
            };
        };
        for (__0 => _ext in stdgo._internal.go.internal.gcimporter.Gcimporter__pkgexts._pkgExts) {
            _filename = (_noext + _ext?.__copy__() : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_filename?.__copy__()), _f:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && !_f.isDir() : Bool)) {
                    return { _0 : _filename, _1 : _id };
                };
            };
        };
        _filename = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        return { _0 : _filename, _1 : _id };
    }
