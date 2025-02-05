package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Scope_asInterface) class Scope_static_extension {
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2r _s.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (0 : stdgo.GoInt), false);
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function writeTo( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _w:stdgo._internal.io.Io_writer.Writer, _n:stdgo.GoInt, _recurse:Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        {};
        var _indn = (stdgo._internal.strings.Strings_repeat.repeat((".  " : stdgo.GoString), _n)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s%s scope %p {\n" : stdgo.GoString), stdgo.Go.toInterface(_indn), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._comment), stdgo.Go.toInterface(stdgo.Go.asInterface(_s)));
        var _indn1 = ((_indn + (".  " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        for (__0 => _name in @:check2r _s.names()) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s%s\n" : stdgo.GoString), stdgo.Go.toInterface(_indn1), stdgo.Go.toInterface(@:check2r _s.lookup(_name?.__copy__())));
        };
        if (_recurse) {
            for (__1 => _s in (@:checkr _s ?? throw "null pointer dereference")._children) {
                @:check2r _s.writeTo(_w, (_n + (1 : stdgo.GoInt) : stdgo.GoInt), _recurse);
            };
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s}\n" : stdgo.GoString), stdgo.Go.toInterface(_indn));
    }
    @:keep
    @:tdfield
    static public function innermost( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._parent == (stdgo._internal.go.types.Types_universe.universe)) {
            for (__0 => _s in (@:checkr _s ?? throw "null pointer dereference")._children) {
                {
                    var _inner = @:check2r _s.innermost(_pos);
                    if ((_inner != null && ((_inner : Dynamic).__nil__ == null || !(_inner : Dynamic).__nil__))) {
                        return _inner;
                    };
                };
            };
        };
        if (@:check2r _s.contains(_pos)) {
            for (__0 => _s in (@:checkr _s ?? throw "null pointer dereference")._children) {
                if (@:check2r _s.contains(_pos)) {
                    return @:check2r _s.innermost(_pos);
                };
            };
            return _s;
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function contains( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _pos:stdgo._internal.go.token.Token_pos.Pos):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return ((stdgo._internal.go.types.Types__cmppos._cmpPos((@:checkr _s ?? throw "null pointer dereference")._pos, _pos) <= (0 : stdgo.GoInt) : Bool) && (stdgo._internal.go.types.Types__cmppos._cmpPos(_pos, (@:checkr _s ?? throw "null pointer dereference")._end) < (0 : stdgo.GoInt) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._end;
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._pos;
    }
    @:keep
    @:tdfield
    static public function _squash( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _err:(stdgo._internal.go.types.Types_object.Object, stdgo._internal.go.types.Types_object.Object) -> Void):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _p = (@:checkr _s ?? throw "null pointer dereference")._parent;
        stdgo._internal.go.types.Types__assert._assert((_p != null && ((_p : Dynamic).__nil__ == null || !(_p : Dynamic).__nil__)));
        for (_name => _obj in (@:checkr _s ?? throw "null pointer dereference")._elems) {
            _obj = stdgo._internal.go.types.Types__resolve._resolve(_name?.__copy__(), _obj);
            _obj._setParent(null);
            {
                var _alt = (@:check2r _p.insert(_obj) : stdgo._internal.go.types.Types_object.Object);
                if (_alt != null) {
                    _err(_obj, _alt);
                };
            };
        };
        var _j = (-1 : stdgo.GoInt);
        for (_i => _ch in (@:checkr _p ?? throw "null pointer dereference")._children) {
            if (_ch == (_s)) {
                _j = _i;
                break;
            };
        };
        stdgo._internal.go.types.Types__assert._assert((_j >= (0 : stdgo.GoInt) : Bool));
        var _k = (((@:checkr _p ?? throw "null pointer dereference")._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._children[(_j : stdgo.GoInt)] = (@:checkr _p ?? throw "null pointer dereference")._children[(_k : stdgo.GoInt)];
        (@:checkr _p ?? throw "null pointer dereference")._children = ((@:checkr _p ?? throw "null pointer dereference")._children.__slice__(0, _k) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        (@:checkr _p ?? throw "null pointer dereference")._children = ((@:checkr _p ?? throw "null pointer dereference")._children.__append__(...((@:checkr _s ?? throw "null pointer dereference")._children : Array<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>)));
        (@:checkr _s ?? throw "null pointer dereference")._children = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>>);
        (@:checkr _s ?? throw "null pointer dereference")._elems = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>);
    }
    @:keep
    @:tdfield
    static public function _insert( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString, _obj:stdgo._internal.go.types.Types_object.Object):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._elems == null) {
            (@:checkr _s ?? throw "null pointer dereference")._elems = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.go.types.Types_object.Object>();
                x.__defaultValue__ = () -> (null : stdgo._internal.go.types.Types_object.Object);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.go.types.Types_object.Object>);
        };
        (@:checkr _s ?? throw "null pointer dereference")._elems[_name] = _obj;
    }
    @:keep
    @:tdfield
    static public function __InsertLazy( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString, _resolve:() -> stdgo._internal.go.types.Types_object.Object):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._elems[_name] ?? (null : stdgo._internal.go.types.Types_object.Object)) != null) {
            return false;
        };
        @:check2r _s._insert(_name?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef(({ _parent : _s, _resolve : _resolve } : stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject)) : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>)));
        return true;
    }
    @:keep
    @:tdfield
    static public function insert( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _obj:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_object.Object {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _name = (_obj.name()?.__copy__() : stdgo.GoString);
        {
            var _alt = (@:check2r _s.lookup(_name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
            if (_alt != null) {
                return _alt;
            };
        };
        @:check2r _s._insert(_name?.__copy__(), _obj);
        if ((_obj.parent() == null || (_obj.parent() : Dynamic).__nil__)) {
            _obj._setParent(_s);
        };
        return (null : stdgo._internal.go.types.Types_object.Object);
    }
    @:keep
    @:tdfield
    static public function lookupParent( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString, _pos:stdgo._internal.go.token.Token_pos.Pos):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>; var _1 : stdgo._internal.go.types.Types_object.Object; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        while ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
            {
                var _obj = (@:check2r _s.lookup(_name.__copy__()) : stdgo._internal.go.types.Types_object.Object);
                if (((_obj != null) && ((!_pos.isValid() || (stdgo._internal.go.types.Types__cmppos._cmpPos(_obj._scopePos(), _pos) <= (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                    return { _0 : _s, _1 : _obj };
                };
            };
            _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
        };
        return { _0 : null, _1 : (null : stdgo._internal.go.types.Types_object.Object) };
    }
    @:keep
    @:tdfield
    static public function lookup( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _name:stdgo.GoString):stdgo._internal.go.types.Types_object.Object {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return stdgo._internal.go.types.Types__resolve._resolve(_name?.__copy__(), ((@:checkr _s ?? throw "null pointer dereference")._elems[_name] ?? (null : stdgo._internal.go.types.Types_object.Object)));
    }
    @:keep
    @:tdfield
    static public function child( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._children[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function numChildren( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._children.length);
    }
    @:keep
    @:tdfield
    static public function names( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.Slice<stdgo.GoString> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        var _names = (new stdgo.Slice<stdgo.GoString>(((@:checkr _s ?? throw "null pointer dereference")._elems.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _i = (0 : stdgo.GoInt);
        for (_name => _ in (@:checkr _s ?? throw "null pointer dereference")._elems) {
            _names[(_i : stdgo.GoInt)] = _name?.__copy__();
            _i++;
        };
        stdgo._internal.sort.Sort_strings.strings(_names);
        return _names;
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._elems.length);
    }
    @:keep
    @:tdfield
    static public function parent( _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._parent;
    }
}
