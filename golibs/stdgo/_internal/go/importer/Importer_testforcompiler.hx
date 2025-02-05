package stdgo._internal.go.importer;
function testForCompiler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_musthavegobuild.mustHaveGoBuild(stdgo.Go.asInterface(_t));
        {};
        var __tmp__ = @:check2r stdgo._internal.internal.testenv.Testenv_command.command(stdgo.Go.asInterface(_t), stdgo._internal.internal.testenv.Testenv_gotoolpath.goToolPath(stdgo.Go.asInterface(_t))?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-f={{context.Compiler}}:{{.Export}}" : stdgo.GoString), ("math/big" : stdgo.GoString)).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("go list %s: %v\n%s" : stdgo.GoString), stdgo.Go.toInterface(("math/big" : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
        };
        var _export = (stdgo._internal.strings.Strings_trimspace.trimSpace((_out : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_export?.__copy__(), (":" : stdgo.GoString)), _compiler:stdgo.GoString = __tmp__._0, _target:stdgo.GoString = __tmp__._1, __6:Bool = __tmp__._2;
        if (_compiler == (("gccgo" : stdgo.GoString))) {
            @:check2r _t.skip(stdgo.Go.toInterface(("golang.org/issue/22500" : stdgo.GoString)));
        };
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        @:check2r _t.run(("LookupDefault" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _imp = (stdgo._internal.go.importer.Importer_forcompiler.forCompiler(_fset, _compiler?.__copy__(), null) : stdgo._internal.go.types.Types_importer.Importer);
            var __tmp__ = _imp.import_(("math/big" : stdgo.GoString)), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (@:check2r _pkg.path() != (("math/big" : stdgo.GoString))) {
                @:check2r _t.fatalf(("Path() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _pkg.path()), stdgo.Go.toInterface(("math/big" : stdgo.GoString)));
            };
            var _mathBigInt = (@:check2r @:check2r _pkg.scope().lookup(("Int" : stdgo.GoString)) : stdgo._internal.go.types.Types_object.Object);
            var _posn = (@:check2r _fset.position(_mathBigInt.pos())?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            var _filename = (stdgo._internal.strings.Strings_replace.replace(_posn.filename?.__copy__(), ("$GOROOT" : stdgo.GoString), stdgo._internal.internal.testenv.Testenv_goroot.gOROOT(stdgo.Go.asInterface(_t))?.__copy__(), (1 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("can\'t read file containing declaration of math/big.Int: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            var _lines = stdgo._internal.strings.Strings_split.split((_data : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
            if (((_posn.line > (_lines.length) : Bool) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lines[(_posn.line - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("type Int" : stdgo.GoString)) : Bool)) {
                @:check2r _t.fatalf(("Object %v position %s does not contain its declaration" : stdgo.GoString), stdgo.Go.toInterface(_mathBigInt), stdgo.Go.toInterface(stdgo.Go.asInterface(_posn)));
            };
        });
        @:check2r _t.run(("LookupCustom" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            if (true) {
                @:check2r _t.skip(stdgo.Go.toInterface(("not supported by GOEXPERIMENT=unified; see go.dev/cl/406319" : stdgo.GoString)));
            };
            var _lookup = (function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                if (_path != (("math/bigger" : stdgo.GoString))) {
                    @:check2r _t.fatalf(("lookup called with unexpected path %q" : stdgo.GoString), stdgo.Go.toInterface(_path));
                };
                var __tmp__ = stdgo._internal.os.Os_open.open(_target?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
                return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
            } : stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; });
            var _imp = (stdgo._internal.go.importer.Importer_forcompiler.forCompiler(_fset, _compiler?.__copy__(), _lookup) : stdgo._internal.go.types.Types_importer.Importer);
            var __tmp__ = _imp.import_(("math/bigger" : stdgo.GoString)), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (@:check2r _pkg.path() != (("math/bigger" : stdgo.GoString))) {
                @:check2r _t.fatalf(("Path() = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _pkg.path()), stdgo.Go.toInterface(("math/bigger" : stdgo.GoString)));
            };
        });
    }
