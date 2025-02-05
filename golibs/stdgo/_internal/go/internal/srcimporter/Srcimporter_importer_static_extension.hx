package stdgo._internal.go.internal.srcimporter;
@:keep @:allow(stdgo._internal.go.internal.srcimporter.Srcimporter.Importer_asInterface) class Importer_static_extension {
    @:keep
    @:tdfield
    static public function _joinPath( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        {
            var _f = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._ctxt ?? throw "null pointer dereference").joinPath;
            if (_f != null) {
                return _f(...(_elem : Array<stdgo.GoString>))?.__copy__();
            };
        };
        return stdgo._internal.path.filepath.Filepath_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _isAbsPath( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _path:stdgo.GoString):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        {
            var _f = ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._ctxt ?? throw "null pointer dereference").isAbsPath : stdgo.GoString -> Bool);
            if (_f != null) {
                return _f(_path?.__copy__());
            };
        };
        return stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _absPath( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        return stdgo._internal.path.filepath.Filepath_abs.abs(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _cgo( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _bp:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_mkdirtemp.mkdirTemp((stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("srcimporter" : stdgo.GoString)), _tmpdir:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            {
                var _a0 = _tmpdir;
                final __f__ = stdgo._internal.os.Os_removeall.removeAll;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0?.__copy__()) });
            };
            var _goCmd = (("go" : stdgo.GoString) : stdgo.GoString);
            if ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                _goCmd = stdgo._internal.path.filepath.Filepath_join.join((@:checkr (@:checkr _p ?? throw "null pointer dereference")._ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("bin" : stdgo.GoString), ("go" : stdgo.GoString))?.__copy__();
            };
            var _args = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[_goCmd?.__copy__(), ("tool" : stdgo.GoString), ("cgo" : stdgo.GoString), ("-objdir" : stdgo.GoString), _tmpdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            if ((@:checkr _bp ?? throw "null pointer dereference").goroot) {
                {
                    final __value__ = (@:checkr _bp ?? throw "null pointer dereference").importPath;
                    if (__value__ == (("runtime/cgo" : stdgo.GoString))) {
                        _args = (_args.__append__((("-import_runtime_cgo=false" : stdgo.GoString) : stdgo.GoString), (("-import_syscall=false" : stdgo.GoString) : stdgo.GoString)));
                    } else if (__value__ == (("runtime/race" : stdgo.GoString))) {
                        _args = (_args.__append__((("-import_syscall=false" : stdgo.GoString) : stdgo.GoString)));
                    };
                };
            };
            _args = (_args.__append__((("--" : stdgo.GoString) : stdgo.GoString)));
            _args = (_args.__append__(...(stdgo._internal.strings.Strings_fields.fields(stdgo._internal.os.Os_getenv.getenv(("CGO_CPPFLAGS" : stdgo.GoString))?.__copy__()) : Array<stdgo.GoString>)));
            _args = (_args.__append__(...((@:checkr _bp ?? throw "null pointer dereference").cgoCPPFLAGS : Array<stdgo.GoString>)));
            if ((((@:checkr _bp ?? throw "null pointer dereference").cgoPkgConfig.length) > (0 : stdgo.GoInt) : Bool)) {
                var _cmd = stdgo._internal.os.exec.Exec_command.command(("pkg-config" : stdgo.GoString), ...((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("--cflags" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _bp ?? throw "null pointer dereference").cgoPkgConfig : Array<stdgo.GoString>)) : Array<stdgo.GoString>));
                var __tmp__ = @:check2r _cmd.output(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("pkg-config --cflags: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                _args = (_args.__append__(...(stdgo._internal.strings.Strings_fields.fields((_out : stdgo.GoString)?.__copy__()) : Array<stdgo.GoString>)));
            };
            _args = (_args.__append__((("-I" : stdgo.GoString) : stdgo.GoString), _tmpdir?.__copy__()));
            _args = (_args.__append__(...(stdgo._internal.strings.Strings_fields.fields(stdgo._internal.os.Os_getenv.getenv(("CGO_CFLAGS" : stdgo.GoString))?.__copy__()) : Array<stdgo.GoString>)));
            _args = (_args.__append__(...((@:checkr _bp ?? throw "null pointer dereference").cgoCFLAGS : Array<stdgo.GoString>)));
            _args = (_args.__append__(...((@:checkr _bp ?? throw "null pointer dereference").cgoFiles : Array<stdgo.GoString>)));
            var _cmd = stdgo._internal.os.exec.Exec_command.command(_args[(0 : stdgo.GoInt)]?.__copy__(), ...((_args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>));
            (@:checkr _cmd ?? throw "null pointer dereference").dir = (@:checkr _bp ?? throw "null pointer dereference").dir?.__copy__();
            {
                var _err = (@:check2r _cmd.run() : stdgo.Error);
                if (_err != null) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("go tool cgo: %w" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>; var _1 : stdgo.Error; } = stdgo._internal.go.parser.Parser_parsefile.parseFile((@:checkr _p ?? throw "null pointer dereference")._fset, stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), ("_cgo_gotypes.go" : stdgo.GoString))?.__copy__(), (null : stdgo.AnyInterface), (64u32 : stdgo._internal.go.parser.Parser_mode.Mode));
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseFiles( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _dir:stdgo.GoString, _filenames:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        var _open = ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._ctxt ?? throw "null pointer dereference").openFile : stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; });
        if (_open == null) {
            _open = function(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                return stdgo._internal.os.Os_open.open(_name?.__copy__());
            };
        };
        var _files = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>((_filenames.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>);
        var _errors = (new stdgo.Slice<stdgo.Error>((_filenames.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Error>);
        var _wg:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        @:check2 _wg.add((_filenames.length));
        for (_i => _filename in _filenames) {
            stdgo.Go.routine(() -> ({
                var a = function(_i:stdgo.GoInt, _filepath:stdgo.GoString):Void {
                    var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                    try {
                        {
                            final __f__ = @:check2 _wg.done;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                        var __tmp__ = _open(_filepath?.__copy__()), _src:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _errors[(_i : stdgo.GoInt)] = _err;
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                        };
                        {
                            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile((@:checkr _p ?? throw "null pointer dereference")._fset, _filepath?.__copy__(), stdgo.Go.toInterface(_src), (64u32 : stdgo._internal.go.parser.Parser_mode.Mode));
                            _files[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _errors[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._1;
                        };
                        _src.close();
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            if (stdgo.Go.recover_exception != null) {
                                final e = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                throw e;
                            };
                            return;
                        };
                    } catch(__exception__) {
                        {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            {
                                function f() {
                                    try {
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                        };
                                    } catch(__exception__2) {
                                        var exe:Dynamic = __exception__2.native;
                                        if ((exe is haxe.ValueException)) exe = exe.value;
                                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                            if (__exception__.message == "__return__") throw "__return__";
                                            exe = stdgo.Go.toInterface(__exception__.message);
                                        };
                                        stdgo.Go.recover_exception = exe;
                                        f();
                                    };
                                };
                                f();
                            };
                            if (stdgo.Go.recover_exception != null) {
                                final e = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                throw e;
                            };
                            return;
                        };
                    };
                };
                a(_i, @:check2r _p._joinPath(_dir?.__copy__(), _filename?.__copy__())?.__copy__());
            }));
        };
        @:check2 _wg.wait_();
        for (__16 => _err in _errors) {
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>), _1 : _err };
            };
        };
        return { _0 : _files, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function importFrom( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (_mode != ((0 : stdgo._internal.go.types.Types_importmode.ImportMode))) {
                throw stdgo.Go.toInterface(("non-zero import mode" : stdgo.GoString));
            };
            {
                var __tmp__ = @:check2r _p._absPath(_srcDir?.__copy__()), _abs:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _srcDir = _abs?.__copy__();
                };
            };
            var __tmp__ = @:check2r (@:checkr _p ?? throw "null pointer dereference")._ctxt.import_(_path?.__copy__(), _srcDir?.__copy__(), (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)), _bp:stdgo.Ref<stdgo._internal.go.build.Build_package.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if ((@:checkr _bp ?? throw "null pointer dereference").importPath == (("unsafe" : stdgo.GoString))) {
                return { _0 : stdgo._internal.go.types.Types_unsafe.unsafe, _1 : (null : stdgo.Error) };
            };
            var _pkg = ((@:checkr _p ?? throw "null pointer dereference")._packages[(@:checkr _bp ?? throw "null pointer dereference").importPath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
            if ((_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__))) {
                if (_pkg == ((stdgo.Go.setRef(stdgo._internal.go.internal.srcimporter.Srcimporter__importing._importing) : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>))) {
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import cycle through package %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _bp ?? throw "null pointer dereference").importPath)) };
                };
                if (!@:check2r _pkg.complete()) {
                    return { _0 : _pkg, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("reimported partially imported package %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _bp ?? throw "null pointer dereference").importPath)) };
                };
                return { _0 : _pkg, _1 : (null : stdgo.Error) };
            };
            (@:checkr _p ?? throw "null pointer dereference")._packages[(@:checkr _bp ?? throw "null pointer dereference").importPath] = (stdgo.Go.setRef(stdgo._internal.go.internal.srcimporter.Srcimporter__importing._importing) : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (((@:checkr _p ?? throw "null pointer dereference")._packages[(@:checkr _bp ?? throw "null pointer dereference").importPath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>)) == ((stdgo.Go.setRef(stdgo._internal.go.internal.srcimporter.Srcimporter__importing._importing) : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>))) {
                            (@:checkr _p ?? throw "null pointer dereference")._packages[(@:checkr _bp ?? throw "null pointer dereference").importPath] = null;
                        };
                    };
                    a();
                }) });
            };
            var _filenames:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            _filenames = (_filenames.__append__(...((@:checkr _bp ?? throw "null pointer dereference").goFiles : Array<stdgo.GoString>)));
            _filenames = (_filenames.__append__(...((@:checkr _bp ?? throw "null pointer dereference").cgoFiles : Array<stdgo.GoString>)));
            var __tmp__ = @:check2r _p._parseFiles((@:checkr _bp ?? throw "null pointer dereference").dir?.__copy__(), _filenames), _files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _firstHardErr:stdgo.Error = (null : stdgo.Error);
            var _conf = ({ ignoreFuncBodies : true, error : function(_err:stdgo.Error):Void {
                if (((_firstHardErr == null) && !(stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.go.types.Types_error.Error)) : stdgo._internal.go.types.Types_error.Error).soft : Bool)) {
                    _firstHardErr = _err;
                };
            }, importer : stdgo.Go.asInterface(_p), sizes : (@:checkr _p ?? throw "null pointer dereference")._sizes } : stdgo._internal.go.types.Types_config.Config);
            if ((((@:checkr _bp ?? throw "null pointer dereference").cgoFiles.length) > (0 : stdgo.GoInt) : Bool)) {
                if ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._ctxt ?? throw "null pointer dereference").openFile != null) {
                    _conf.fakeImportC = true;
                } else {
                    stdgo._internal.go.internal.srcimporter.Srcimporter__setusescgo._setUsesCgo((stdgo.Go.setRef(_conf) : stdgo.Ref<stdgo._internal.go.types.Types_config.Config>));
                    var __tmp__ = @:check2r _p._cgo(_bp), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("error processing cgo for package %q: %w" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _bp ?? throw "null pointer dereference").importPath), stdgo.Go.toInterface(_err)) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _files = (_files.__append__(_file));
                };
            };
            {
                var __tmp__ = @:check2 _conf.check((@:checkr _bp ?? throw "null pointer dereference").importPath?.__copy__(), (@:checkr _p ?? throw "null pointer dereference")._fset, _files, null);
                _pkg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                if (_firstHardErr != null) {
                    _pkg = null;
                    _err = _firstHardErr;
                };
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("type-checking package %q failed (%v)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _bp ?? throw "null pointer dereference").importPath), stdgo.Go.toInterface(_err)) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (_firstHardErr != null) {
                throw stdgo.Go.toInterface(("package is not safe yet no error was returned" : stdgo.GoString));
            };
            (@:checkr _p ?? throw "null pointer dereference")._packages[(@:checkr _bp ?? throw "null pointer dereference").importPath] = _pkg;
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : _pkg, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function import_( _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer>, _path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.internal.srcimporter.Srcimporter_importer.Importer> = _p;
        return @:check2r _p.importFrom(_path?.__copy__(), ("." : stdgo.GoString), (0 : stdgo._internal.go.types.Types_importmode.ImportMode));
    }
}
