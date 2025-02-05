package stdgo._internal.go.types;
function _writeObject(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _obj:stdgo._internal.go.types.Types_object.Object, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):Void {
        var _tname:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
        var _typ = (_obj.type() : stdgo._internal.go.types.Types_type_.Type_);
        {
            final __type__ = _obj;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("package %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _obj.name()));
                {
                    var _path = ((@:checkr (@:checkr _obj ?? throw "null pointer dereference")._imported ?? throw "null pointer dereference")._path?.__copy__() : stdgo.GoString);
                    if (((_path != (stdgo.Go.str() : stdgo.GoString)) && (_path != (@:checkr _obj ?? throw "null pointer dereference")._object._name) : Bool)) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), (" (%q)" : stdgo.GoString), stdgo.Go.toInterface(_path));
                    };
                };
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_const.Const> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_const.Const>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("const" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>) : __type__.__underlying__().value;
                _tname = _obj;
                @:check2r _buf.writeString(("type" : stdgo.GoString));
                if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_typ)) {
                    @:check2r _buf.writeString((" parameter" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_var.Var> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_var.Var>) : __type__.__underlying__().value;
                if ((@:checkr _obj ?? throw "null pointer dereference")._isField) {
                    @:check2r _buf.writeString(("field" : stdgo.GoString));
                } else {
                    @:check2r _buf.writeString(("var" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_func.Func> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("func " : stdgo.GoString));
                stdgo._internal.go.types.Types__writefuncname._writeFuncName(_buf, _obj, _qf);
                if (_typ != null) {
                    stdgo._internal.go.types.Types_writesignature.writeSignature(_buf, (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>), _qf);
                };
                return;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_label.Label> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_label.Label>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("label" : stdgo.GoString));
                _typ = (null : stdgo._internal.go.types.Types_type_.Type_);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_builtin.Builtin>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("builtin" : stdgo.GoString));
                _typ = (null : stdgo._internal.go.types.Types_type_.Type_);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>))) {
                var _obj:stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_nil.Nil>) : __type__.__underlying__().value;
                @:check2r _buf.writeString(("nil" : stdgo.GoString));
                return;
            } else {
                var _obj:stdgo._internal.go.types.Types_object.Object = __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : cast __type__;
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("writeObject(%T)" : stdgo.GoString), stdgo.Go.toInterface(_obj)));
            };
        };
        @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
        if (((_obj.pkg() != null && ((_obj.pkg() : Dynamic).__nil__ == null || !(_obj.pkg() : Dynamic).__nil__)) && (stdgo.Go.toInterface(@:check2r _obj.pkg()._scope.lookup(_obj.name()?.__copy__())) == stdgo.Go.toInterface(_obj)) : Bool)) {
            @:check2r _buf.writeString(stdgo._internal.go.types.Types__packageprefix._packagePrefix(_obj.pkg(), _qf)?.__copy__());
        };
        @:check2r _buf.writeString(_obj.name()?.__copy__());
        if (_typ == null) {
            return;
        };
        if ((_tname != null && ((_tname : Dynamic).__nil__ == null || !(_tname : Dynamic).__nil__))) {
            {
                final __type__ = _typ;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>) : __type__.__underlying__().value;
                    return;
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.types.Types_named.Named> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>) : __type__.__underlying__().value;
                    if ((@:check2r @:check2r _t.typeParams().len() > (0 : stdgo.GoInt) : Bool)) {
                        @:check2r stdgo._internal.go.types.Types__newtypewriter._newTypeWriter(_buf, _qf)._tParamList(@:check2r @:check2r _t.typeParams()._list());
                    };
                };
            };
            if (@:check2r _tname.isAlias()) {
                @:check2r _buf.writeString((" =" : stdgo.GoString));
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>)) : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>), _1 : false };
                }, _t = __tmp__._0, __0 = __tmp__._1;
                if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                    _typ = (@:checkr _t ?? throw "null pointer dereference")._bound;
                } else {
                    _typ = stdgo._internal.go.types.Types__under._under(_typ);
                };
            };
        };
        if (stdgo.Go.toInterface(_obj) == (stdgo.Go.toInterface(stdgo._internal.go.types.Types__universeany._universeAny))) {
            stdgo._internal.go.types.Types__assert._assert(stdgo._internal.go.types.Types_identical.identical(_typ, stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))));
            _typ = stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>));
        };
        @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
        stdgo._internal.go.types.Types_writetype.writeType(_buf, _typ, _qf);
    }
