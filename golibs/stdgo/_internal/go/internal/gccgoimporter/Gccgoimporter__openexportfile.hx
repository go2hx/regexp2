package stdgo._internal.go.internal.gccgoimporter;
function _openExportFile(_fpath:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo._internal.io.Io_closer.Closer; var _2 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _reader = (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _closer = (null : stdgo._internal.io.Io_closer.Closer), _err = (null : stdgo.Error);
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(_fpath?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : _reader, _1 : _closer, _2 : _err };
            };
            _closer = stdgo.Go.asInterface(_f);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (((_err != null) && (_closer != null) : Bool)) {
                            @:check2r _f.close();
                        };
                    };
                    a();
                }) });
            };
            var _magic:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
            {
                var __tmp__ = @:check2r _f.readAt((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (0i64 : stdgo.GoInt64));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            };
            var _objreader:stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
            {
                final __value__ = ((_magic.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
                if (__value__ == (("v1;\n" : stdgo.GoString)) || __value__ == (("v2;\n" : stdgo.GoString)) || __value__ == (("v3;\n" : stdgo.GoString)) || __value__ == (("\n$$ " : stdgo.GoString))) {
                    _reader = stdgo.Go.asInterface(_f);
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _reader, _1 : _closer, _2 : _err };
                    };
                } else if (__value__ == (("!<ar" : stdgo.GoString)) || __value__ == (("<big" : stdgo.GoString))) {
                    {
                        var __tmp__ = stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__arexportdata._arExportData(stdgo.Go.asInterface(_f));
                        _reader = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _reader, _1 : _closer, _2 : _err };
                    };
                } else {
                    _objreader = stdgo.Go.asInterface(_f);
                };
            };
            var __tmp__ = stdgo._internal.debug.elf.Elf_newfile.newFile(_objreader), _ef:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                var _sec = @:check2r _ef.section((".go_export" : stdgo.GoString));
                if ((_sec == null || (_sec : Dynamic).__nil__)) {
                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%s: .go_export section not found" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _reader, _1 : _closer, _2 : _err };
                    };
                };
                _reader = @:check2r _sec.open();
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            };
            var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newfile.newFile(_objreader), _xf:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                var _sdat = @:check2r _xf.cSect((".go_export" : stdgo.GoString));
                if (_sdat == null) {
                    _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%s: .go_export section not found" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return { _0 : _reader, _1 : _closer, _2 : _err };
                    };
                };
                _reader = stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_sdat));
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            };
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%s: unrecognized file format" : stdgo.GoString), stdgo.Go.toInterface(_fpath));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return { _0 : _reader, _1 : _closer, _2 : _err };
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
                return { _0 : _reader, _1 : _closer, _2 : _err };
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
                return { _0 : _reader, _1 : _closer, _2 : _err };
            };
        };
    }
