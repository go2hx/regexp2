package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    @:tdfield
    static public function _ident( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>, _marker:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync(_marker);
        return { _0 : @:check2r _r._pkg(), _1 : (@:check2r _r.string() : stdgo.GoString)?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _selector( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        return @:check2r _r._ident((28 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
    }
    @:keep
    @:tdfield
    static public function _localIdent( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        return @:check2r _r._ident((27 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
    }
    @:keep
    @:tdfield
    static public function _qualifiedIdent( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.GoString; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        return @:check2r _r._ident((26 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
    }
    @:keep
    @:tdfield
    static public function _method( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((18 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _pos = (@:check2r _r._pos() : stdgo._internal.go.token.Token_pos.Pos);
        var __tmp__ = @:check2r _r._selector(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _rparams = @:check2r _r._typeParamNames();
        var _sig = @:check2r _r._signature(@:check2r _r._param(), _rparams, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
        var __blank__ = @:check2r _r._pos();
        return stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _pkg, _name?.__copy__(), _sig);
    }
    @:keep
    @:tdfield
    static public function _typeParamNames( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((21 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        };
        (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>);
        for (_i => _ in (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds) {
            var _pos = (@:check2r _r._pos() : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = @:check2r _r._localIdent(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            var _tname = stdgo._internal.go.types.Types_newtypename.newTypeName(_pos, _pkg, _name?.__copy__(), (null : stdgo._internal.go.types.Types_type_.Type_));
            (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newtypeparam.newTypeParam(_tname, (null : stdgo._internal.go.types.Types_type_.Type_));
        };
        var _typs = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        for (_i => _bound in (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._bounds) {
            _typs[(_i : stdgo.GoInt)] = @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._typIdx(_bound?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._dict);
        };
        var _tparams = (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams;
        @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._later(function():Void {
            for (_i => _typ in _typs) {
                @:check2r _tparams[(_i : stdgo.GoInt)].setConstraint(_typ);
            };
        });
        return (@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams;
    }
    @:keep
    @:tdfield
    static public function _obj( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):{ var _0 : stdgo._internal.go.types.Types_object.Object; var _1 : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((14 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        stdgo._internal.go.internal.gcimporter.Gcimporter__assert._assert(!@:check2r _r.bool_());
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._objIdx(@:check2r _r.reloc((6 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind))), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _obj = (@:check2r stdgo._internal.go.internal.gcimporter.Gcimporter__pkgscope._pkgScope(_pkg).lookup(_name?.__copy__()) : stdgo._internal.go.types.Types_object.Object);
        var _targs = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((@:check2r _r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        for (_i => _ in _targs) {
            _targs[(_i : stdgo.GoInt)] = @:check2r _r._typ();
        };
        return { _0 : _obj, _1 : _targs };
    }
    @:keep
    @:tdfield
    static public function _param( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((24 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _pos = (@:check2r _r._pos() : stdgo._internal.go.token.Token_pos.Pos);
        var __tmp__ = @:check2r _r._localIdent(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
        var _typ = (@:check2r _r._typ() : stdgo._internal.go.types.Types_type_.Type_);
        return stdgo._internal.go.types.Types_newparam.newParam(_pos, _pkg, _name?.__copy__(), _typ);
    }
    @:keep
    @:tdfield
    static public function _params( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_tuple.Tuple> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((23 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _params = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((@:check2r _r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        for (_i => _ in _params) {
            _params[(_i : stdgo.GoInt)] = @:check2r _r._param();
        };
        return stdgo._internal.go.types.Types_newtuple.newTuple(...(_params : Array<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>));
    }
    @:keep
    @:tdfield
    static public function _signature( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>, _recv:stdgo.Ref<stdgo._internal.go.types.Types_var.Var>, _rtparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>, _tparams:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((22 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        var _params = @:check2r _r._params();
        var _results = @:check2r _r._params();
        var _variadic = (@:check2r _r.bool_() : Bool);
        return stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(_recv, _rtparams, _tparams, _params, _results, _variadic);
    }
    @:keep
    @:tdfield
    static public function _interfaceType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _methods = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>((@:check2r _r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
        var _embeddeds = (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>((@:check2r _r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>);
        var _implicit = (((_methods.length) == ((0 : stdgo.GoInt)) && (_embeddeds.length) == ((1 : stdgo.GoInt)) : Bool) && @:check2r _r.bool_() : Bool);
        for (_i => _ in _methods) {
            var _pos = (@:check2r _r._pos() : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = @:check2r _r._selector(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            var _mtyp = @:check2r _r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>));
            _methods[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfunc.newFunc(_pos, _pkg, _name?.__copy__(), _mtyp);
        };
        for (_i => _ in _embeddeds) {
            _embeddeds[(_i : stdgo.GoInt)] = @:check2r _r._typ();
        };
        var _iface = stdgo._internal.go.types.Types_newinterfacetype.newInterfaceType(_methods, _embeddeds);
        if (_implicit) {
            @:check2r _iface.markImplicit();
        };
        (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ifaces = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ifaces.__append__(_iface));
        return _iface;
    }
    @:keep
    @:tdfield
    static public function _unionType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_union.Union> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _terms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>((@:check2r _r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
        for (_i => _ in _terms) {
            _terms[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newterm.newTerm(@:check2r _r.bool_(), @:check2r _r._typ());
        };
        return stdgo._internal.go.types.Types_newunion.newUnion(_terms);
    }
    @:keep
    @:tdfield
    static public function _structType( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_struct.Struct> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _fields = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>((@:check2r _r.len() : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>);
        var _tags:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _fields) {
            var _pos = (@:check2r _r._pos() : stdgo._internal.go.token.Token_pos.Pos);
            var __tmp__ = @:check2r _r._selector(), _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = __tmp__._0, _name:stdgo.GoString = __tmp__._1;
            var _ftyp = (@:check2r _r._typ() : stdgo._internal.go.types.Types_type_.Type_);
            var _tag = ((@:check2r _r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _embedded = (@:check2r _r.bool_() : Bool);
            _fields[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types_newfield.newField(_pos, _pkg, _name?.__copy__(), _ftyp, _embedded);
            if (_tag != ((stdgo.Go.str() : stdgo.GoString))) {
                while (((_tags.length) < _i : Bool)) {
                    _tags = (_tags.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()));
                };
                _tags = (_tags.__append__(_tag?.__copy__()));
            };
        };
        return stdgo._internal.go.types.Types_newstruct.newStruct(_fields, _tags);
    }
    @:keep
    @:tdfield
    static public function _doTyp( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _res = (null : stdgo._internal.go.types.Types_type_.Type_);
        {
            var _tag = (@:check2r _r.code((19 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker)) : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType);
            {
                final __value__ = _tag;
                if (__value__ == ((0 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[(@:check2r _r.len() : stdgo.GoInt)]);
                } else if (__value__ == ((1 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    var __tmp__ = @:check2r _r._obj(), _obj:stdgo._internal.go.types.Types_object.Object = __tmp__._0, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = __tmp__._1;
                    var _name = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_obj) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>)) : stdgo.Ref<stdgo._internal.go.types.Types_typename.TypeName>);
                    if ((_targs.length) != ((0 : stdgo.GoInt))) {
                        var __tmp__ = stdgo._internal.go.types.Types_instantiate.instantiate((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._ctxt, @:check2r _name.type(), _targs, false), _t:stdgo._internal.go.types.Types_type_.Type_ = __tmp__._0, __32:stdgo.Error = __tmp__._1;
                        return _res = _t;
                    };
                    return _res = @:check2r _name.type();
                } else if (__value__ == ((11 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface((@:checkr (@:checkr _r ?? throw "null pointer dereference")._dict ?? throw "null pointer dereference")._tparams[(@:check2r _r.len() : stdgo.GoInt)]);
                } else if (__value__ == ((4 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    var _len = (@:check2r _r.uint64() : stdgo.GoInt64);
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newarray.newArray(@:check2r _r._typ(), _len));
                } else if (__value__ == ((5 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    var _dir = (@:check2r _r.len() : stdgo._internal.go.types.Types_chandir.ChanDir);
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newchan.newChan(_dir, @:check2r _r._typ()));
                } else if (__value__ == ((6 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newmap.newMap(@:check2r _r._typ(), @:check2r _r._typ()));
                } else if (__value__ == ((2 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newpointer.newPointer(@:check2r _r._typ()));
                } else if (__value__ == ((7 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(@:check2r _r._signature(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>)));
                } else if (__value__ == ((3 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newslice.newSlice(@:check2r _r._typ()));
                } else if (__value__ == ((8 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(@:check2r _r._structType());
                } else if (__value__ == ((9 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(@:check2r _r._interfaceType());
                } else if (__value__ == ((10 : stdgo._internal.internal.pkgbits.Pkgbits_codetype.CodeType))) {
                    return _res = stdgo.Go.asInterface(@:check2r _r._unionType());
                } else {
                    stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unhandled type tag: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tag)));
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _typInfo( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((19 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        if (@:check2r _r.bool_()) {
            return ({ _idx : (@:check2r _r.len() : stdgo._internal.internal.pkgbits.Pkgbits_index.Index), _derived : true } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo);
        };
        return ({ _idx : @:check2r _r.reloc((5 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)), _derived : false } : stdgo._internal.go.internal.gcimporter.Gcimporter_t_typeinfo.T_typeInfo);
    }
    @:keep
    @:tdfield
    static public function _typ( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        return @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._typIdx(@:check2r _r._typInfo()?.__copy__(), (@:checkr _r ?? throw "null pointer dereference")._dict);
    }
    @:keep
    @:tdfield
    static public function _doPkg( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        var _path = ((@:check2r _r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            final __value__ = _path;
            if (__value__ == ((stdgo.Go.str() : stdgo.GoString))) {
                _path = @:check2r (@:checkr _r ?? throw "null pointer dereference")._p.pkgPath()?.__copy__();
            } else if (__value__ == (("builtin" : stdgo.GoString))) {
                return null;
            } else if (__value__ == (("unsafe" : stdgo.GoString))) {
                return stdgo._internal.go.types.Types_unsafe.unsafe;
            };
        };
        {
            var _pkg = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._imports[_path] ?? (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>));
            if ((_pkg != null && ((_pkg : Dynamic).__nil__ == null || !(_pkg : Dynamic).__nil__))) {
                return _pkg;
            };
        };
        var _name = ((@:check2r _r.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _pkg = stdgo._internal.go.types.Types_newpackage.newPackage(_path?.__copy__(), _name?.__copy__());
        (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._imports[_path] = _pkg;
        return _pkg;
    }
    @:keep
    @:tdfield
    static public function _pkg( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((16 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        return @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._pkgIdx(@:check2r _r.reloc((3 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)));
    }
    @:keep
    @:tdfield
    static public function _posBase( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        return @:check2r (@:checkr _r ?? throw "null pointer dereference")._p._posBaseIdx(@:check2r _r.reloc((2 : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pos( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader> = _r;
        @:check2r _r.sync((12 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker));
        if (!@:check2r _r.bool_()) {
            return (0 : stdgo._internal.go.token.Token_pos.Pos);
        };
        var _posBase = (@:check2r _r._posBase()?.__copy__() : stdgo.GoString);
        var _line = (@:check2r _r.uint() : stdgo.GoUInt);
        var _col = (@:check2r _r.uint() : stdgo.GoUInt);
        return @:check2 (@:checkr (@:checkr _r ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._fake._pos(_posBase?.__copy__(), (_line : stdgo.GoInt), (_col : stdgo.GoInt));
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _scalar( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.go.constant.Constant_value.Value return @:_5 __self__._scalar();
    @:embedded
    @:embeddededffieldsffun
    public static function _rawVarint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt64 return @:_5 __self__._rawVarint();
    @:embedded
    @:embeddededffieldsffun
    public static function _rawUvarint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoUInt64 return @:_5 __self__._rawUvarint();
    @:embedded
    @:embeddededffieldsffun
    public static function _rawReloc( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, _1:stdgo.GoInt):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_5 __self__._rawReloc(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _checkErr( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo.Error):Void return @:_5 __self__._checkErr(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _bigInt( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return @:_5 __self__._bigInt();
    @:embedded
    @:embeddededffieldsffun
    public static function _bigFloat( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return @:_5 __self__._bigFloat();
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo._internal.go.constant.Constant_value.Value return @:_5 __self__.value();
    @:embedded
    @:embeddededffieldsffun
    public static function uint64( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoUInt64 return @:_5 __self__.uint64();
    @:embedded
    @:embeddededffieldsffun
    public static function uint( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoUInt return @:_5 __self__.uint();
    @:embedded
    @:embeddededffieldsffun
    public static function sync( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):Void return @:_5 __self__.sync(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function strings( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.Slice<stdgo.GoString> return @:_5 __self__.strings();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function reloc( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind):stdgo._internal.internal.pkgbits.Pkgbits_index.Index return @:_5 __self__.reloc(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function len( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt return @:_5 __self__.len();
    @:embedded
    @:embeddededffieldsffun
    public static function int64( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt64 return @:_5 __self__.int64();
    @:embedded
    @:embeddededffieldsffun
    public static function int_( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):stdgo.GoInt return @:_5 __self__.int_();
    @:embedded
    @:embeddededffieldsffun
    public static function code( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader, _0:stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker):stdgo.GoInt return @:_5 __self__.code(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function bool_( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_reader.T_reader):Bool return @:_5 __self__.bool_();
}
