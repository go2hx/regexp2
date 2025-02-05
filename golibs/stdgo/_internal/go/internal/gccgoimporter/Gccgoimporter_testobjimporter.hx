package stdgo._internal.go.internal.gccgoimporter;
function testObjImporter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _gpath = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__gccgopath._gccgoPath()?.__copy__() : stdgo.GoString);
        if (_gpath == ((stdgo.Go.str() : stdgo.GoString))) {
            @:check2r _t.skip(stdgo.Go.toInterface(("This test needs gccgo" : stdgo.GoString)));
        };
        var __tmp__ = @:check2r stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _gpath?.__copy__(), ("--version" : stdgo.GoString)).combinedOutput(), _verout:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_verout));
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _vers = @:check2r stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("(\\d+)\\.(\\d+)" : stdgo.GoString)).findSubmatch(_verout);
        if ((_vers.length) == ((0 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("could not find version number in %s" : stdgo.GoString), stdgo.Go.toInterface(_verout));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_vers[(1 : stdgo.GoInt)] : stdgo.GoString)?.__copy__()), _major:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_vers[(2 : stdgo.GoInt)] : stdgo.GoString)?.__copy__()), _minor:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        @:check2r _t.logf(("gccgo version %d.%d" : stdgo.GoString), stdgo.Go.toInterface(_major), stdgo.Go.toInterface(_minor));
        var _tmpdir = (@:check2r _t.tempDir()?.__copy__() : stdgo.GoString);
        var _initmap = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>);
        var _imp = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_tmpdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _initmap) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
        var _artmpdir = (@:check2r _t.tempDir()?.__copy__() : stdgo.GoString);
        var _arinitmap = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>);
        var _arimp = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_getimporter.getImporter((new stdgo.Slice<stdgo.GoString>(1, 1, ...[_artmpdir?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _arinitmap) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
        for (__30 => _test in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__importertests._importerTests) {
            if ((_major < _test._gccgoVersion : Bool)) {
                @:check2r _t.logf(("skipping %q: not supported before gccgo version %d" : stdgo.GoString), stdgo.Go.toInterface(_test._pkgpath), stdgo.Go.toInterface(_test._gccgoVersion));
                continue;
            };
            var _gofile = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), (_test._pkgpath + (".go" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.os.Os_stat.stat(_gofile?.__copy__()), __31:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (stdgo._internal.os.Os_isnotexist.isNotExist(_err)) {
                    continue;
                };
            };
            var _ofile = (stdgo._internal.path.filepath.Filepath_join.join(_tmpdir?.__copy__(), (_test._pkgpath + (".o" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            var _afile = (stdgo._internal.path.filepath.Filepath_join.join(_artmpdir?.__copy__(), ((("lib" : stdgo.GoString) + _test._pkgpath?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
            var _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), _gpath?.__copy__(), (("-fgo-pkgpath=" : stdgo.GoString) + _test._pkgpath?.__copy__() : stdgo.GoString)?.__copy__(), ("-c" : stdgo.GoString), ("-o" : stdgo.GoString), _ofile?.__copy__(), _gofile?.__copy__());
            var __tmp__ = @:check2r _cmd.combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
                @:check2r _t.fatalf(("gccgo %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_gofile), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__runimportertest._runImporterTest(_t, _imp, _initmap, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>));
            _cmd = stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), ("ar" : stdgo.GoString), ("cr" : stdgo.GoString), _afile?.__copy__(), _ofile?.__copy__());
            {
                var __tmp__ = @:check2r _cmd.combinedOutput();
                _out = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.logf(("%s" : stdgo.GoString), stdgo.Go.toInterface(_out));
                @:check2r _t.fatalf(("ar cr %s %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_afile), stdgo.Go.toInterface(_ofile), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__runimportertest._runImporterTest(_t, _arimp, _arinitmap, (stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_importertest.T_importerTest>));
            {
                _err = stdgo._internal.os.Os_remove.remove(_ofile?.__copy__());
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
            {
                _err = stdgo._internal.os.Os_remove.remove(_afile?.__copy__());
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
            };
        };
    }
