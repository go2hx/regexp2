package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_object_asInterface) class T_object_static_extension {
    @:keep
    @:tdfield
    static public function _less( _a:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _b:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool {
        @:recv var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _a;
        if (_a == (_b)) {
            return false;
        };
        if ((_a == null || (_a : Dynamic).__nil__)) {
            return true;
        };
        if ((_b == null || (_b : Dynamic).__nil__)) {
            return false;
        };
        var _ea = (stdgo._internal.go.types.Types__isexported._isExported((@:checkr _a ?? throw "null pointer dereference")._name?.__copy__()) : Bool);
        var _eb = (stdgo._internal.go.types.Types__isexported._isExported((@:checkr _b ?? throw "null pointer dereference")._name?.__copy__()) : Bool);
        if (_ea != (_eb)) {
            return _ea;
        };
        if ((@:checkr _a ?? throw "null pointer dereference")._name != ((@:checkr _b ?? throw "null pointer dereference")._name)) {
            return ((@:checkr _a ?? throw "null pointer dereference")._name < (@:checkr _b ?? throw "null pointer dereference")._name : Bool);
        };
        if (!_ea) {
            return ((@:checkr (@:checkr _a ?? throw "null pointer dereference")._pkg ?? throw "null pointer dereference")._path < (@:checkr (@:checkr _b ?? throw "null pointer dereference")._pkg ?? throw "null pointer dereference")._path : Bool);
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _sameId( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Bool {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        if (_name != ((@:checkr _obj ?? throw "null pointer dereference")._name)) {
            return false;
        };
        if (@:check2r _obj.exported()) {
            return true;
        };
        if (((_pkg == null || (_pkg : Dynamic).__nil__) || ((@:checkr _obj ?? throw "null pointer dereference")._pkg == null || ((@:checkr _obj ?? throw "null pointer dereference")._pkg : Dynamic).__nil__) : Bool)) {
            return _pkg == ((@:checkr _obj ?? throw "null pointer dereference")._pkg);
        };
        return (@:checkr _pkg ?? throw "null pointer dereference")._path == ((@:checkr (@:checkr _obj ?? throw "null pointer dereference")._pkg ?? throw "null pointer dereference")._path);
    }
    @:keep
    @:tdfield
    static public function _setScopePos( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _pos:stdgo._internal.go.token.Token_pos.Pos):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        (@:checkr _obj ?? throw "null pointer dereference")._scopePos_ = _pos;
    }
    @:keep
    @:tdfield
    static public function _setColor( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _color:stdgo._internal.go.types.Types_t_color.T_color):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        stdgo._internal.go.types.Types__assert._assert(_color != ((0u32 : stdgo._internal.go.types.Types_t_color.T_color)));
        (@:checkr _obj ?? throw "null pointer dereference")._color_ = _color;
    }
    @:keep
    @:tdfield
    static public function _setOrder( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _order:stdgo.GoUInt32):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        stdgo._internal.go.types.Types__assert._assert((_order > (0u32 : stdgo.GoUInt32) : Bool));
        (@:checkr _obj ?? throw "null pointer dereference")._order_ = _order;
    }
    @:keep
    @:tdfield
    static public function _setType( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _typ:stdgo._internal.go.types.Types_type_.Type_):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        (@:checkr _obj ?? throw "null pointer dereference")._typ = _typ;
    }
    @:keep
    @:tdfield
    static public function _setParent( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>, _parent:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        (@:checkr _obj ?? throw "null pointer dereference")._parent = _parent;
    }
    @:keep
    @:tdfield
    static public function _scopePos( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._scopePos_;
    }
    @:keep
    @:tdfield
    static public function _color( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.types.Types_t_color.T_color {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._color_;
    }
    @:keep
    @:tdfield
    static public function _order( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoUInt32 {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._order_;
    }
    @:keep
    @:tdfield
    static public function string( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        throw stdgo.Go.toInterface(("abstract" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function id( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return stdgo._internal.go.types.Types_id.id((@:checkr _obj ?? throw "null pointer dereference")._pkg, (@:checkr _obj ?? throw "null pointer dereference")._name?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function exported( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):Bool {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return stdgo._internal.go.types.Types__isexported._isExported((@:checkr _obj ?? throw "null pointer dereference")._name?.__copy__());
    }
    @:keep
    @:tdfield
    static public function type( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._typ;
    }
    @:keep
    @:tdfield
    static public function name( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.GoString {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function pkg( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._pkg;
    }
    @:keep
    @:tdfield
    static public function pos( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._pos;
    }
    @:keep
    @:tdfield
    static public function parent( _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object>):stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> {
        @:recv var _obj:stdgo.Ref<stdgo._internal.go.types.Types_t_object.T_object> = _obj;
        return (@:checkr _obj ?? throw "null pointer dereference")._parent;
    }
}
