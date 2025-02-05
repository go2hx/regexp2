package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T__TypeSet_asInterface) class T__TypeSet_static_extension {
    @:keep
    @:tdfield
    static public function _underIs( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        if (!@:check2r _s._hasTerms()) {
            return _f((null : stdgo._internal.go.types.Types_type_.Type_));
        };
        for (__0 => _t in (@:checkr _s ?? throw "null pointer dereference")._terms) {
            stdgo._internal.go.types.Types__assert._assert((@:checkr _t ?? throw "null pointer dereference")._typ != null);
            var _u = ((@:checkr _t ?? throw "null pointer dereference")._typ : stdgo._internal.go.types.Types_type_.Type_);
            if (!(@:checkr _t ?? throw "null pointer dereference")._tilde) {
                _u = stdgo._internal.go.types.Types__under._under(_u);
            };
            if (false) {
                stdgo._internal.go.types.Types__assert._assert(stdgo._internal.go.types.Types_identical.identical(_u, stdgo._internal.go.types.Types__under._under(_u)));
            };
            if (!_f(_u)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _is( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _f:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> -> Bool):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        if (!@:check2r _s._hasTerms()) {
            return _f(null);
        };
        for (__0 => _t in (@:checkr _s ?? throw "null pointer dereference")._terms) {
            stdgo._internal.go.types.Types__assert._assert((@:checkr _t ?? throw "null pointer dereference")._typ != null);
            if (!_f(_t)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _subsetOf( _s1:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _s2:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s1:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s1;
        return (@:checkr _s1 ?? throw "null pointer dereference")._terms._subsetOf((@:checkr _s2 ?? throw "null pointer dereference")._terms);
    }
    @:keep
    @:tdfield
    static public function _hasTerms( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return (!(@:checkr _s ?? throw "null pointer dereference")._terms._isEmpty() && !(@:checkr _s ?? throw "null pointer dereference")._terms._isAll() : Bool);
    }
    @:keep
    @:tdfield
    static public function string( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        if (@:check2r _s.isEmpty()) {
            return ("∅" : stdgo.GoString);
        } else if (@:check2r _s.isAll()) {
            return ("𝓤" : stdgo.GoString);
        };
        var _hasMethods = (((@:checkr _s ?? throw "null pointer dereference")._methods.length) > (0 : stdgo.GoInt) : Bool);
        var _hasTerms = (@:check2r _s._hasTerms() : Bool);
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2 _buf.writeByte((123 : stdgo.GoUInt8));
        if ((@:checkr _s ?? throw "null pointer dereference")._comparable) {
            @:check2 _buf.writeString(("comparable" : stdgo.GoString));
            if ((_hasMethods || _hasTerms : Bool)) {
                @:check2 _buf.writeString(("; " : stdgo.GoString));
            };
        };
        for (_i => _m in (@:checkr _s ?? throw "null pointer dereference")._methods) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _buf.writeString(("; " : stdgo.GoString));
            };
            @:check2 _buf.writeString((@:check2r _m.string() : stdgo.GoString)?.__copy__());
        };
        if ((_hasMethods && _hasTerms : Bool)) {
            @:check2 _buf.writeString(("; " : stdgo.GoString));
        };
        if (_hasTerms) {
            @:check2 _buf.writeString(((@:checkr _s ?? throw "null pointer dereference")._terms.string() : stdgo.GoString)?.__copy__());
        };
        @:check2 _buf.writeString(("}" : stdgo.GoString));
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function lookupMethod( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return stdgo._internal.go.types.Types__lookupmethod._lookupMethod((@:checkr _s ?? throw "null pointer dereference")._methods, _pkg, _name?.__copy__(), _foldCase);
    }
    @:keep
    @:tdfield
    static public function method( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._methods[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function numMethods( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return ((@:checkr _s ?? throw "null pointer dereference")._methods.length);
    }
    @:keep
    @:tdfield
    static public function isComparable( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>, _seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._terms._isAll()) {
            return (@:checkr _s ?? throw "null pointer dereference")._comparable;
        };
        return @:check2r _s._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
            return ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && stdgo._internal.go.types.Types__comparable._comparable((@:checkr _t ?? throw "null pointer dereference")._typ, false, _seen, null) : Bool);
        });
    }
    @:keep
    @:tdfield
    static public function isMethodSet( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return (!(@:checkr _s ?? throw "null pointer dereference")._comparable && (@:checkr _s ?? throw "null pointer dereference")._terms._isAll() : Bool);
    }
    @:keep
    @:tdfield
    static public function isAll( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return (@:check2r _s.isMethodSet() && ((@:checkr _s ?? throw "null pointer dereference")._methods.length == (0 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isEmpty( _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._terms._isEmpty();
    }
}
