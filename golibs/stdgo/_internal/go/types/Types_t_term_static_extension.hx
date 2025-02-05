package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_term_asInterface) class T_term_static_extension {
    @:keep
    @:tdfield
    static public function _disjoint( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        if ((false && ((((@:checkr _x ?? throw "null pointer dereference")._typ == null) || ((@:checkr _y ?? throw "null pointer dereference")._typ == null) : Bool)) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argument(s)" : stdgo.GoString));
        };
        var _ux = ((@:checkr _x ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        if ((@:checkr _y ?? throw "null pointer dereference")._tilde) {
            _ux = stdgo._internal.go.types.Types__under._under(_ux);
        };
        var _uy = ((@:checkr _y ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
        if ((@:checkr _x ?? throw "null pointer dereference")._tilde) {
            _uy = stdgo._internal.go.types.Types__under._under(_uy);
        };
        return !stdgo._internal.go.types.Types_identical.identical(_ux, _uy);
    }
    @:keep
    @:tdfield
    static public function _subsetOf( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return true;
        } else if ((_y == null || (_y : Dynamic).__nil__)) {
            return false;
        } else if ((@:checkr _y ?? throw "null pointer dereference")._typ == null) {
            return true;
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            return false;
        };
        if (@:check2r _x._disjoint(_y)) {
            return false;
        };
        return (!(@:checkr _x ?? throw "null pointer dereference")._tilde || (@:checkr _y ?? throw "null pointer dereference")._tilde : Bool);
    }
    @:keep
    @:tdfield
    static public function _includes( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return false;
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            return true;
        };
        var _u = (_t : stdgo._internal.go.types.Types_type_.Type_);
        if ((@:checkr _x ?? throw "null pointer dereference")._tilde) {
            _u = stdgo._internal.go.types.Types__under._under(_u);
        };
        return stdgo._internal.go.types.Types_identical.identical((@:checkr _x ?? throw "null pointer dereference")._typ, _u);
    }
    @:keep
    @:tdfield
    static public function _intersect( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        if (((_x == null || (_x : Dynamic).__nil__) || (_y == null || (_y : Dynamic).__nil__) : Bool)) {
            return null;
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            return _y;
        } else if ((@:checkr _y ?? throw "null pointer dereference")._typ == null) {
            return _x;
        };
        if (@:check2r _x._disjoint(_y)) {
            return null;
        };
        if ((!(@:checkr _x ?? throw "null pointer dereference")._tilde || (@:checkr _y ?? throw "null pointer dereference")._tilde : Bool)) {
            return _x;
        };
        return _y;
    }
    @:keep
    @:tdfield
    static public function _union( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        var _0 = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>), _1 = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        if (((_x == null || (_x : Dynamic).__nil__) && (_y == null || (_y : Dynamic).__nil__) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : null, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if ((_x == null || (_x : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _y, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if ((_y == null || (_y : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        } else if ((@:checkr _y ?? throw "null pointer dereference")._typ == null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _y, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        if (@:check2r _x._disjoint(_y)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : _y };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        if (((@:checkr _x ?? throw "null pointer dereference")._tilde || !(@:checkr _y ?? throw "null pointer dereference")._tilde : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _x, _1 : null };
                _0 = __tmp__._0;
                _1 = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; } = { _0 : _y, _1 : null };
            _0 = __tmp__._0;
            _1 = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _equal( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        if (((_x == null || (_x : Dynamic).__nil__) || (_y == null || (_y : Dynamic).__nil__) : Bool)) {
            return _x == (_y);
        } else if ((((@:checkr _x ?? throw "null pointer dereference")._typ == null) || ((@:checkr _y ?? throw "null pointer dereference")._typ == null) : Bool)) {
            return stdgo.Go.toInterface((@:checkr _x ?? throw "null pointer dereference")._typ) == (stdgo.Go.toInterface((@:checkr _y ?? throw "null pointer dereference")._typ));
        };
        return (((@:checkr _x ?? throw "null pointer dereference")._tilde == (@:checkr _y ?? throw "null pointer dereference")._tilde) && stdgo._internal.go.types.Types_identical.identical((@:checkr _x ?? throw "null pointer dereference")._typ, (@:checkr _y ?? throw "null pointer dereference")._typ) : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = _x;
        if ((_x == null || (_x : Dynamic).__nil__)) {
            return ("∅" : stdgo.GoString);
        } else if ((@:checkr _x ?? throw "null pointer dereference")._typ == null) {
            return ("𝓤" : stdgo.GoString);
        } else if ((@:checkr _x ?? throw "null pointer dereference")._tilde) {
            return (("~" : stdgo.GoString) + ((@:checkr _x ?? throw "null pointer dereference")._typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            return ((@:checkr _x ?? throw "null pointer dereference")._typ.string() : stdgo.GoString)?.__copy__();
        };
    }
}
