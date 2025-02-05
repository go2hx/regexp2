package stdgo._internal.go.types;
function _coreTerm(_tpar:stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>; var _1 : Bool; } {
        var _n = (0 : stdgo.GoInt);
        var _single:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = (null : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>);
        var _tilde:Bool = false;
        @:check2r _tpar._is(function(_t:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>):Bool {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                stdgo._internal.go.types.Types__assert._assert(_n == ((0 : stdgo.GoInt)));
                return false;
            };
            _n++;
            _single = _t;
            if ((@:checkr _t ?? throw "null pointer dereference")._tilde) {
                _tilde = true;
            };
            return true;
        });
        if (_n == ((1 : stdgo.GoInt))) {
            if (false) {
                stdgo._internal.go.types.Types__assert._assert((false && (stdgo.Go.toInterface(stdgo._internal.go.types.Types__under._under((@:checkr _single ?? throw "null pointer dereference")._typ)) == stdgo.Go.toInterface(stdgo._internal.go.types.Types__coretype._coreType(stdgo.Go.asInterface(_tpar)))) : Bool));
            };
            return { _0 : _single, _1 : true };
        };
        {
            var _typ = (stdgo._internal.go.types.Types__coretype._coreType(stdgo.Go.asInterface(_tpar)) : stdgo._internal.go.types.Types_type_.Type_);
            if (_typ != null) {
                return { _0 : (stdgo.Go.setRef((new stdgo._internal.go.types.Types_t_term.T_term(_tilde, _typ) : stdgo._internal.go.types.Types_t_term.T_term)) : stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>), _1 : false };
            };
        };
        return { _0 : null, _1 : false };
    }
