package stdgo._internal.go.types;
function _resolve(_name:stdgo.GoString, _obj:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_object.Object {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>)) : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>), _1 : false };
            }, _lazy = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                @:check2 (@:checkr _lazy ?? throw "null pointer dereference")._once.do_(function():Void {
                    var _obj = ((@:checkr _lazy ?? throw "null pointer dereference")._resolve() : stdgo._internal.go.types.Types_object.Object);
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>)) : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_t_lazyobject.T_lazyObject>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            throw stdgo.Go.toInterface(("recursive lazy object" : stdgo.GoString));
                        };
                    };
                    if (_obj.name() != (_name)) {
                        throw stdgo.Go.toInterface(("lazy object has unexpected name" : stdgo.GoString));
                    };
                    if ((_obj.parent() == null || (_obj.parent() : Dynamic).__nil__)) {
                        _obj._setParent((@:checkr _lazy ?? throw "null pointer dereference")._parent);
                    };
                    (@:checkr _lazy ?? throw "null pointer dereference")._obj = _obj;
                });
                _obj = (@:checkr _lazy ?? throw "null pointer dereference")._obj;
            };
        };
        return _obj;
    }
