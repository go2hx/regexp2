package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.Context_asInterface) class Context_static_extension {
    @:keep
    @:tdfield
    static public function _goodOSArchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_name?.__copy__(), ("." : stdgo.GoString));
            _name = @:tmpset0 __tmp__._0?.__copy__();
        };
        var _i = (stdgo._internal.strings.Strings_index.index(_name?.__copy__(), ("_" : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return true;
        };
        _name = (_name.__slice__(_i) : stdgo.GoString)?.__copy__();
        var _l = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), ("_" : stdgo.GoString));
        {
            var _n = (_l.length : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == ("test" : stdgo.GoString)) : Bool)) {
                _l = (_l.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _n = (_l.length : stdgo.GoInt);
        if ((((_n >= (2 : stdgo.GoInt) : Bool) && (stdgo._internal.go.build.Build__knownos._knownOS[_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool) && (stdgo._internal.go.build.Build__knownarch._knownArch[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool)) {
            if (_allTags != null) {
                _allTags[_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]] = true;
            };
            return (@:check2r _ctxt._matchTag(_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags) && @:check2r _ctxt._matchTag(_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags) : Bool);
        };
        if (((_n >= (1 : stdgo.GoInt) : Bool) && (((stdgo._internal.go.build.Build__knownos._knownOS[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) || (stdgo._internal.go.build.Build__knownarch._knownArch[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool)) : Bool)) {
            return @:check2r _ctxt._matchTag(_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags);
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _matchTag( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if (_allTags != null) {
            _allTags[_name] = true;
        };
        if (((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled && (_name == ("cgo" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if (((_name == ((@:checkr _ctxt ?? throw "null pointer dereference").gOOS) || _name == ((@:checkr _ctxt ?? throw "null pointer dereference").gOARCH) : Bool) || (_name == (@:checkr _ctxt ?? throw "null pointer dereference").compiler) : Bool)) {
            return true;
        };
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("android" : stdgo.GoString)) && (_name == ("linux" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("illumos" : stdgo.GoString)) && (_name == ("solaris" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("ios" : stdgo.GoString)) && (_name == ("darwin" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if (((_name == ("unix" : stdgo.GoString)) && (stdgo._internal.go.build.Build__unixos._unixOS[(@:checkr _ctxt ?? throw "null pointer dereference").gOOS] ?? false) : Bool)) {
            return true;
        };
        if (_name == (("boringcrypto" : stdgo.GoString))) {
            _name = ("goexperiment.boringcrypto" : stdgo.GoString);
        };
        for (__0 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").buildTags) {
            if (_tag == (_name)) {
                return true;
            };
        };
        for (__1 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").toolTags) {
            if (_tag == (_name)) {
                return true;
            };
        };
        for (__2 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").releaseTags) {
            if (_tag == (_name)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _eval( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        return _x.eval(function(_tag:stdgo.GoString):Bool {
            return @:check2r _ctxt._matchTag(_tag?.__copy__(), _allTags);
        });
    }
    @:keep
    @:tdfield
    static public function _matchAuto( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _text:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if (stdgo._internal.strings.Strings_containsany.containsAny(_text?.__copy__(), ("&|()" : stdgo.GoString))) {
            _text = (("//go:build " : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _text = (("// +build " : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_text?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        return @:check2r _ctxt._eval(_x, _allTags);
    }
    @:keep
    @:tdfield
    static public function _makePathsAbsolute( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _args:stdgo.Slice<stdgo.GoString>, _srcDir:stdgo.GoString):Void {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _nextPath = (false : Bool);
        for (_i => _arg in _args) {
            if (_nextPath) {
                if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_arg?.__copy__())) {
                    _args[(_i : stdgo.GoInt)] = stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), _arg?.__copy__())?.__copy__();
                };
                _nextPath = false;
            } else if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-I" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-L" : stdgo.GoString)) : Bool)) {
                if ((_arg.length) == ((2 : stdgo.GoInt))) {
                    _nextPath = true;
                } else {
                    if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs((_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                        _args[(_i : stdgo.GoInt)] = ((_arg.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), (_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _saveCgo( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _filename:stdgo.GoString, _di:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _cg:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo.Error {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _text = (@:check2r _cg.text()?.__copy__() : stdgo.GoString);
        for (__0 => _line in stdgo._internal.strings.Strings_split.split(_text?.__copy__(), ("\n" : stdgo.GoString))) {
            var _orig = (_line?.__copy__() : stdgo.GoString);
            _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
            if (((((_line.length) < (5 : stdgo.GoInt) : Bool) || (_line.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != (("#cgo" : stdgo.GoString)) : Bool) || (((_line[(4 : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_line[(4 : stdgo.GoInt)] != (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(stdgo._internal.strings.Strings_trimspace.trimSpace((_line.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__(), (":" : stdgo.GoString)), _line:stdgo.GoString = __tmp__._0, _argstr:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            var _f = stdgo._internal.strings.Strings_fields.fields(_line?.__copy__());
            if (((_f.length) < (1 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            var __0 = (_f.__slice__(0, ((_f.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), __1 = (_f[((_f.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
var _verb = __1, _cond = __0;
            if (((_cond.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ok = (false : Bool);
                for (__1 => _c in _cond) {
                    if (@:check2r _ctxt._matchAuto(_c?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, Bool>))) {
                        _ok = true;
                        break;
                    };
                };
                if (!_ok) {
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.go.build.Build__splitquoted._splitQuoted(_argstr?.__copy__()), _args:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            for (_i => _arg in _args) {
                {
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__expandsrcdir._expandSrcDir(_arg?.__copy__(), (@:checkr _di ?? throw "null pointer dereference").dir?.__copy__());
                        _arg = @:tmpset0 __tmp__._0?.__copy__();
                        _ok = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: malformed #cgo argument: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_arg));
                    };
                };
                _args[(_i : stdgo.GoInt)] = _arg?.__copy__();
            };
            {
                final __value__ = _verb;
                if (__value__ == (("CFLAGS" : stdgo.GoString)) || __value__ == (("CPPFLAGS" : stdgo.GoString)) || __value__ == (("CXXFLAGS" : stdgo.GoString)) || __value__ == (("FFLAGS" : stdgo.GoString)) || __value__ == (("LDFLAGS" : stdgo.GoString))) {
                    @:check2r _ctxt._makePathsAbsolute(_args, (@:checkr _di ?? throw "null pointer dereference").dir?.__copy__());
                };
            };
            {
                final __value__ = _verb;
                if (__value__ == (("CFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("CPPFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCPPFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCPPFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("CXXFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCXXFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCXXFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("FFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoFFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoFFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("LDFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoLDFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoLDFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("pkg-config" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoPkgConfig = ((@:checkr _di ?? throw "null pointer dereference").cgoPkgConfig.__append__(...(_args : Array<stdgo.GoString>)));
                } else {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo verb: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldBuild( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _content:stdgo.Slice<stdgo.GoUInt8>, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _shouldBuild = false, _binaryOnly = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.go.build.Build__parsefileheader._parseFileHeader(_content), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _goBuild:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _sawBinaryOnly:Bool = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : false, _1 : false, _2 : _err };
                _shouldBuild = __tmp__._0;
                _binaryOnly = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (_goBuild != null) {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse((_goBuild : stdgo.GoString)?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : false, _1 : false, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("parsing //go:build line: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    _shouldBuild = __tmp__._0;
                    _binaryOnly = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _shouldBuild = @:check2r _ctxt._eval(_x, _allTags);
        } else {
            _shouldBuild = true;
            var _p = _content;
            while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
                var _line = _p;
                {
                    var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        {
                            final __tmp__0 = (_line.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                            final __tmp__1 = (_p.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _line = __tmp__0;
                            _p = __tmp__1;
                        };
                    } else {
                        _p = (_p.__slice__((_p.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
                if ((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, stdgo._internal.go.build.Build__slashslash._slashSlash) || !stdgo._internal.bytes.Bytes_contains.contains(_line, stdgo._internal.go.build.Build__plusbuild._plusBuild) : Bool)) {
                    continue;
                };
                var _text = ((_line : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (!stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_text?.__copy__())) {
                    continue;
                };
                {
                    var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_text?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        if (!@:check2r _ctxt._eval(_x, _allTags)) {
                            _shouldBuild = false;
                        };
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _shouldBuild, _1 : _sawBinaryOnly, _2 : (null : stdgo.Error) };
            _shouldBuild = __tmp__._0;
            _binaryOnly = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _matchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>, _binaryOnly:stdgo.Pointer<Bool>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("_" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("." : stdgo.GoString)) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (_name.length);
        };
        var _ext = ((_name.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_ext != (".go" : stdgo.GoString)) && (stdgo._internal.go.build.Build__filelistforext._fileListForExt((stdgo.Go.setRef(stdgo._internal.go.build.Build__dummypkg._dummyPkg) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>), _ext?.__copy__()) == null || (stdgo._internal.go.build.Build__filelistforext._fileListForExt((stdgo.Go.setRef(stdgo._internal.go.build.Build__dummypkg._dummyPkg) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>), _ext?.__copy__()) : Dynamic).__nil__) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if ((!@:check2r _ctxt._goodOSArchFile(_name?.__copy__(), _allTags) && !(@:checkr _ctxt ?? throw "null pointer dereference").useAllFiles : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _info = (stdgo.Go.setRef(({ _name : @:check2r _ctxt._joinPath(_dir?.__copy__(), _name?.__copy__())?.__copy__(), _fset : _fset } : stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo)) : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>);
        if (_ext == ((".syso" : stdgo.GoString))) {
            return { _0 : _info, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r _ctxt._openFile((@:checkr _info ?? throw "null pointer dereference")._name?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), (".go" : stdgo.GoString))) {
            _err = stdgo._internal.go.build.Build__readgoinfo._readGoInfo(_f, _info);
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), ("_test.go" : stdgo.GoString))) {
                _binaryOnly = (null : stdgo.Pointer<Bool>);
            };
        } else {
            _binaryOnly = (null : stdgo.Pointer<Bool>);
            {
                var __tmp__ = stdgo._internal.go.build.Build__readcomments._readComments(_f);
                (@:checkr _info ?? throw "null pointer dereference")._header = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        _f.close();
        if (_err != null) {
            return { _0 : _info, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("read %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _info ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err)) };
        };
        var __tmp__ = @:check2r _ctxt._shouldBuild((@:checkr _info ?? throw "null pointer dereference")._header, _allTags), _ok:Bool = __tmp__._0, _sawBinaryOnly:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
        };
        if ((!_ok && !(@:checkr _ctxt ?? throw "null pointer dereference").useAllFiles : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (((_binaryOnly != null) && _sawBinaryOnly : Bool)) {
            _binaryOnly.value = true;
        };
        return { _0 : _info, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function matchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _match = false, _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _ctxt._matchFile(_dir?.__copy__(), _name?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, Bool>), (null : stdgo.Pointer<Bool>), null), _info:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : (_info != null && ((_info : Dynamic).__nil__ == null || !(_info : Dynamic).__nil__)), _1 : _err };
            _match = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _importGo( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):stdgo.Error {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if ((((((((((((_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) || (_mode & (8u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").joinPath != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").splitPathList != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").isAbsPath != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").isDir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").hasSubdir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").readDir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").openFile != null : Bool) || !stdgo._internal.go.build.Build__equal._equal((@:checkr _ctxt ?? throw "null pointer dereference").toolTags, stdgo._internal.go.build.Build__defaulttooltags._defaultToolTags) : Bool) || !stdgo._internal.go.build.Build__equal._equal((@:checkr _ctxt ?? throw "null pointer dereference").releaseTags, stdgo._internal.go.build.Build__defaultreleasetags._defaultReleaseTags) : Bool)) {
            return stdgo._internal.go.build.Build__errnomodules._errNoModules;
        };
        if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.go.build.Build__errnomodules._errNoModules;
        };
        var _go111Module = (stdgo._internal.os.Os_getenv.getenv(("GO111MODULE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            final __value__ = _go111Module;
            if (__value__ == (("off" : stdgo.GoString))) {
                return stdgo._internal.go.build.Build__errnomodules._errNoModules;
            } else {};
        };
        if (_srcDir != ((stdgo.Go.str() : stdgo.GoString))) {
            var _absSrcDir:stdgo.GoString = ("" : stdgo.GoString);
            if (stdgo._internal.path.filepath.Filepath_isabs.isAbs(_srcDir?.__copy__())) {
                _absSrcDir = _srcDir?.__copy__();
            } else if ((@:checkr _ctxt ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: Dir is non-empty, so relative srcDir is not allowed: %v" : stdgo.GoString), stdgo.Go.toInterface(_srcDir));
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(_srcDir?.__copy__());
                    _absSrcDir = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            };
            {
                var __tmp__ = @:check2r _ctxt._hasSubdir(stdgo._internal.path.filepath.Filepath_join.join((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__(), _absSrcDir?.__copy__()), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            };
        };
        {
            var _dir = (@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__() : stdgo.GoString);
            if (@:check2r _ctxt._isDir(_dir?.__copy__())) {
                return stdgo._internal.go.build.Build__errnomodules._errNoModules;
            };
        };
        if (_go111Module == (("auto" : stdgo.GoString))) {
            var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.Error = (null : stdgo.Error);
var _err = __1, _parent = __0;
            if ((@:checkr _ctxt ?? throw "null pointer dereference").dir == ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.os.Os_getwd.getwd();
                    _parent = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs((@:checkr _ctxt ?? throw "null pointer dereference").dir?.__copy__());
                    _parent = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
            while (true) {
                {
                    var __tmp__ = @:check2r _ctxt._openFile(@:check2r _ctxt._joinPath(_parent?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        var __tmp__ = _f.read(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _f.close();
                        if (((_err == null) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                            break;
                        };
                    };
                };
                var _d = (stdgo._internal.path.filepath.Filepath_dir.dir(_parent?.__copy__())?.__copy__() : stdgo.GoString);
                if (((_d.length) >= (_parent.length) : Bool)) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
                _parent = _d?.__copy__();
            };
        };
        var _goCmd = (stdgo._internal.path.filepath.Filepath_join.join((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("bin" : stdgo.GoString), ("go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_goCmd?.__copy__(), ("list" : stdgo.GoString), ("-e" : stdgo.GoString), (("-compiler=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").compiler?.__copy__() : stdgo.GoString)?.__copy__(), (("-tags=" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join((@:checkr _ctxt ?? throw "null pointer dereference").buildTags, ("," : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), (("-installsuffix=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").installSuffix?.__copy__() : stdgo.GoString)?.__copy__(), ("-f={{.Dir}}\n{{.ImportPath}}\n{{.Root}}\n{{.Goroot}}\n{{if .Error}}{{.Error}}{{end}}\n" : stdgo.GoString), ("--" : stdgo.GoString), _path?.__copy__());
        if ((@:checkr _ctxt ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _cmd ?? throw "null pointer dereference").dir = (@:checkr _ctxt ?? throw "null pointer dereference").dir?.__copy__();
        };
        var __0:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder), __1:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
var _stderr = __1, _stdout = __0;
        (@:checkr _cmd ?? throw "null pointer dereference").stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_stdout) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        (@:checkr _cmd ?? throw "null pointer dereference").stderr = stdgo.Go.asInterface((stdgo.Go.setRef(_stderr) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        var _cgo = (("0" : stdgo.GoString) : stdgo.GoString);
        if ((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled) {
            _cgo = ("1" : stdgo.GoString);
        };
        (@:checkr _cmd ?? throw "null pointer dereference").env = (@:check2r _cmd.environ_().__append__((("GOOS=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString)?.__copy__(), (("GOARCH=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString)?.__copy__(), (("GOROOT=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__() : stdgo.GoString)?.__copy__(), (("GOPATH=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOPATH?.__copy__() : stdgo.GoString)?.__copy__(), (("CGO_ENABLED=" : stdgo.GoString) + _cgo?.__copy__() : stdgo.GoString)?.__copy__()));
        {
            var _err = (@:check2r _cmd.run() : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: go list %s: %v\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((@:check2 _stderr.string() : stdgo.GoString)));
            };
        };
        var _f = stdgo._internal.strings.Strings_splitn.splitN((@:check2 _stdout.string() : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString), (5 : stdgo.GoInt));
        if ((_f.length) != ((5 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: importGo %s: unexpected output:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((@:check2 _stdout.string() : stdgo.GoString)));
        };
        var _dir = (_f[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        var _errStr = (stdgo._internal.strings.Strings_trimspace.trimSpace(_f[(4 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        if (((_errStr != (stdgo.Go.str() : stdgo.GoString)) && (_dir == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(_errStr?.__copy__());
        };
        (@:checkr _p ?? throw "null pointer dereference").dir = _dir?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").importPath = _f[(1 : stdgo.GoInt)]?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").root = _f[(2 : stdgo.GoInt)]?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").goroot = _f[(3 : stdgo.GoInt)] == (("true" : stdgo.GoString));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function import_( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _i_4410460_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4409475:stdgo.Error = (null : stdgo.Error);
        var _root_4402291:stdgo.GoString = ("" : stdgo.GoString);
        var _rootsrc_4398493:stdgo.GoString = ("" : stdgo.GoString);
        var _root_4398470:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4410608_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _imp_4410453:stdgo._internal.go.build.Build_t_fileimport.T_fileImport = ({} : stdgo._internal.go.build.Build_t_fileimport.T_fileImport);
        var _fileList_4409587:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        var _isCgo_4409232:Bool = false;
        var _testEmbedPos_4405941:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var sfiles_4405748:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _isDir_4402961:Bool = false;
        var _searchVendor_4399960:(stdgo.GoString, Bool) -> Bool = null;
        var _setPkga_4397237:() -> Void = null;
        var _err_4408761:stdgo.Error = (null : stdgo.Error);
        var _importPos_4406044:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _xTestEmbedPos_4405992:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _err_4405413:stdgo.Error = (null : stdgo.Error);
        var _dir_4402317:stdgo.GoString = ("" : stdgo.GoString);
        var _sub_4398243:stdgo.GoString = ("" : stdgo.GoString);
        var _emb_4410601:stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed = ({} : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed);
        var _i_4406271_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _badGoFile_4405537:(stdgo.GoString, stdgo.Error) -> Void = null;
        var _paths_4403278:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _root_4398195:stdgo.GoString = ("" : stdgo.GoString);
        var _badGoFiles_4405500:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _dir_4398791:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4398467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_4398248:Bool = false;
        var _inTestdata_4397980:stdgo.GoString -> Bool = null;
        var _i_4409263_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pkg_4407612:stdgo.GoString = ("" : stdgo.GoString);
        var _name_4406480:stdgo.GoString = ("" : stdgo.GoString);
        var _embedPos_4405894:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _badGoError_4405482:stdgo.Error = (null : stdgo.Error);
        var _root_4400865:stdgo.GoString = ("" : stdgo.GoString);
        var _pkga_4396806:stdgo.GoString = ("" : stdgo.GoString);
        var _data_4407369:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _directives_4409666:stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
        var _importMap_4409612:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _d_4406266:stdgo._internal.io.fs.Fs_direntry.DirEntry = (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
        var _isDir_4401586:Bool = false;
        var _sub_4398537:stdgo.GoString = ("" : stdgo.GoString);
        var _isTest_4407790:Bool = false;
        var _dir_4403335:stdgo.GoString = ("" : stdgo.GoString);
        var _format_4403295:stdgo.GoString = ("" : stdgo.GoString);
        var _gopath_4399631:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _qcom_4408696:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4406529:stdgo.Error = (null : stdgo.Error);
        var _gorootFirst_4401326:Bool = false;
        var _embedMap_4409623:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _imp_4409256:stdgo._internal.go.build.Build_t_fileimport.T_fileImport = ({} : stdgo._internal.go.build.Build_t_fileimport.T_fileImport);
        var _info_4406523:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo> = (null : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>);
        var _fset_4406231:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        var _i_4400873_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4410806 = 0i32;
        var _isXTest_4407838:Bool = false;
        var _isDir_4402360:Bool = false;
        var _ok_4398542:Bool = false;
        var _binaryOnly_4397485:Bool = false;
        var _line_4408702:stdgo.GoInt = (0 : stdgo.GoInt);
        var _filename_4407375:stdgo.GoString = ("" : stdgo.GoString);
        var _list_4407267:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        var _tried_4399776:stdgo._internal.go.build.Build_t__struct_0.T__struct_0 = ({ _vendor : (null : stdgo.Slice<stdgo.GoString>), _goroot : ("" : stdgo.GoString), _gopath : (null : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.go.build.Build_t__struct_0.T__struct_0);
        var _p_4396653:stdgo.Ref<stdgo._internal.go.build.Build_package.Package> = (null : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        var _keys_4410795:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _xTestImportPos_4406144:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _firstCommentFile_4405869:stdgo.GoString = ("" : stdgo.GoString);
        var _firstFile_4405858:stdgo.GoString = ("" : stdgo.GoString);
        var _all_4398440:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _suffix_4396837:stdgo.GoString = ("" : stdgo.GoString);
        var _tag_4410799:stdgo.GoString = ("" : stdgo.GoString);
        var _ext_4406499:stdgo.GoString = ("" : stdgo.GoString);
        var _dir_4403643:stdgo.GoString = ("" : stdgo.GoString);
        var _i_4402299_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4398936_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pkgerr_4396823:stdgo.Error = (null : stdgo.Error);
        var _pkgtargetroot_4396780:stdgo.GoString = ("" : stdgo.GoString);
        var _com_4408756:stdgo.GoString = ("" : stdgo.GoString);
        var _dirs_4405407:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        var _i_4403650_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4403342_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dir_4401500:stdgo.GoString = ("" : stdgo.GoString);
        var _dir_4398960:stdgo.GoString = ("" : stdgo.GoString);
        var _allTags_4406197:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _testImportPos_4406092:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _dir_4402877:stdgo.GoString = ("" : stdgo.GoString);
        var _err_4399501:stdgo.Error = (null : stdgo.Error);
        var _earlyRoot_4398923:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _p_4396653 = (stdgo.Go.setRef(({ importPath : _path?.__copy__() } : stdgo._internal.go.build.Build_package.Package)) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
                    if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4396706i32;
                    } else {
                        _gotoNext = 4396776i32;
                    };
                } else if (__value__ == (4396706i32)) {
                    return { _0 : _p_4396653, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: invalid import path" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                    _gotoNext = 4396776i32;
                } else if (__value__ == (4396776i32)) {
                    _suffix_4396837 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    if ((@:checkr _ctxt ?? throw "null pointer dereference").installSuffix != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4396879i32;
                    } else {
                        _gotoNext = 4396921i32;
                    };
                } else if (__value__ == (4396879i32)) {
                    _suffix_4396837 = (("_" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").installSuffix?.__copy__() : stdgo.GoString)?.__copy__();
                    _gotoNext = 4396921i32;
                } else if (__value__ == (4396921i32)) {
                    _gotoNext = 4396921i32;
                    {
                        final __value__ = (@:checkr _ctxt ?? throw "null pointer dereference").compiler;
                        if (__value__ == (("gccgo" : stdgo.GoString))) {
                            _gotoNext = 4396945i32;
                        } else if (__value__ == (("gc" : stdgo.GoString))) {
                            _gotoNext = 4397032i32;
                        } else {
                            _gotoNext = 4397110i32;
                        };
                    };
                } else if (__value__ == (4396945i32)) {
                    _pkgtargetroot_4396780 = ((((("pkg/gccgo_" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString) + _suffix_4396837?.__copy__() : stdgo.GoString)?.__copy__();
                    _gotoNext = 4397237i32;
                } else if (__value__ == (4397032i32)) {
                    _pkgtargetroot_4396780 = ((((("pkg/" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString) + _suffix_4396837?.__copy__() : stdgo.GoString)?.__copy__();
                    _gotoNext = 4397237i32;
                } else if (__value__ == (4397110i32)) {
                    _pkgerr_4396823 = stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: unknown compiler %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((@:checkr _ctxt ?? throw "null pointer dereference").compiler));
                    _gotoNext = 4397237i32;
                } else if (__value__ == (4397237i32)) {
                    _setPkga_4397237 = function():Void {
                        {
                            final __value__ = (@:checkr _ctxt ?? throw "null pointer dereference").compiler;
                            if (__value__ == (("gccgo" : stdgo.GoString))) {
                                var __tmp__ = stdgo._internal.path.Path_split.split((@:checkr _p_4396653 ?? throw "null pointer dereference").importPath?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1;
                                _pkga_4396806 = (((((_pkgtargetroot_4396780 + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dir?.__copy__() : stdgo.GoString) + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _elem?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                            } else if (__value__ == (("gc" : stdgo.GoString))) {
                                _pkga_4396806 = (((_pkgtargetroot_4396780 + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _p_4396653 ?? throw "null pointer dereference").importPath?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                            };
                        };
                    };
                    _setPkga_4397237();
                    _binaryOnly_4397485 = false;
                    if (stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__())) {
                        _gotoNext = 4397529i32;
                    } else {
                        _gotoNext = 4399381i32;
                    };
                } else if (__value__ == (4397529i32)) {
                    _pkga_4396806 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    if (_srcDir == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4397601i32;
                    } else {
                        _gotoNext = 4397690i32;
                    };
                } else if (__value__ == (4397601i32)) {
                    return { _0 : _p_4396653, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: import relative to unknown directory" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                    _gotoNext = 4397690i32;
                } else if (__value__ == (4397690i32)) {
                    if (!@:check2r _ctxt._isAbsPath(_path?.__copy__())) {
                        _gotoNext = 4397715i32;
                    } else {
                        _gotoNext = 4397980i32;
                    };
                } else if (__value__ == (4397715i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").dir = @:check2r _ctxt._joinPath(_srcDir?.__copy__(), _path?.__copy__())?.__copy__();
                    _gotoNext = 4397980i32;
                } else if (__value__ == (4397980i32)) {
                    _inTestdata_4397980 = function(_sub:stdgo.GoString):Bool {
                        return (((stdgo._internal.strings.Strings_contains.contains(_sub?.__copy__(), ("/testdata/" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_sub?.__copy__(), ("/testdata" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_sub?.__copy__(), ("testdata/" : stdgo.GoString)) : Bool) || (_sub == ("testdata" : stdgo.GoString)) : Bool);
                    };
                    if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4398190i32;
                    } else {
                        _gotoNext = 4398440i32;
                    };
                } else if (__value__ == (4398190i32)) {
                    _root_4398195 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                    {
                        {
                            var __tmp__ = @:check2r _ctxt._hasSubdir(_root_4398195?.__copy__(), (@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__());
                            _sub_4398243 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_4398248 = @:tmpset0 __tmp__._1;
                        };
                        if ((_ok_4398248 && !_inTestdata_4397980(_sub_4398243?.__copy__()) : Bool)) {
                            _gotoNext = 4398306i32;
                        } else {
                            _gotoNext = 4398440i32;
                        };
                    };
                } else if (__value__ == (4398306i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").goroot = true;
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").importPath = _sub_4398243?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                    _setPkga_4397237();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4398440i32)) {
                    _all_4398440 = @:check2r _ctxt._gopath();
                    if ((0i32 : stdgo.GoInt) < (_all_4398440.length)) {
                        _gotoNext = 4399266i32;
                    } else {
                        _gotoNext = 4403968i32;
                    };
                } else if (__value__ == (4398467i32)) {
                    _i_4398467++;
                    _gotoNext = 4399267i32;
                } else if (__value__ == (4398488i32)) {
                    _root_4398470 = _all_4398440[(_i_4398467 : stdgo.GoInt)]?.__copy__();
                    _rootsrc_4398493 = @:check2r _ctxt._joinPath(_root_4398470?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                    {
                        {
                            var __tmp__ = @:check2r _ctxt._hasSubdir(_rootsrc_4398493?.__copy__(), (@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__());
                            _sub_4398537 = @:tmpset0 __tmp__._0?.__copy__();
                            _ok_4398542 = @:tmpset0 __tmp__._1;
                        };
                        if ((_ok_4398542 && !_inTestdata_4397980(_sub_4398537?.__copy__()) : Bool)) {
                            _gotoNext = 4398603i32;
                        } else {
                            _gotoNext = 4398467i32;
                        };
                    };
                } else if (__value__ == (4398603i32)) {
                    if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != ("gccgo" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4398781i32;
                    } else {
                        _gotoNext = 4398916i32;
                    };
                } else if (__value__ == (4398781i32)) {
                    {
                        _dir_4398791 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _sub_4398537?.__copy__())?.__copy__();
                        if (@:check2r _ctxt._isDir(_dir_4398791?.__copy__())) {
                            _gotoNext = 4398854i32;
                        } else {
                            _gotoNext = 4398916i32;
                        };
                    };
                } else if (__value__ == (4398854i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").conflictDir = _dir_4398791?.__copy__();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4398916i32)) {
                    if ((0i32 : stdgo.GoInt) < ((_all_4398440.__slice__(0, _i_4398467) : stdgo.Slice<stdgo.GoString>).length)) {
                        _gotoNext = 4399076i32;
                    } else {
                        _gotoNext = 4399170i32;
                    };
                } else if (__value__ == (4398920i32)) {
                    _i_4398936_0++;
                    _gotoNext = 4399077i32;
                } else if (__value__ == (4398950i32)) {
                    _earlyRoot_4398923 = (_all_4398440.__slice__(0, _i_4398467) : stdgo.Slice<stdgo.GoString>)[(_i_4398936_0 : stdgo.GoInt)]?.__copy__();
                    {
                        _dir_4398960 = @:check2r _ctxt._joinPath(_earlyRoot_4398923?.__copy__(), ("src" : stdgo.GoString), _sub_4398537?.__copy__())?.__copy__();
                        if (@:check2r _ctxt._isDir(_dir_4398960?.__copy__())) {
                            _gotoNext = 4399021i32;
                        } else {
                            _gotoNext = 4398920i32;
                        };
                    };
                } else if (__value__ == (4399021i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").conflictDir = _dir_4398960?.__copy__();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4399076i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_all_4398440.__slice__(0, _i_4398467) : stdgo.Slice<stdgo.GoString>)[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_4398936_0 = __tmp__0;
                        _earlyRoot_4398923 = __tmp__1;
                    };
                    _gotoNext = 4399077i32;
                } else if (__value__ == (4399077i32)) {
                    if (_i_4398936_0 < ((_all_4398440.__slice__(0, _i_4398467) : stdgo.Slice<stdgo.GoString>).length)) {
                        _gotoNext = 4398950i32;
                    } else {
                        _gotoNext = 4399170i32;
                    };
                } else if (__value__ == (4399170i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").importPath = _sub_4398537?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").root = _root_4398470?.__copy__();
                    _setPkga_4397237();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4399266i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _all_4398440[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_4398467 = __tmp__0;
                        _root_4398470 = __tmp__1;
                    };
                    _gotoNext = 4399267i32;
                } else if (__value__ == (4399267i32)) {
                    if (_i_4398467 < (_all_4398440.length)) {
                        _gotoNext = 4398488i32;
                    } else {
                        _gotoNext = 4403968i32;
                    };
                } else if (__value__ == (4399381i32)) {
                    _gotoNext = 4399381i32;
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("/" : stdgo.GoString))) {
                        _gotoNext = 4399417i32;
                    } else {
                        _gotoNext = 4399498i32;
                    };
                } else if (__value__ == (4399417i32)) {
                    return { _0 : _p_4396653, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: cannot import absolute path" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                    _gotoNext = 4399498i32;
                } else if (__value__ == (4399498i32)) {
                    {
                        _err_4399501 = @:check2r _ctxt._importGo(_p_4396653, _path?.__copy__(), _srcDir?.__copy__(), _mode);
                        if (_err_4399501 == null) {
                            _gotoNext = 4399557i32;
                        } else if (stdgo.Go.toInterface(_err_4399501) != (stdgo.Go.toInterface(stdgo._internal.go.build.Build__errnomodules._errNoModules))) {
                            _gotoNext = 4399605i32;
                        } else {
                            _gotoNext = 4399631i32;
                        };
                    };
                } else if (__value__ == (4399557i32)) {
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4399605i32)) {
                    return { _0 : _p_4396653, _1 : _err_4399501 };
                    _gotoNext = 4399631i32;
                } else if (__value__ == (4399631i32)) {
                    _gopath_4399631 = @:check2r _ctxt._gopath();
                    if ((((_mode & (8u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) == (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) && (_srcDir != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4399955i32;
                    } else {
                        _gotoNext = 4401000i32;
                    };
                } else if (__value__ == (4399955i32)) {
                    _searchVendor_4399960 = function(_root:stdgo.GoString, _isGoroot:Bool):Bool {
                        var __tmp__ = @:check2r _ctxt._hasSubdir(_root?.__copy__(), _srcDir?.__copy__()), _sub:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (((!_ok || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_sub?.__copy__(), ("src/" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_sub?.__copy__(), ("/testdata/" : stdgo.GoString)) : Bool)) {
                            return false;
                        };
                    };
                    if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString)) && (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _searchVendor_4399960((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), true) : Bool)) {
                        _gotoNext = 4400833i32;
                    } else {
                        _gotoNext = 4400858i32;
                    };
                } else if (__value__ == (4400833i32)) {
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4400858i32)) {
                    if ((0i32 : stdgo.GoInt) < (_gopath_4399631.length)) {
                        _gotoNext = 4400947i32;
                    } else {
                        _gotoNext = 4401000i32;
                    };
                } else if (__value__ == (4400862i32)) {
                    _i_4400873_0++;
                    _gotoNext = 4400948i32;
                } else if (__value__ == (4400886i32)) {
                    _root_4400865 = _gopath_4399631[(_i_4400873_0 : stdgo.GoInt)]?.__copy__();
                    if (_searchVendor_4399960(_root_4400865?.__copy__(), false)) {
                        _gotoNext = 4400921i32;
                    } else {
                        _gotoNext = 4400862i32;
                    };
                } else if (__value__ == (4400921i32)) {
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4400947i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _gopath_4399631[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_4400873_0 = __tmp__0;
                        _root_4400865 = __tmp__1;
                    };
                    _gotoNext = 4400948i32;
                } else if (__value__ == (4400948i32)) {
                    if (_i_4400873_0 < (_gopath_4399631.length)) {
                        _gotoNext = 4400886i32;
                    } else {
                        _gotoNext = 4401000i32;
                    };
                } else if (__value__ == (4401000i32)) {
                    if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4401021i32;
                    } else {
                        _gotoNext = 4402284i32;
                    };
                } else if (__value__ == (4401021i32)) {
                    _gorootFirst_4401326 = ((_srcDir == (stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("vendor/" : stdgo.GoString)) : Bool);
                    if (!_gorootFirst_4401326) {
                        _gotoNext = 4401412i32;
                    } else {
                        _gotoNext = 4401479i32;
                    };
                } else if (__value__ == (4401412i32)) {
                    {
                        var __tmp__ = @:check2r _ctxt._hasSubdir((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _srcDir?.__copy__());
                        _gorootFirst_4401326 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 4401479i32;
                } else if (__value__ == (4401479i32)) {
                    if (_gorootFirst_4401326) {
                        _gotoNext = 4401494i32;
                    } else {
                        _gotoNext = 4401882i32;
                    };
                } else if (__value__ == (4401494i32)) {
                    _dir_4401500 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                    if ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString))) {
                        _gotoNext = 4401579i32;
                    } else {
                        _gotoNext = 4401855i32;
                    };
                } else if (__value__ == (4401579i32)) {
                    _isDir_4401586 = @:check2r _ctxt._isDir(_dir_4401500?.__copy__());
                    _binaryOnly_4397485 = (((!_isDir_4401586 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_4396806 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && @:check2r _ctxt._isFile(@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _pkga_4396806?.__copy__())?.__copy__()) : Bool);
                    if ((_isDir_4401586 || _binaryOnly_4397485 : Bool)) {
                        _gotoNext = 4401752i32;
                    } else {
                        _gotoNext = 4401855i32;
                    };
                } else if (__value__ == (4401752i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").dir = _dir_4401500?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").goroot = true;
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4401855i32)) {
                    _tried_4399776._goroot = _dir_4401500?.__copy__();
                    _gotoNext = 4401882i32;
                } else if (__value__ == (4401882i32)) {
                    if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && stdgo._internal.internal.goroot.Goroot_isstandardpackage.isStandardPackage((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), (@:checkr _ctxt ?? throw "null pointer dereference").compiler?.__copy__(), _path?.__copy__()) : Bool)) {
                        _gotoNext = 4401972i32;
                    } else {
                        _gotoNext = 4402284i32;
                    };
                } else if (__value__ == (4401972i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").dir = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").goroot = true;
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4402284i32)) {
                    if ((0i32 : stdgo.GoInt) < (_gopath_4399631.length)) {
                        _gotoNext = 4402616i32;
                    } else {
                        _gotoNext = 4402829i32;
                    };
                } else if (__value__ == (4402312i32)) {
                    _root_4402291 = _gopath_4399631[(_i_4402299_0 : stdgo.GoInt)]?.__copy__();
                    _dir_4402317 = @:check2r _ctxt._joinPath(_root_4402291?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                    _isDir_4402360 = @:check2r _ctxt._isDir(_dir_4402317?.__copy__());
                    _binaryOnly_4397485 = (((!_isDir_4402360 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_4396806 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && @:check2r _ctxt._isFile(@:check2r _ctxt._joinPath(_root_4402291?.__copy__(), _pkga_4396806?.__copy__())?.__copy__()) : Bool);
                    if ((_isDir_4402360 || _binaryOnly_4397485 : Bool)) {
                        _gotoNext = 4402515i32;
                    } else {
                        _gotoNext = 4402574i32;
                    };
                } else if (__value__ == (4402515i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").dir = _dir_4402317?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").root = _root_4402291?.__copy__();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4402574i32)) {
                    _tried_4399776._gopath = (_tried_4399776._gopath.__append__(_dir_4402317?.__copy__()));
                    _i_4402299_0++;
                    _gotoNext = 4402617i32;
                } else if (__value__ == (4402616i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _gopath_4399631[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_4402299_0 = __tmp__0;
                        _root_4402291 = __tmp__1;
                    };
                    _gotoNext = 4402617i32;
                } else if (__value__ == (4402617i32)) {
                    if (_i_4402299_0 < (_gopath_4399631.length)) {
                        _gotoNext = 4402312i32;
                    } else {
                        _gotoNext = 4402829i32;
                    };
                } else if (__value__ == (4402829i32)) {
                    if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && (_tried_4399776._goroot == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4402872i32;
                    } else {
                        _gotoNext = 4403274i32;
                    };
                } else if (__value__ == (4402872i32)) {
                    _dir_4402877 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                    if ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString))) {
                        _gotoNext = 4402955i32;
                    } else {
                        _gotoNext = 4403221i32;
                    };
                } else if (__value__ == (4402955i32)) {
                    _isDir_4402961 = @:check2r _ctxt._isDir(_dir_4402877?.__copy__());
                    _binaryOnly_4397485 = (((!_isDir_4402961 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_4396806 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && @:check2r _ctxt._isFile(@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _pkga_4396806?.__copy__())?.__copy__()) : Bool);
                    if ((_isDir_4402961 || _binaryOnly_4397485 : Bool)) {
                        _gotoNext = 4403125i32;
                    } else {
                        _gotoNext = 4403221i32;
                    };
                } else if (__value__ == (4403125i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").dir = _dir_4402877?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").goroot = true;
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4403221i32)) {
                    _tried_4399776._goroot = _dir_4402877?.__copy__();
                    _gotoNext = 4403274i32;
                } else if (__value__ == (4403274i32)) {
                    _format_4403295 = ("\t%s (vendor tree)" : stdgo.GoString);
                    if ((0i32 : stdgo.GoInt) < (_tried_4399776._vendor.length)) {
                        _gotoNext = 4403434i32;
                    } else {
                        _gotoNext = 4403439i32;
                    };
                } else if (__value__ == (4403361i32)) {
                    _dir_4403335 = _tried_4399776._vendor[(_i_4403342_0 : stdgo.GoInt)]?.__copy__();
                    _paths_4403278 = (_paths_4403278.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format_4403295?.__copy__(), stdgo.Go.toInterface(_dir_4403335))?.__copy__()));
                    _format_4403295 = ("\t%s" : stdgo.GoString);
                    _i_4403342_0++;
                    _gotoNext = 4403435i32;
                } else if (__value__ == (4403434i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _tried_4399776._vendor[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_4403342_0 = __tmp__0;
                        _dir_4403335 = __tmp__1;
                    };
                    _gotoNext = 4403435i32;
                } else if (__value__ == (4403435i32)) {
                    if (_i_4403342_0 < (_tried_4399776._vendor.length)) {
                        _gotoNext = 4403361i32;
                    } else {
                        _gotoNext = 4403439i32;
                    };
                } else if (__value__ == (4403439i32)) {
                    if (_tried_4399776._goroot != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4403461i32;
                    } else {
                        _gotoNext = 4403547i32;
                    };
                } else if (__value__ == (4403461i32)) {
                    _paths_4403278 = (_paths_4403278.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("\t%s (from $GOROOT)" : stdgo.GoString), stdgo.Go.toInterface(_tried_4399776._goroot))?.__copy__()));
                    _gotoNext = 4403603i32;
                } else if (__value__ == (4403547i32)) {
                    _gotoNext = 4403547i32;
                    _paths_4403278 = (_paths_4403278.__append__((("\t($GOROOT not set)" : stdgo.GoString) : stdgo.GoString)));
                    var __blank__ = 0i32;
                    _gotoNext = 4403603i32;
                } else if (__value__ == (4403603i32)) {
                    _format_4403295 = ("\t%s (from $GOPATH)" : stdgo.GoString);
                    if ((0i32 : stdgo.GoInt) < (_tried_4399776._gopath.length)) {
                        _gotoNext = 4403742i32;
                    } else {
                        _gotoNext = 4403747i32;
                    };
                } else if (__value__ == (4403669i32)) {
                    _dir_4403643 = _tried_4399776._gopath[(_i_4403650_0 : stdgo.GoInt)]?.__copy__();
                    _paths_4403278 = (_paths_4403278.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format_4403295?.__copy__(), stdgo.Go.toInterface(_dir_4403643))?.__copy__()));
                    _format_4403295 = ("\t%s" : stdgo.GoString);
                    _i_4403650_0++;
                    _gotoNext = 4403743i32;
                } else if (__value__ == (4403742i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _tried_4399776._gopath[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_4403650_0 = __tmp__0;
                        _dir_4403643 = __tmp__1;
                    };
                    _gotoNext = 4403743i32;
                } else if (__value__ == (4403743i32)) {
                    if (_i_4403650_0 < (_tried_4399776._gopath.length)) {
                        _gotoNext = 4403669i32;
                    } else {
                        _gotoNext = 4403747i32;
                    };
                } else if (__value__ == (4403747i32)) {
                    if ((_tried_4399776._gopath.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4403773i32;
                    } else {
                        _gotoNext = 4403869i32;
                    };
                } else if (__value__ == (4403773i32)) {
                    _paths_4403278 = (_paths_4403278.__append__((("\t($GOPATH not set. For more details see: \'go help gopath\')" : stdgo.GoString) : stdgo.GoString)));
                    _gotoNext = 4403869i32;
                } else if (__value__ == (4403869i32)) {
                    return { _0 : _p_4396653, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot find package %q in any of:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_paths_4403278, ("\n" : stdgo.GoString)))) };
                    var __blank__ = 0i32;
                    _gotoNext = 4403968i32;
                } else if (__value__ == (4403968i32)) {
                    _gotoNext = 4403968i32;
                    if ((@:checkr _p_4396653 ?? throw "null pointer dereference").root != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4403992i32;
                    } else {
                        _gotoNext = 4404910i32;
                    };
                } else if (__value__ == (4403992i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").srcRoot = @:check2r _ctxt._joinPath((@:checkr _p_4396653 ?? throw "null pointer dereference").root?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").pkgRoot = @:check2r _ctxt._joinPath((@:checkr _p_4396653 ?? throw "null pointer dereference").root?.__copy__(), ("pkg" : stdgo.GoString))?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").binDir = @:check2r _ctxt._joinPath((@:checkr _p_4396653 ?? throw "null pointer dereference").root?.__copy__(), ("bin" : stdgo.GoString))?.__copy__();
                    if (_pkga_4396806 != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4404138i32;
                    } else {
                        _gotoNext = 4404910i32;
                    };
                } else if (__value__ == (4404138i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").pkgTargetRoot = @:check2r _ctxt._joinPath((@:checkr _p_4396653 ?? throw "null pointer dereference").root?.__copy__(), _pkgtargetroot_4396780?.__copy__())?.__copy__();
                    if ((!(@:checkr _p_4396653 ?? throw "null pointer dereference").goroot || (((@:check2r stdgo._internal.go.build.Build__installgoroot._installgoroot.value() == (("all" : stdgo.GoString)) && (@:checkr _p_4396653 ?? throw "null pointer dereference").importPath != (("unsafe" : stdgo.GoString)) : Bool) && ((@:checkr _p_4396653 ?? throw "null pointer dereference").importPath != ("builtin" : stdgo.GoString)) : Bool)) : Bool)) {
                        _gotoNext = 4404437i32;
                    } else {
                        _gotoNext = 4404910i32;
                    };
                } else if (__value__ == (4404437i32)) {
                    if ((@:checkr _p_4396653 ?? throw "null pointer dereference").goroot) {
                        _gotoNext = 4404455i32;
                    } else {
                        _gotoNext = 4404502i32;
                    };
                } else if (__value__ == (4404455i32)) {
                    @:check2r stdgo._internal.go.build.Build__installgoroot._installgoroot.incNonDefault();
                    _gotoNext = 4404502i32;
                } else if (__value__ == (4404502i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").pkgObj = @:check2r _ctxt._joinPath((@:checkr _p_4396653 ?? throw "null pointer dereference").root?.__copy__(), _pkga_4396806?.__copy__())?.__copy__();
                    _gotoNext = 4404910i32;
                } else if (__value__ == (4404910i32)) {
                    if ((stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__()) && !@:check2r _ctxt._isDir((@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__()) : Bool)) {
                        _gotoNext = 4404955i32;
                    } else {
                        _gotoNext = 4405183i32;
                    };
                } else if (__value__ == (4404955i32)) {
                    if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && (@:checkr _p_4396653 ?? throw "null pointer dereference").goroot : Bool)) {
                        _gotoNext = 4404999i32;
                    } else {
                        _gotoNext = 4405100i32;
                    };
                } else if (__value__ == (4404999i32)) {
                    return { _0 : _p_4396653, _1 : (null : stdgo.Error) };
                    _gotoNext = 4405100i32;
                } else if (__value__ == (4405100i32)) {
                    return { _0 : _p_4396653, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot find package %q in:\n\t%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p_4396653 ?? throw "null pointer dereference").importPath), stdgo.Go.toInterface((@:checkr _p_4396653 ?? throw "null pointer dereference").dir)) };
                    _gotoNext = 4405183i32;
                } else if (__value__ == (4405183i32)) {
                    if ((_mode & (1u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode))) {
                        _gotoNext = 4405205i32;
                    } else {
                        _gotoNext = 4405230i32;
                    };
                } else if (__value__ == (4405205i32)) {
                    return { _0 : _p_4396653, _1 : _pkgerr_4396823 };
                    _gotoNext = 4405230i32;
                } else if (__value__ == (4405230i32)) {
                    if ((_binaryOnly_4397485 && ((_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool)) {
                        _gotoNext = 4405271i32;
                    } else {
                        _gotoNext = 4405297i32;
                    };
                } else if (__value__ == (4405271i32)) {
                    return { _0 : _p_4396653, _1 : _pkgerr_4396823 };
                    _gotoNext = 4405297i32;
                } else if (__value__ == (4405297i32)) {
                    if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && (@:checkr _p_4396653 ?? throw "null pointer dereference").goroot : Bool)) {
                        _gotoNext = 4405337i32;
                    } else {
                        _gotoNext = 4405407i32;
                    };
                } else if (__value__ == (4405337i32)) {
                    return { _0 : _p_4396653, _1 : (null : stdgo.Error) };
                    _gotoNext = 4405407i32;
                } else if (__value__ == (4405407i32)) {
                    {
                        var __tmp__ = @:check2r _ctxt._readDir((@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__());
                        _dirs_4405407 = @:tmpset0 __tmp__._0;
                        _err_4405413 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4405413 != null) {
                        _gotoNext = 4405455i32;
                    } else {
                        _gotoNext = 4405478i32;
                    };
                } else if (__value__ == (4405455i32)) {
                    return { _0 : _p_4396653, _1 : _err_4405413 };
                    _gotoNext = 4405478i32;
                } else if (__value__ == (4405478i32)) {
                    _badGoFiles_4405500 = (({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                    _badGoFile_4405537 = function(_name:stdgo.GoString, _err:stdgo.Error):Void {
                        if (_badGoError_4405482 == null) {
                            _badGoError_4405482 = _err;
                        };
                    };
                    _embedPos_4405894 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                    _testEmbedPos_4405941 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                    _xTestEmbedPos_4405992 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                    _importPos_4406044 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                    _testImportPos_4406092 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                    _xTestImportPos_4406144 = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                    _allTags_4406197 = (({
                        final x = new stdgo.GoMap.GoStringMap<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                    _fset_4406231 = stdgo._internal.go.token.Token_newfileset.newFileSet();
                    if ((0i32 : stdgo.GoInt) < (_dirs_4405407.length)) {
                        _gotoNext = 4410790i32;
                    } else {
                        _gotoNext = 4410795i32;
                    };
                } else if (__value__ == (4406263i32)) {
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4406282i32)) {
                    _d_4406266 = _dirs_4405407[(_i_4406271_0 : stdgo.GoInt)];
                    if (_d_4406266.isDir()) {
                        _gotoNext = 4406299i32;
                    } else {
                        _gotoNext = 4406319i32;
                    };
                } else if (__value__ == (4406299i32)) {
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4406319i32)) {
                    if (_d_4406266.type() == ((134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                        _gotoNext = 4406349i32;
                    } else {
                        _gotoNext = 4406480i32;
                    };
                } else if (__value__ == (4406349i32)) {
                    if (@:check2r _ctxt._isDir(@:check2r _ctxt._joinPath((@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__(), _d_4406266.name()?.__copy__())?.__copy__())) {
                        _gotoNext = 4406400i32;
                    } else {
                        _gotoNext = 4406480i32;
                    };
                } else if (__value__ == (4406400i32)) {
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4406480i32)) {
                    _name_4406480 = _d_4406266.name()?.__copy__();
                    _ext_4406499 = stdgo._internal.go.build.Build__nameext._nameExt(_name_4406480?.__copy__())?.__copy__();
                    {
                        var __tmp__ = @:check2r _ctxt._matchFile((@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__(), _name_4406480?.__copy__(), _allTags_4406197, stdgo.Go.pointer((@:checkr _p_4396653 ?? throw "null pointer dereference").binaryOnly), _fset_4406231);
                        _info_4406523 = @:tmpset0 __tmp__._0;
                        _err_4406529 = @:tmpset0 __tmp__._1;
                    };
                    if (((_err_4406529 != null) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name_4406480?.__copy__(), (".go" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4406644i32;
                    } else {
                        _gotoNext = 4406688i32;
                    };
                } else if (__value__ == (4406644i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), _err_4406529);
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4406688i32)) {
                    if ((_info_4406523 == null || (_info_4406523 : Dynamic).__nil__)) {
                        _gotoNext = 4406703i32;
                    } else {
                        _gotoNext = 4407098i32;
                    };
                } else if (__value__ == (4406703i32)) {
                    if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name_4406480?.__copy__(), ("_" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name_4406480?.__copy__(), ("." : stdgo.GoString)) : Bool)) {
                        _gotoNext = 4406772i32;
                    } else if (_ext_4406499 == ((".go" : stdgo.GoString))) {
                        _gotoNext = 4406851i32;
                    } else if ((stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_4396653, _ext_4406499?.__copy__()) != null && ((stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_4396653, _ext_4406499?.__copy__()) : Dynamic).__nil__ == null || !(stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_4396653, _ext_4406499?.__copy__()) : Dynamic).__nil__))) {
                        _gotoNext = 4406950i32;
                    } else {
                        _gotoNext = 4407020i32;
                    };
                } else if (__value__ == (4406772i32)) {
                    _gotoNext = 4407020i32;
                } else if (__value__ == (4406851i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredGoFiles = ((@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredGoFiles.__append__(_name_4406480?.__copy__()));
                    _gotoNext = 4407020i32;
                } else if (__value__ == (4406950i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredOtherFiles = ((@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredOtherFiles.__append__(_name_4406480?.__copy__()));
                    _gotoNext = 4407020i32;
                } else if (__value__ == (4407020i32)) {
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4407098i32)) {
                    _gotoNext = 4407098i32;
                    {
                        final __value__ = _ext_4406499;
                        if (__value__ == ((".go" : stdgo.GoString))) {
                            _gotoNext = 4407113i32;
                        } else if (__value__ == ((".S" : stdgo.GoString)) || __value__ == ((".sx" : stdgo.GoString))) {
                            _gotoNext = 4407144i32;
                        } else {
                            _gotoNext = 4407252i32;
                        };
                    };
                } else if (__value__ == (4407113i32)) {
                    _gotoNext = 4407369i32;
                } else if (__value__ == (4407144i32)) {
                    sfiles_4405748 = (sfiles_4405748.__append__(_name_4406480?.__copy__()));
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4407252i32)) {
                    {
                        _list_4407267 = stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_4396653, _ext_4406499?.__copy__());
                        if ((_list_4407267 != null && ((_list_4407267 : Dynamic).__nil__ == null || !(_list_4407267 : Dynamic).__nil__))) {
                            _gotoNext = 4407311i32;
                        } else {
                            _gotoNext = 4407353i32;
                        };
                    };
                } else if (__value__ == (4407311i32)) {
                    (_list_4407267 : stdgo.Slice<stdgo.GoString>).__setData__(((_list_4407267 : stdgo.Slice<stdgo.GoString>).__append__(_name_4406480?.__copy__())));
                    _gotoNext = 4407353i32;
                } else if (__value__ == (4407353i32)) {
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4407369i32)) {
                    {
                        final __tmp__0 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._header;
                        final __tmp__1 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._name?.__copy__();
                        _data_4407369 = __tmp__0;
                        _filename_4407375 = __tmp__1;
                    };
                    if ((@:checkr _info_4406523 ?? throw "null pointer dereference")._parseErr != null) {
                        _gotoNext = 4407437i32;
                    } else {
                        _gotoNext = 4407608i32;
                    };
                } else if (__value__ == (4407437i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), (@:checkr _info_4406523 ?? throw "null pointer dereference")._parseErr);
                    _gotoNext = 4407608i32;
                } else if (__value__ == (4407608i32)) {
                    if (((@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed != null && (((@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed : Dynamic).__nil__ == null || !((@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed : Dynamic).__nil__))) {
                        _gotoNext = 4407647i32;
                    } else {
                        _gotoNext = 4407790i32;
                    };
                } else if (__value__ == (4407647i32)) {
                    _pkg_4407612 = (@:checkr (@:checkr (@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                    if (_pkg_4407612 == (("documentation" : stdgo.GoString))) {
                        _gotoNext = 4407709i32;
                    } else {
                        _gotoNext = 4407790i32;
                    };
                } else if (__value__ == (4407709i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredGoFiles = ((@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredGoFiles.__append__(_name_4406480?.__copy__()));
                    _i_4406271_0++;
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4407790i32)) {
                    _isTest_4407790 = stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name_4406480?.__copy__(), ("_test.go" : stdgo.GoString));
                    _isXTest_4407838 = false;
                    if (((_isTest_4407790 && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_pkg_4407612?.__copy__(), ("_test" : stdgo.GoString)) : Bool) && ((@:checkr _p_4396653 ?? throw "null pointer dereference").name != _pkg_4407612) : Bool)) {
                        _gotoNext = 4407919i32;
                    } else {
                        _gotoNext = 4407983i32;
                    };
                } else if (__value__ == (4407919i32)) {
                    _isXTest_4407838 = true;
                    _pkg_4407612 = (_pkg_4407612.__slice__(0, ((_pkg_4407612.length) - ((("_test" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 4407983i32;
                } else if (__value__ == (4407983i32)) {
                    if ((@:checkr _p_4396653 ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4407999i32;
                    } else if (_pkg_4407612 != ((@:checkr _p_4396653 ?? throw "null pointer dereference").name)) {
                        _gotoNext = 4408063i32;
                    } else {
                        _gotoNext = 4408521i32;
                    };
                } else if (__value__ == (4407999i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").name = _pkg_4407612?.__copy__();
                    _firstFile_4405858 = _name_4406480?.__copy__();
                    _gotoNext = 4408521i32;
                } else if (__value__ == (4408063i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef(({ dir : (@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__(), packages : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(@:checkr _p_4396653 ?? throw "null pointer dereference").name?.__copy__(), _pkg_4407612?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), files : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_firstFile_4405858?.__copy__(), _name_4406480?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError)) : stdgo.Ref<stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError>)));
                    _gotoNext = 4408521i32;
                } else if (__value__ == (4408521i32)) {
                    if (((((((@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed != null && (((@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed : Dynamic).__nil__ == null || !((@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed : Dynamic).__nil__)) && ((@:checkr (@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc != null && (((@:checkr (@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr (@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc : Dynamic).__nil__)) : Bool) && (@:checkr _p_4396653 ?? throw "null pointer dereference").doc == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !_isTest_4407790 : Bool) && !_isXTest_4407838 : Bool)) {
                        _gotoNext = 4408607i32;
                    } else {
                        _gotoNext = 4408664i32;
                    };
                } else if (__value__ == (4408607i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").doc = stdgo._internal.go.doc.Doc_synopsis.synopsis(@:check2r (@:checkr (@:checkr _info_4406523 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc.text()?.__copy__())?.__copy__();
                    _gotoNext = 4408664i32;
                } else if (__value__ == (4408664i32)) {
                    if ((_mode & (4u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode))) {
                        _gotoNext = 4408691i32;
                    } else {
                        _gotoNext = 4409232i32;
                    };
                } else if (__value__ == (4408691i32)) {
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__findimportcomment._findImportComment(_data_4407369);
                        _qcom_4408696 = @:tmpset0 __tmp__._0?.__copy__();
                        _line_4408702 = @:tmpset0 __tmp__._1;
                    };
                    if (_line_4408702 != ((0 : stdgo.GoInt))) {
                        _gotoNext = 4408750i32;
                    } else {
                        _gotoNext = 4409232i32;
                    };
                } else if (__value__ == (4408750i32)) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_qcom_4408696?.__copy__());
                        _com_4408756 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_4408761 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4408761 != null) {
                        _gotoNext = 4408808i32;
                    } else if ((@:checkr _p_4396653 ?? throw "null pointer dereference").importComment == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4408933i32;
                    } else if ((@:checkr _p_4396653 ?? throw "null pointer dereference").importComment != (_com_4408756)) {
                        _gotoNext = 4409028i32;
                    } else {
                        _gotoNext = 4409232i32;
                    };
                } else if (__value__ == (4408808i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("%s:%d: cannot parse import comment" : stdgo.GoString), stdgo.Go.toInterface(_filename_4407375), stdgo.Go.toInterface(_line_4408702)));
                    _gotoNext = 4409232i32;
                } else if (__value__ == (4408933i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").importComment = _com_4408756?.__copy__();
                    _firstCommentFile_4405869 = _name_4406480?.__copy__();
                    _gotoNext = 4409232i32;
                } else if (__value__ == (4409028i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("found import comments %q (%s) and %q (%s) in %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p_4396653 ?? throw "null pointer dereference").importComment), stdgo.Go.toInterface(_firstCommentFile_4405869), stdgo.Go.toInterface(_com_4408756), stdgo.Go.toInterface(_name_4406480), stdgo.Go.toInterface((@:checkr _p_4396653 ?? throw "null pointer dereference").dir)));
                    _gotoNext = 4409232i32;
                } else if (__value__ == (4409232i32)) {
                    _isCgo_4409232 = false;
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _info_4406523 ?? throw "null pointer dereference")._imports.length)) {
                        _gotoNext = 4409577i32;
                    } else {
                        _gotoNext = 4409583i32;
                    };
                } else if (__value__ == (4409253i32)) {
                    _i_4409263_0++;
                    _gotoNext = 4409578i32;
                } else if (__value__ == (4409282i32)) {
                    _imp_4409256 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._imports[(_i_4409263_0 : stdgo.GoInt)];
                    if (_imp_4409256._path == (("C" : stdgo.GoString))) {
                        _gotoNext = 4409306i32;
                    } else {
                        _gotoNext = 4409253i32;
                    };
                } else if (__value__ == (4409306i32)) {
                    if (_isTest_4407790) {
                        _gotoNext = 4409322i32;
                    } else {
                        _gotoNext = 4409430i32;
                    };
                } else if (__value__ == (4409322i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("use of cgo in test %s not supported" : stdgo.GoString), stdgo.Go.toInterface(_filename_4407375)));
                    _i_4409263_0++;
                    _gotoNext = 4409578i32;
                } else if (__value__ == (4409430i32)) {
                    _isCgo_4409232 = true;
                    if ((_imp_4409256._doc != null && ((_imp_4409256._doc : Dynamic).__nil__ == null || !(_imp_4409256._doc : Dynamic).__nil__))) {
                        _gotoNext = 4409465i32;
                    } else {
                        _gotoNext = 4409253i32;
                    };
                } else if (__value__ == (4409465i32)) {
                    {
                        _err_4409475 = @:check2r _ctxt._saveCgo(_filename_4407375?.__copy__(), _p_4396653, _imp_4409256._doc);
                        if (_err_4409475 != null) {
                            _gotoNext = 4409529i32;
                        } else {
                            _gotoNext = 4409253i32;
                        };
                    };
                } else if (__value__ == (4409529i32)) {
                    _badGoFile_4405537(_name_4406480?.__copy__(), _err_4409475);
                    _gotoNext = 4409253i32;
                } else if (__value__ == (4409577i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._imports[(0i32 : stdgo.GoInt)];
                        _i_4409263_0 = __tmp__0;
                        _imp_4409256 = __tmp__1;
                    };
                    _gotoNext = 4409578i32;
                } else if (__value__ == (4409578i32)) {
                    if (_i_4409263_0 < ((@:checkr _info_4406523 ?? throw "null pointer dereference")._imports.length)) {
                        _gotoNext = 4409282i32;
                    } else {
                        _gotoNext = 4409583i32;
                    };
                } else if (__value__ == (4409583i32)) {
                    _gotoNext = 4409692i32;
                } else if (__value__ == (4409692i32)) {
                    if (_isCgo_4409232) {
                        _gotoNext = 4409703i32;
                    } else if (_isXTest_4407838) {
                        _gotoNext = 4409992i32;
                    } else if (_isTest_4407790) {
                        _gotoNext = 4410131i32;
                    } else {
                        _gotoNext = 4410265i32;
                    };
                } else if (__value__ == (4409703i32)) {
                    _allTags_4406197[("cgo" : stdgo.GoString)] = true;
                    if ((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled) {
                        _gotoNext = 4409762i32;
                    } else {
                        _gotoNext = 4409882i32;
                    };
                } else if (__value__ == (4409762i32)) {
                    _fileList_4409587 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").cgoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                    _importMap_4409612 = _importPos_4406044;
                    _embedMap_4409623 = _embedPos_4405894;
                    _directives_4409666 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").directives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                    _gotoNext = 4410383i32;
                } else if (__value__ == (4409882i32)) {
                    _gotoNext = 4409882i32;
                    _fileList_4409587 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                    var __blank__ = 0i32;
                    _gotoNext = 4410383i32;
                } else if (__value__ == (4409992i32)) {
                    _fileList_4409587 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").xTestGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                    _importMap_4409612 = _xTestImportPos_4406144;
                    _embedMap_4409623 = _xTestEmbedPos_4405992;
                    _directives_4409666 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").xTestDirectives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                    _gotoNext = 4410383i32;
                } else if (__value__ == (4410131i32)) {
                    _fileList_4409587 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").testGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                    _importMap_4409612 = _testImportPos_4406092;
                    _embedMap_4409623 = _testEmbedPos_4405941;
                    _directives_4409666 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").testDirectives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                    _gotoNext = 4410383i32;
                } else if (__value__ == (4410265i32)) {
                    _fileList_4409587 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").goFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                    _importMap_4409612 = _importPos_4406044;
                    _embedMap_4409623 = _embedPos_4405894;
                    _directives_4409666 = (stdgo.Go.setRef((@:checkr _p_4396653 ?? throw "null pointer dereference").directives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                    _gotoNext = 4410383i32;
                } else if (__value__ == (4410383i32)) {
                    (_fileList_4409587 : stdgo.Slice<stdgo.GoString>).__setData__(((_fileList_4409587 : stdgo.Slice<stdgo.GoString>).__append__(_name_4406480?.__copy__())));
                    if (_importMap_4409612 != null) {
                        _gotoNext = 4410441i32;
                    } else {
                        _gotoNext = 4410570i32;
                    };
                } else if (__value__ == (4410441i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _info_4406523 ?? throw "null pointer dereference")._imports.length)) {
                        _gotoNext = 4410561i32;
                    } else {
                        _gotoNext = 4410570i32;
                    };
                } else if (__value__ == (4410479i32)) {
                    _imp_4410453 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._imports[(_i_4410460_0 : stdgo.GoInt)];
                    _importMap_4409612[_imp_4410453._path] = ((_importMap_4409612[_imp_4410453._path] ?? (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>)).__append__(@:check2r _fset_4406231.position(_imp_4410453._pos)?.__copy__()));
                    _i_4410460_0++;
                    _gotoNext = 4410562i32;
                } else if (__value__ == (4410561i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._imports[(0i32 : stdgo.GoInt)];
                        _i_4410460_0 = __tmp__0;
                        _imp_4410453 = __tmp__1;
                    };
                    _gotoNext = 4410562i32;
                } else if (__value__ == (4410562i32)) {
                    if (_i_4410460_0 < ((@:checkr _info_4406523 ?? throw "null pointer dereference")._imports.length)) {
                        _gotoNext = 4410479i32;
                    } else {
                        _gotoNext = 4410570i32;
                    };
                } else if (__value__ == (4410570i32)) {
                    if (_embedMap_4409623 != null) {
                        _gotoNext = 4410589i32;
                    } else {
                        _gotoNext = 4410706i32;
                    };
                } else if (__value__ == (4410589i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _info_4406523 ?? throw "null pointer dereference")._embeds.length)) {
                        _gotoNext = 4410697i32;
                    } else {
                        _gotoNext = 4410706i32;
                    };
                } else if (__value__ == (4410626i32)) {
                    _emb_4410601 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._embeds[(_i_4410608_0 : stdgo.GoInt)];
                    _embedMap_4409623[_emb_4410601._pattern] = ((_embedMap_4409623[_emb_4410601._pattern] ?? (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>)).__append__(_emb_4410601._pos?.__copy__()));
                    _i_4410608_0++;
                    _gotoNext = 4410698i32;
                } else if (__value__ == (4410697i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _info_4406523 ?? throw "null pointer dereference")._embeds[(0i32 : stdgo.GoInt)];
                        _i_4410608_0 = __tmp__0;
                        _emb_4410601 = __tmp__1;
                    };
                    _gotoNext = 4410698i32;
                } else if (__value__ == (4410698i32)) {
                    if (_i_4410608_0 < ((@:checkr _info_4406523 ?? throw "null pointer dereference")._embeds.length)) {
                        _gotoNext = 4410626i32;
                    } else {
                        _gotoNext = 4410706i32;
                    };
                } else if (__value__ == (4410706i32)) {
                    if ((_directives_4409666 != null && ((_directives_4409666 : Dynamic).__nil__ == null || !(_directives_4409666 : Dynamic).__nil__))) {
                        _gotoNext = 4410727i32;
                    } else {
                        _gotoNext = 4406263i32;
                    };
                } else if (__value__ == (4410727i32)) {
                    (_directives_4409666 : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>).__setData__(((_directives_4409666 : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>).__append__(...((@:checkr _info_4406523 ?? throw "null pointer dereference")._directives : Array<stdgo._internal.go.build.Build_directive.Directive>))));
                    _gotoNext = 4406263i32;
                } else if (__value__ == (4410790i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _dirs_4405407[(0i32 : stdgo.GoInt)];
                        _i_4406271_0 = __tmp__0;
                        _d_4406266 = __tmp__1;
                    };
                    _gotoNext = 4410791i32;
                } else if (__value__ == (4410791i32)) {
                    if (_i_4406271_0 < (_dirs_4405407.length)) {
                        _gotoNext = 4406282i32;
                    } else {
                        _gotoNext = 4410795i32;
                    };
                } else if (__value__ == (4410795i32)) {
                    _keys_4410795 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                    for (_key => _ in _allTags_4406197) {
                        _keys_4410795 = (_keys_4410795.__append__(_key));
                    };
                    if ((0i32 : stdgo.GoInt) < (_allTags_4406197.length)) {
                        _gotoNext = 4410859i32;
                    } else {
                        _gotoNext = 4410863i32;
                    };
                } else if (__value__ == (4410820i32)) {
                    _tag_4410799 = _keys_4410795[@:invalid_index_invalid_type _i_4410806]?.__copy__();
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").allTags = ((@:checkr _p_4396653 ?? throw "null pointer dereference").allTags.__append__(_tag_4410799?.__copy__()));
                    _i_4410806++;
                    _gotoNext = 4410860i32;
                } else if (__value__ == (4410859i32)) {
                    _i_4410806 = 0i32;
                    _gotoNext = 4410860i32;
                } else if (__value__ == (4410860i32)) {
                    if (_i_4410806 < (_keys_4410795.length)) {
                        _gotoNext = 4410820i32;
                    } else {
                        _gotoNext = 4410863i32;
                    };
                } else if (__value__ == (4410863i32)) {
                    stdgo._internal.sort.Sort_strings.strings((@:checkr _p_4396653 ?? throw "null pointer dereference").allTags);
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_embedPos_4405894);
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").embedPatterns = @:tmpset0 __tmp__._0;
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").embedPatternPos = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_testEmbedPos_4405941);
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").testEmbedPatterns = @:tmpset0 __tmp__._0;
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").testEmbedPatternPos = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_xTestEmbedPos_4405992);
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").xTestEmbedPatterns = @:tmpset0 __tmp__._0;
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").xTestEmbedPatternPos = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_importPos_4406044);
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").imports = @:tmpset0 __tmp__._0;
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").importPos = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_testImportPos_4406092);
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").testImports = @:tmpset0 __tmp__._0;
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").testImportPos = @:tmpset0 __tmp__._1;
                    };
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_xTestImportPos_4406144);
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").xTestImports = @:tmpset0 __tmp__._0;
                        (@:checkr _p_4396653 ?? throw "null pointer dereference").xTestImportPos = @:tmpset0 __tmp__._1;
                    };
                    if ((((@:checkr _p_4396653 ?? throw "null pointer dereference").cgoFiles.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4411425i32;
                    } else {
                        _gotoNext = 4411501i32;
                    };
                } else if (__value__ == (4411425i32)) {
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").sFiles = ((@:checkr _p_4396653 ?? throw "null pointer dereference").sFiles.__append__(...(sfiles_4405748 : Array<stdgo.GoString>)));
                    stdgo._internal.sort.Sort_strings.strings((@:checkr _p_4396653 ?? throw "null pointer dereference").sFiles);
                    _gotoNext = 4411607i32;
                } else if (__value__ == (4411501i32)) {
                    _gotoNext = 4411501i32;
                    (@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredOtherFiles = ((@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredOtherFiles.__append__(...(sfiles_4405748 : Array<stdgo.GoString>)));
                    stdgo._internal.sort.Sort_strings.strings((@:checkr _p_4396653 ?? throw "null pointer dereference").ignoredOtherFiles);
                    var __blank__ = 0i32;
                    _gotoNext = 4411607i32;
                } else if (__value__ == (4411607i32)) {
                    if (_badGoError_4405482 != null) {
                        _gotoNext = 4411628i32;
                    } else {
                        _gotoNext = 4411657i32;
                    };
                } else if (__value__ == (4411628i32)) {
                    return { _0 : _p_4396653, _1 : _badGoError_4405482 };
                    _gotoNext = 4411657i32;
                } else if (__value__ == (4411657i32)) {
                    if ((((((@:checkr _p_4396653 ?? throw "null pointer dereference").goFiles.length) + ((@:checkr _p_4396653 ?? throw "null pointer dereference").cgoFiles.length) : stdgo.GoInt) + ((@:checkr _p_4396653 ?? throw "null pointer dereference").testGoFiles.length) : stdgo.GoInt) + ((@:checkr _p_4396653 ?? throw "null pointer dereference").xTestGoFiles.length) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4411735i32;
                    } else {
                        _gotoNext = 4411771i32;
                    };
                } else if (__value__ == (4411735i32)) {
                    return { _0 : _p_4396653, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.Build_nogoerror.NoGoError((@:checkr _p_4396653 ?? throw "null pointer dereference").dir?.__copy__()) : stdgo._internal.go.build.Build_nogoerror.NoGoError)) : stdgo.Ref<stdgo._internal.go.build.Build_nogoerror.NoGoError>)) };
                    _gotoNext = 4411771i32;
                } else if (__value__ == (4411771i32)) {
                    return { _0 : _p_4396653, _1 : _pkgerr_4396823 };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function importDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        return @:check2r _ctxt.import_(("." : stdgo.GoString), _dir?.__copy__(), _mode);
    }
    @:keep
    @:tdfield
    static public function srcDirs( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != ("gccgo" : stdgo.GoString)) : Bool)) {
            var _dir = (@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (@:check2r _ctxt._isDir(_dir?.__copy__())) {
                _all = (_all.__append__(_dir?.__copy__()));
            };
        };
        for (__0 => _p in @:check2r _ctxt._gopath()) {
            var _dir = (@:check2r _ctxt._joinPath(_p?.__copy__(), ("src" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (@:check2r _ctxt._isDir(_dir?.__copy__())) {
                _all = (_all.__append__(_dir?.__copy__()));
            };
        };
        return _all;
    }
    @:keep
    @:tdfield
    static public function _gopath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in @:check2r _ctxt._splitPathList((@:checkr _ctxt ?? throw "null pointer dereference").gOPATH?.__copy__())) {
            if (((_p == (stdgo.Go.str() : stdgo.GoString)) || (_p == (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT) : Bool)) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_p?.__copy__(), ("~" : stdgo.GoString))) {
                continue;
            };
            _all = (_all.__append__(_p?.__copy__()));
        };
        return _all;
    }
    @:keep
    @:tdfield
    static public function _isFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var __tmp__ = @:check2r _ctxt._openFile(_path?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        _f.close();
        return true;
    }
    @:keep
    @:tdfield
    static public function _openFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _fn = ((@:checkr _ctxt ?? throw "null pointer dereference").openFile : stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; });
            if (_fn != null) {
                return _fn(_path?.__copy__());
            };
        };
        var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").readDir : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; });
            if (_f != null) {
                var __tmp__ = _f(_path?.__copy__()), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
                };
                var _des = (new stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>((_fis.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
                for (_i => _fi in _fis) {
                    _des[(_i : stdgo.GoInt)] = stdgo._internal.io.fs.Fs_fileinfotodirentry.fileInfoToDirEntry(_fi);
                };
                return { _0 : _des, _1 : (null : stdgo.Error) };
            };
        };
        return stdgo._internal.os.Os_readdir.readDir(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _hasSubdir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _root:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _rel = ("" : stdgo.GoString), _ok = false;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").hasSubdir : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; });
            if (_f != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = _f(_root?.__copy__(), _dir?.__copy__());
                    _rel = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_root?.__copy__(), _dir?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                return { _0 : _rel, _1 : _ok };
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_root?.__copy__()), _rootSym:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_dir?.__copy__()), _dirSym:stdgo.GoString = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_rootSym?.__copy__(), _dir?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                return { _0 : _rel, _1 : _ok };
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_root?.__copy__(), _dirSym?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                return { _0 : _rel, _1 : _ok };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_rootSym?.__copy__(), _dirSym?.__copy__());
            _rel = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _isDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").isDir : stdgo.GoString -> Bool);
            if (_f != null) {
                return _f(_path?.__copy__());
            };
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return ((_err == null) && _fi.isDir() : Bool);
    }
    @:keep
    @:tdfield
    static public function _isAbsPath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").isAbsPath : stdgo.GoString -> Bool);
            if (_f != null) {
                return _f(_path?.__copy__());
            };
        };
        return stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _splitPathList( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = (@:checkr _ctxt ?? throw "null pointer dereference").splitPathList;
            if (_f != null) {
                return _f(_s?.__copy__());
            };
        };
        return stdgo._internal.path.filepath.Filepath_splitlist.splitList(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _joinPath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = (@:checkr _ctxt ?? throw "null pointer dereference").joinPath;
            if (_f != null) {
                return _f(...(_elem : Array<stdgo.GoString>))?.__copy__();
            };
        };
        return stdgo._internal.path.filepath.Filepath_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
    }
}
