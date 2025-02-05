package stdgo._internal.go.types;
function newStruct(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>, _tags:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> {
        var _fset:stdgo._internal.go.types.Types_t_objset.T_objset = (null : stdgo._internal.go.types.Types_t_objset.T_objset);
        for (__0 => _f in _fields) {
            if ((((@:checkr _f ?? throw "null pointer dereference")._object._name != ("_" : stdgo.GoString)) && (@:check2 _fset._insert(stdgo.Go.asInterface(_f)) != null) : Bool)) {
                throw stdgo.Go.toInterface(("multiple fields with the same name" : stdgo.GoString));
            };
        };
        if (((_tags.length) > (_fields.length) : Bool)) {
            throw stdgo.Go.toInterface(("more tags than fields" : stdgo.GoString));
        };
        var _s = (stdgo.Go.setRef(({ _fields : _fields, _tags : _tags } : stdgo._internal.go.types.Types_struct.Struct)) : stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct>);
        @:check2r _s._markComplete();
        return _s;
    }
