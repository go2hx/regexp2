package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.FileSet_asInterface) class FileSet_static_extension {
    @:keep
    @:tdfield
    static public function write( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _encode:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _ss:stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet = ({} : stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet);
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
        _ss.base = (@:checkr _s ?? throw "null pointer dereference")._base;
        var _files = (new stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>(((@:checkr _s ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _s ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _s ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile)]) : stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>);
        for (_i => _f in (@:checkr _s ?? throw "null pointer dereference")._files) {
            @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
            _files[(_i : stdgo.GoInt)] = ({ name : (@:checkr _f ?? throw "null pointer dereference")._name?.__copy__(), base : (@:checkr _f ?? throw "null pointer dereference")._base, size : (@:checkr _f ?? throw "null pointer dereference")._size, lines : ((null : stdgo.Slice<stdgo.GoInt>).__append__(...((@:checkr _f ?? throw "null pointer dereference")._lines : Array<stdgo.GoInt>))), infos : ((null : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>).__append__(...((@:checkr _f ?? throw "null pointer dereference")._infos : Array<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>))) } : stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile);
            @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
        };
        _ss.files = _files;
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock();
        return _encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_ss)));
    }
    @:keep
    @:tdfield
    static public function read( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _decode:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _ss:stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet = ({} : stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet);
        {
            var _err = (_decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ss) : stdgo.Ref<stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet>)))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _s ?? throw "null pointer dereference")._base = _ss.base;
        var _files = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>((_ss.files.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_ss.files.length) : Bool)) {
                var _f = (stdgo.Go.setRef(_ss.files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>);
_files[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _name : (@:checkr _f ?? throw "null pointer dereference").name.__copy__(), _base : (@:checkr _f ?? throw "null pointer dereference").base, _size : (@:checkr _f ?? throw "null pointer dereference").size, _lines : (@:checkr _f ?? throw "null pointer dereference").lines, _infos : (@:checkr _f ?? throw "null pointer dereference").infos } : stdgo._internal.go.token.Token_file.File)) : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
                _i++;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._files = _files;
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._last.store(null);
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function position( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        return _pos = @:check2r _s.positionFor(_p, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function positionFor( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        if (_p != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            {
                var _f = @:check2r _s._file(_p);
                if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                    return _pos = @:check2r _f._position(_p, _adjusted)?.__copy__();
                };
            };
        };
        return _pos;
    }
    @:keep
    @:tdfield
    static public function file( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.token.Token_file.File> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _f = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
        if (_p != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            _f = @:check2r _s._file(_p);
        };
        return _f;
    }
    @:keep
    @:tdfield
    static public function _file( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.token.Token_file.File> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _f = @:check2 (@:checkr _s ?? throw "null pointer dereference")._last.load();
                if ((((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__)) && ((@:checkr _f ?? throw "null pointer dereference")._base <= (_p : stdgo.GoInt) : Bool) : Bool) && ((_p : stdgo.GoInt) <= ((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt) : Bool) : Bool)) {
                    return _f;
                };
            };
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.rLock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _i = (stdgo._internal.go.token.Token__searchfiles._searchFiles((@:checkr _s ?? throw "null pointer dereference")._files, (_p : stdgo.GoInt)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _f = (@:checkr _s ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)];
                    if (((_p : stdgo.GoInt) <= ((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt) : Bool)) {
                        @:check2 (@:checkr _s ?? throw "null pointer dereference")._last.store(_f);
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _f;
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return null;
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function iterate( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> -> Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                var _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
@:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.rLock();
if ((_i < ((@:checkr _s ?? throw "null pointer dereference")._files.length) : Bool)) {
                    _file = (@:checkr _s ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)];
                };
@:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.rUnlock();
if (((_file == null || (_file : Dynamic).__nil__) || !_f(_file) : Bool)) {
                    break;
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function removeFile( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._last.compareAndSwap(_file, null);
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _i = (stdgo._internal.go.token.Token__searchfiles._searchFiles((@:checkr _s ?? throw "null pointer dereference")._files, (@:checkr _file ?? throw "null pointer dereference")._base) : stdgo.GoInt);
                if (((_i >= (0 : stdgo.GoInt) : Bool) && ((@:checkr _s ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)] == _file) : Bool)) {
                    var _last = (stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._files[(((@:checkr _s ?? throw "null pointer dereference")._files.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
                    (@:checkr _s ?? throw "null pointer dereference")._files = (((@:checkr _s ?? throw "null pointer dereference")._files.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>).__append__(...(((@:checkr _s ?? throw "null pointer dereference")._files.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>) : Array<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>)));
                    _last = null;
                };
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
    }
    @:keep
    @:tdfield
    static public function addFile( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _base:stdgo.GoInt, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.token.Token_file.File> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _f = (stdgo.Go.setRef(({ _name : _filename?.__copy__(), _size : _size, _lines : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.go.token.Token_file.File)) : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((_base < (0 : stdgo.GoInt) : Bool)) {
                _base = (@:checkr _s ?? throw "null pointer dereference")._base;
            };
            if ((_base < (@:checkr _s ?? throw "null pointer dereference")._base : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid base %d (should be >= %d)" : stdgo.GoString), stdgo.Go.toInterface(_base), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._base)));
            };
            (@:checkr _f ?? throw "null pointer dereference")._base = _base;
            if ((_size < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid size %d (should be >= 0)" : stdgo.GoString), stdgo.Go.toInterface(_size)));
            };
            _base = (_base + ((_size + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            if ((_base < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("token.Pos offset overflow (> 2G of source code in file set)" : stdgo.GoString));
            };
            (@:checkr _s ?? throw "null pointer dereference")._base = _base;
            (@:checkr _s ?? throw "null pointer dereference")._files = ((@:checkr _s ?? throw "null pointer dereference")._files.__append__(_f));
            @:check2 (@:checkr _s ?? throw "null pointer dereference")._last.store(_f);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _f;
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function base( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.rLock();
        var _b = ((@:checkr _s ?? throw "null pointer dereference")._base : stdgo.GoInt);
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mutex.rUnlock();
        return _b;
    }
}
