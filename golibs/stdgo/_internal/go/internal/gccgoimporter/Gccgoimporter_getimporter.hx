package stdgo._internal.go.internal.gccgoimporter;
function getImporter(_searchpaths:stdgo.Slice<stdgo.GoString>, _initmap:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_initdata.InitData>):stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer {
        return function(_imports:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, _pkgpath:stdgo.GoString, _srcDir:stdgo.GoString, _lookup:stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; }):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            var _pkg = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>), _err = (null : stdgo.Error);
            try {
                if (_pkgpath == (("unsafe" : stdgo.GoString))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.go.types.Types_unsafe.unsafe, _1 : (null : stdgo.Error) };
                        _pkg = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                var _reader:stdgo._internal.io.Io_readseeker.ReadSeeker = (null : stdgo._internal.io.Io_readseeker.ReadSeeker);
                var _fpath:stdgo.GoString = ("" : stdgo.GoString);
                var _rc:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
                if (_lookup != null) {
                    {
                        var _p = (_imports[_pkgpath] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
                        if (((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)) && @:check2r _p.complete() : Bool)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : _p, _1 : (null : stdgo.Error) };
                                _pkg = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    {
                        var __tmp__ = _lookup(_pkgpath?.__copy__());
                        _rc = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pkg = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                if (_rc != null) {
                    {
                        final __f__ = _rc.close;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.io.Io_readseeker.ReadSeeker)) : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : false };
                    }, _rs = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gccgo importer requires lookup to return an io.ReadSeeker, have %T" : stdgo.GoString), stdgo.Go.toInterface(_rc)) };
                                _pkg = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    _reader = _rs;
                    _fpath = ((("<lookup " : stdgo.GoString) + _pkgpath?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_rc) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0)) : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t__interface_0.T__interface_0), _1 : false };
                        }, _n = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            _fpath = _n.name()?.__copy__();
                        };
                    };
                } else {
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__findexportfile._findExportFile(_searchpaths, _pkgpath?.__copy__());
                        _fpath = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _pkg = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__openexportfile._openExportFile(_fpath?.__copy__()), _r:stdgo._internal.io.Io_readseeker.ReadSeeker = __tmp__._0, _closer:stdgo._internal.io.Io_closer.Closer = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _pkg = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    if (_closer != null) {
                        {
                            final __f__ = _closer.close;
                            __deferstack__.unshift({ ran : false, f : () -> __f__() });
                        };
                    };
                    _reader = _r;
                };
                var _magics:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readmagic._readMagic(_reader);
                    _magics = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _pkg, _1 : _err };
                    };
                };
                if (((_magics == ("!<ar" : stdgo.GoString)) || (_magics == ("<big" : stdgo.GoString)) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__arexportdata._arExportData(_reader);
                        _reader = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return { _0 : _pkg, _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readmagic._readMagic(_reader);
                        _magics = @:tmpset0 __tmp__._0?.__copy__();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return { _0 : _pkg, _1 : _err };
                        };
                    };
                };
                {
                    final __value__ = _magics;
                    if (__value__ == (("v1;\n" : stdgo.GoString)) || __value__ == (("v2;\n" : stdgo.GoString)) || __value__ == (("v3;\n" : stdgo.GoString))) {
                        var _p:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser);
                        @:check2 _p._init(_fpath?.__copy__(), _reader, _imports);
                        _pkg = @:check2 _p._parsePackage();
                        if (_initmap != null) {
                            _initmap[_pkg] = _p._initdata?.__copy__();
                        };
                    } else {
                        _err = stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognized magic string: %q" : stdgo.GoString), stdgo.Go.toInterface(_magics));
                    };
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _pkg, _1 : _err };
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
                    return { _0 : _pkg, _1 : _err };
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
                    return { _0 : _pkg, _1 : _err };
                };
            };
        };
    }
