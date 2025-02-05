package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.File_asInterface) class File_static_extension {
    @:keep
    @:tdfield
    static public function position( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        return _pos = @:check2r _f.positionFor(_p, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function positionFor( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        if (_p != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            if ((((_p : stdgo.GoInt) < (@:checkr _f ?? throw "null pointer dereference")._base : Bool) || ((_p : stdgo.GoInt) > ((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt) : Bool) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid Pos value %d (should be in [%d, %d])" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._base), stdgo.Go.toInterface(((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt))));
            };
            _pos = @:check2r _f._position(_p, _adjusted)?.__copy__();
        };
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _position( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        var _offset = ((_p : stdgo.GoInt) - (@:checkr _f ?? throw "null pointer dereference")._base : stdgo.GoInt);
        _pos.offset = _offset;
        {
            var __tmp__ = @:check2r _f._unpack(_offset, _adjusted);
            _pos.filename = @:tmpset0 __tmp__._0?.__copy__();
            _pos.line = @:tmpset0 __tmp__._1;
            _pos.column = @:tmpset0 __tmp__._2;
        };
        return _pos;
    }
    @:keep
    @:tdfield
    static public function _unpack( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt, _adjusted:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _filename = ("" : stdgo.GoString), _line = (0 : stdgo.GoInt), _column = (0 : stdgo.GoInt);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        _filename = (@:checkr _f ?? throw "null pointer dereference")._name?.__copy__();
        {
            var _i = (stdgo._internal.go.token.Token__searchints._searchInts((@:checkr _f ?? throw "null pointer dereference")._lines, _offset) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = ((_offset - (@:checkr _f ?? throw "null pointer dereference")._lines[(_i : stdgo.GoInt)] : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _line = __tmp__0;
                    _column = __tmp__1;
                };
            };
        };
        if ((_adjusted && (((@:checkr _f ?? throw "null pointer dereference")._infos.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            {
                var _i = (stdgo._internal.go.token.Token__searchlineinfos._searchLineInfos((@:checkr _f ?? throw "null pointer dereference")._infos, _offset) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _alt = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference")._infos[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
                    _filename = (@:checkr _alt ?? throw "null pointer dereference").filename?.__copy__();
                    {
                        var _i = (stdgo._internal.go.token.Token__searchints._searchInts((@:checkr _f ?? throw "null pointer dereference")._lines, (@:checkr _alt ?? throw "null pointer dereference").offset) : stdgo.GoInt);
                        if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            var _d = (_line - ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                            _line = ((@:checkr _alt ?? throw "null pointer dereference").line + _d : stdgo.GoInt);
                            if ((@:checkr _alt ?? throw "null pointer dereference").column == ((0 : stdgo.GoInt))) {
                                _column = (0 : stdgo.GoInt);
                            } else if (_d == ((0 : stdgo.GoInt))) {
                                _column = ((@:checkr _alt ?? throw "null pointer dereference").column + ((_offset - (@:checkr _alt ?? throw "null pointer dereference").offset : stdgo.GoInt)) : stdgo.GoInt);
                            };
                        };
                    };
                };
            };
        };
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
        return { _0 : _filename, _1 : _line, _2 : _column };
    }
    @:keep
    @:tdfield
    static public function line( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        return @:check2r _f.position(_p).line;
    }
    @:keep
    @:tdfield
    static public function offset( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        if ((((_p : stdgo.GoInt) < (@:checkr _f ?? throw "null pointer dereference")._base : Bool) || ((_p : stdgo.GoInt) > ((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid Pos value %d (should be in [%d, %d])" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._base), stdgo.Go.toInterface(((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt))));
        };
        return ((_p : stdgo.GoInt) - (@:checkr _f ?? throw "null pointer dereference")._base : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        if ((_offset > (@:checkr _f ?? throw "null pointer dereference")._size : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid file offset %d (should be <= %d)" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._size)));
        };
        return (((@:checkr _f ?? throw "null pointer dereference")._base + _offset : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function addLineColumnInfo( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt, _filename:stdgo.GoString, _line:stdgo.GoInt, _column:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        {
            var _i = ((@:checkr _f ?? throw "null pointer dereference")._infos.length : stdgo.GoInt);
            if (((((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._infos[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].offset < _offset : Bool) : Bool)) && (_offset < (@:checkr _f ?? throw "null pointer dereference")._size : Bool) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._infos = ((@:checkr _f ?? throw "null pointer dereference")._infos.__append__((new stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo(_offset, _filename?.__copy__(), _line, _column) : stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo)));
            };
        };
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function addLineInfo( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt, _filename:stdgo.GoString, _line:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        @:check2r _f.addLineColumnInfo(_offset, _filename?.__copy__(), _line, (1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function lineStart( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _line:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_line < (1 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be >= 1)" : stdgo.GoString), stdgo.Go.toInterface(_line)));
            };
            @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((_line > ((@:checkr _f ?? throw "null pointer dereference")._lines.length) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be < %d)" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(((@:checkr _f ?? throw "null pointer dereference")._lines.length))));
            };
            {
                final __ret__:stdgo._internal.go.token.Token_pos.Pos = (((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._lines[(_line - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
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
                return ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
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
                return ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
            };
        };
    }
    @:keep
    @:tdfield
    static public function setLinesForContent( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _content:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _lines:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _line = (0 : stdgo.GoInt);
        for (_offset => _b in _content) {
            if ((_line >= (0 : stdgo.GoInt) : Bool)) {
                _lines = (_lines.__append__(_line));
            };
            _line = (-1 : stdgo.GoInt);
            if (_b == ((10 : stdgo.GoUInt8))) {
                _line = (_offset + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _f ?? throw "null pointer dereference")._lines = _lines;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function setLines( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _lines:stdgo.Slice<stdgo.GoInt>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var _size = ((@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt);
        for (_i => _offset in _lines) {
            if ((((_i > (0 : stdgo.GoInt) : Bool) && (_offset <= _lines[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) || (_size <= _offset : Bool) : Bool)) {
                return false;
            };
        };
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _f ?? throw "null pointer dereference")._lines = _lines;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
        return true;
    }
    @:keep
    @:tdfield
    static public function lines( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        var _lines = (@:checkr _f ?? throw "null pointer dereference")._lines;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
        return _lines;
    }
    @:keep
    @:tdfield
    static public function mergeLine( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _line:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if ((_line < (1 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be >= 1)" : stdgo.GoString), stdgo.Go.toInterface(_line)));
            };
            @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((_line >= ((@:checkr _f ?? throw "null pointer dereference")._lines.length) : Bool)) {
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid line number %d (should be < %d)" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface(((@:checkr _f ?? throw "null pointer dereference")._lines.length))));
            };
            ((@:checkr _f ?? throw "null pointer dereference")._lines.__slice__(_line) : stdgo.Slice<stdgo.GoInt>).__copyTo__(((@:checkr _f ?? throw "null pointer dereference")._lines.__slice__((_line + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            (@:checkr _f ?? throw "null pointer dereference")._lines = ((@:checkr _f ?? throw "null pointer dereference")._lines.__slice__(0, (((@:checkr _f ?? throw "null pointer dereference")._lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
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
    static public function addLine( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _offset:stdgo.GoInt):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        {
            var _i = ((@:checkr _f ?? throw "null pointer dereference")._lines.length : stdgo.GoInt);
            if (((((_i == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw "null pointer dereference")._lines[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] < _offset : Bool) : Bool)) && (_offset < (@:checkr _f ?? throw "null pointer dereference")._size : Bool) : Bool)) {
                (@:checkr _f ?? throw "null pointer dereference")._lines = ((@:checkr _f ?? throw "null pointer dereference")._lines.__append__(_offset));
            };
        };
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
    }
    @:keep
    @:tdfield
    static public function lineCount( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
        var _n = ((@:checkr _f ?? throw "null pointer dereference")._lines.length : stdgo.GoInt);
        @:check2 (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
        return _n;
    }
    @:keep
    @:tdfield
    static public function size( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._size;
    }
    @:keep
    @:tdfield
    static public function base( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._base;
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = _f;
        return (@:checkr _f ?? throw "null pointer dereference")._name?.__copy__();
    }
}
