package stdgo._internal.go.types;
function _def(_obj:stdgo._internal.go.types.Types_object.Object):Void {
        stdgo._internal.go.types.Types__assert._assert(_obj._color() == ((1u32 : stdgo._internal.go.types.Types_t_color.T_color)));
        var _name = (_obj.name()?.__copy__() : stdgo.GoString);
        if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), (" " : stdgo.GoString))) {
            return;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj.type()) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>), _1 : false };
            }, _typ = __tmp__._0, __0 = __tmp__._1;
            if ((_typ != null && ((_typ : Dynamic).__nil__ == null || !(_typ : Dynamic).__nil__))) {
                (@:checkr _typ ?? throw "null pointer dereference")._obj = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
            };
        };
        var _scope = stdgo._internal.go.types.Types_universe.universe;
        if (_obj.exported()) {
            _scope = (@:checkr stdgo._internal.go.types.Types_unsafe.unsafe ?? throw "null pointer dereference")._scope;
            {
                final __type__ = _obj;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>))) {
                    var _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__().value;
                    (@:checkr _obj ?? throw "null pointer dereference")._object._pkg = stdgo._internal.go.types.Types_unsafe.unsafe;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>))) {
                    var _obj:stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__().value;
                    (@:checkr _obj ?? throw "null pointer dereference")._object._pkg = stdgo._internal.go.types.Types_unsafe.unsafe;
                } else {
                    var _obj:stdgo._internal.go.types.Types_object.Object = __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : cast __type__;
                    stdgo._internal.go.types.Types__unreachable._unreachable();
                };
            };
        };
        if (@:check2r _scope.insert(_obj) != null) {
            throw stdgo.Go.toInterface(("double declaration of predeclared identifier" : stdgo.GoString));
        };
    }
