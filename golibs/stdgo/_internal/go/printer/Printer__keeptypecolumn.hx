package stdgo._internal.go.printer;
function _keepTypeColumn(_specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>):stdgo.Slice<Bool> {
        var _m = (new stdgo.Slice<Bool>((_specs.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
        var _populate = (function(_i:stdgo.GoInt, _j:stdgo.GoInt, _keepType:Bool):Void {
            if (_keepType) {
                while ((_i < _j : Bool)) {
                    _m[(_i : stdgo.GoInt)] = true;
                    _i++;
                };
            };
        } : (stdgo.GoInt, stdgo.GoInt, Bool) -> Void);
        var _i0 = (-1 : stdgo.GoInt);
        var _keepType:Bool = false;
        for (_i => _s in _specs) {
            var _t = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>);
            if ((@:checkr _t ?? throw "null pointer dereference").values != null) {
                if ((_i0 < (0 : stdgo.GoInt) : Bool)) {
                    _i0 = _i;
                    _keepType = false;
                };
            } else {
                if ((_i0 >= (0 : stdgo.GoInt) : Bool)) {
                    _populate(_i0, _i, _keepType);
                    _i0 = (-1 : stdgo.GoInt);
                };
            };
            if ((@:checkr _t ?? throw "null pointer dereference").type != null) {
                _keepType = true;
            };
        };
        if ((_i0 >= (0 : stdgo.GoInt) : Bool)) {
            _populate(_i0, (_specs.length), _keepType);
        };
        return _m;
    }
