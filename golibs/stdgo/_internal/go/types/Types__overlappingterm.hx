package stdgo._internal.go.types;
function _overlappingTerm(_terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>, _y:stdgo.Ref<stdgo._internal.go.types.Types_term.Term>):stdgo.GoInt {
        stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types_isinterface.isInterface((@:checkr _y ?? throw "null pointer dereference")._typ));
        for (_i => _x in _terms) {
            if (stdgo._internal.go.types.Types_isinterface.isInterface((@:checkr _x ?? throw "null pointer dereference")._typ)) {
                continue;
            };
            if (false) {
                if (((((_x == null || (_x : Dynamic).__nil__) || (@:checkr _x ?? throw "null pointer dereference")._typ == null : Bool) || (_y == null || (_y : Dynamic).__nil__) : Bool) || ((@:checkr _y ?? throw "null pointer dereference")._typ == null) : Bool)) {
                    throw stdgo.Go.toInterface(("empty or top union term" : stdgo.GoString));
                };
            };
            if (!@:check2r (({
                final e = _x;
                ({ _tilde : e._tilde, _typ : e._typ } : stdgo._internal.go.types.Types_t_term.T_term);
            }))._disjoint((({
                final e = _y;
                ({ _tilde : e._tilde, _typ : e._typ } : stdgo._internal.go.types.Types_t_term.T_term);
            })))) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
