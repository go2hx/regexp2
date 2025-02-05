package stdgo._internal.go.types;
function default_(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>)) : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>), _1 : false };
            }, _t = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                {
                    final __value__ = (@:checkr _t ?? throw "null pointer dereference")._kind;
                    if (__value__ == ((19 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((1 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((20 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((21 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return stdgo._internal.go.types.Types__universerune._universeRune;
                    } else if (__value__ == ((22 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((14 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((23 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((16 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    } else if (__value__ == ((24 : stdgo._internal.go.types.Types_basickind.BasicKind))) {
                        return stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                    };
                };
            };
        };
        return _t;
    }
