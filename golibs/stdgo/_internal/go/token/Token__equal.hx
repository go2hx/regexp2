package stdgo._internal.go.token;
function _equal(_p:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _q:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (_p == (_q)) {
                return (null : stdgo.Error);
            };
            @:check2 (@:checkr _p ?? throw "null pointer dereference")._mutex.lock();
            @:check2 (@:checkr _q ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _q ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = @:check2 (@:checkr _p ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _p ?? throw "null pointer dereference")._base != ((@:checkr _q ?? throw "null pointer dereference")._base)) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different bases: %d != %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._base), stdgo.Go.toInterface((@:checkr _q ?? throw "null pointer dereference")._base));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            if (((@:checkr _p ?? throw "null pointer dereference")._files.length) != (((@:checkr _q ?? throw "null pointer dereference")._files.length))) {
                {
                    final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different number of files: %d != %d" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _p ?? throw "null pointer dereference")._files.length)), stdgo.Go.toInterface(((@:checkr _q ?? throw "null pointer dereference")._files.length)));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            for (_i => _f in (@:checkr _p ?? throw "null pointer dereference")._files) {
                var _g = (@:checkr _q ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)];
                if ((@:checkr _f ?? throw "null pointer dereference")._name != ((@:checkr _g ?? throw "null pointer dereference")._name)) {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different filenames: %q != %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _g ?? throw "null pointer dereference")._name));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if ((@:checkr _f ?? throw "null pointer dereference")._base != ((@:checkr _g ?? throw "null pointer dereference")._base)) {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different base for %q: %d != %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._base), stdgo.Go.toInterface((@:checkr _g ?? throw "null pointer dereference")._base));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                if ((@:checkr _f ?? throw "null pointer dereference")._size != ((@:checkr _g ?? throw "null pointer dereference")._size)) {
                    {
                        final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different size for %q: %d != %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._size), stdgo.Go.toInterface((@:checkr _g ?? throw "null pointer dereference")._size));
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                for (_j => _l in (@:checkr _f ?? throw "null pointer dereference")._lines) {
                    var _m = ((@:checkr _g ?? throw "null pointer dereference")._lines[(_j : stdgo.GoInt)] : stdgo.GoInt);
                    if (_l != (_m)) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different offsets for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                for (_j => _l in (@:checkr _f ?? throw "null pointer dereference")._infos) {
                    var _m = ((@:checkr _g ?? throw "null pointer dereference")._infos[(_j : stdgo.GoInt)] : stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo);
                    if (((_l.offset != (_m.offset) || _l.filename != (_m.filename) : Bool) || (_l.line != _m.line) : Bool)) {
                        {
                            final __ret__:stdgo.Error = stdgo._internal.fmt.Fmt_errorf.errorf(("different infos for %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._name));
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
