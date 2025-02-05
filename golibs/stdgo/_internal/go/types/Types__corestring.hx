package stdgo._internal.go.types;
function _coreString(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
        }, _tpar = __tmp__._0, __0 = __tmp__._1;
        if ((_tpar == null || (_tpar : Dynamic).__nil__)) {
            return stdgo._internal.go.types.Types__under._under(_t);
        };
        var _su:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        var _hasString = (false : Bool);
        if (@:check2r _tpar._underIs(function(_u:stdgo._internal.go.types.Types_type_.Type_):Bool {
            if (_u == null) {
                return false;
            };
            if (stdgo._internal.go.types.Types__isstring._isString(_u)) {
                _u = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newslice.newSlice(stdgo._internal.go.types.Types__universebyte._universeByte));
                _hasString = true;
            };
            if (_su != null) {
                _u = stdgo._internal.go.types.Types__match._match(_su, _u);
                if (_u == null) {
                    return false;
                };
            };
            _su = _u;
            return true;
        })) {
            if (_hasString) {
                return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
            };
            return _su;
        };
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
