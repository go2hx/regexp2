package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_termlist_asInterface) class T_termlist_static_extension {
    @:keep
    @:tdfield
    static public function _subsetOf( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        if (_yl._isEmpty()) {
            return _xl._isEmpty();
        };
        for (__0 => _x in _xl) {
            if (!_yl._supersetOf(_x)) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _supersetOf( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _y:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        for (__0 => _x in _xl) {
            if (@:check2r _y._subsetOf(_x)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _includes( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _t:stdgo._internal.go.types.Types_type_.Type_):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        for (__0 => _x in _xl) {
            if (@:check2r _x._includes(_t)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _equal( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        return (_xl._subsetOf(_yl) && _yl._subsetOf(_xl) : Bool);
    }
    @:keep
    @:tdfield
    static public function _intersect( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        if ((_xl._isEmpty() || _yl._isEmpty() : Bool)) {
            return null;
        };
        var _rl:stdgo._internal.go.types.Types_t_termlist.T_termlist = new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0);
        for (__0 => _x in _xl) {
            for (__1 => _y in _yl) {
                {
                    var _r = @:check2r _x._intersect(_y);
                    if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
                        _rl = (_rl.__append__(_r));
                    };
                };
            };
        };
        return _rl._norm();
    }
    @:keep
    @:tdfield
    static public function _union( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist, _yl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        return (_xl.__append__(...(_yl : Array<stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>>)))._norm();
    }
    @:keep
    @:tdfield
    static public function _norm( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo._internal.go.types.Types_t_termlist.T_termlist {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        var _used = (new stdgo.Slice<Bool>((_xl.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _rl:stdgo._internal.go.types.Types_t_termlist.T_termlist = new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0);
        for (_i => _xi in _xl) {
            if (((_xi == null || (_xi : Dynamic).__nil__) || _used[(_i : stdgo.GoInt)] : Bool)) {
                continue;
            };
            {
                var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_j < (_xl.length) : Bool)) {
                    var _xj = _xl[(_j : stdgo.GoInt)];
if (((_xj == null || (_xj : Dynamic).__nil__) || _used[(_j : stdgo.GoInt)] : Bool)) {
                        {
                            _j++;
                            continue;
                        };
                    };
{
                        var __tmp__ = @:check2r _xi._union(_xj), _u1:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._0, _u2:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._1;
                        if ((_u2 == null || (_u2 : Dynamic).__nil__)) {
                            if ((@:checkr _u1 ?? throw "null pointer dereference")._typ == null) {
                                return stdgo._internal.go.types.Types__alltermlist._allTermlist;
                            };
                            _xi = _u1;
                            _used[(_j : stdgo.GoInt)] = true;
                        };
                    };
                    _j++;
                };
            };
            _rl = (_rl.__append__(_xi));
        };
        return _rl;
    }
    @:keep
    @:tdfield
    static public function _isAll( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        for (__0 => _x in _xl) {
            if (((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) && ((@:checkr _x ?? throw "null pointer dereference")._typ == null) : Bool)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _isEmpty( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):Bool {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        for (__0 => _x in _xl) {
            if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function string( _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist):stdgo.GoString {
        @:recv var _xl:stdgo._internal.go.types.Types_t_termlist.T_termlist = _xl;
        if ((_xl.length) == ((0 : stdgo.GoInt))) {
            return ("∅" : stdgo.GoString);
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (_i => _x in _xl) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _buf.writeString((" | " : stdgo.GoString));
            };
            @:check2 _buf.writeString((@:check2r _x.string() : stdgo.GoString)?.__copy__());
        };
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
}
