package stdgo._internal.go.types;
function _computeInterfaceTypeSet(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, _pos:stdgo._internal.go.token.Token_pos.Pos, _ityp:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>):stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (((@:checkr _ityp ?? throw "null pointer dereference")._tset != null && (((@:checkr _ityp ?? throw "null pointer dereference")._tset : Dynamic).__nil__ == null || !((@:checkr _ityp ?? throw "null pointer dereference")._tset : Dynamic).__nil__))) {
                return (@:checkr _ityp ?? throw "null pointer dereference")._tset;
            };
            if (!(@:checkr _ityp ?? throw "null pointer dereference")._complete) {
                return (stdgo.Go.setRef(stdgo._internal.go.types.Types__toptypeset._topTypeSet) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            };
            if (((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && (@:checkr (@:checkr _check ?? throw "null pointer dereference")._conf ?? throw "null pointer dereference").__Trace : Bool)) {
                if ((!_pos.isValid() && (((@:checkr _ityp ?? throw "null pointer dereference")._methods.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _pos = (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._methods[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._object._pos;
                };
                @:check2r _check._trace(_pos, ("-- type set for %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ityp)));
                (@:checkr _check ?? throw "null pointer dereference")._indent++;
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            (@:checkr _check ?? throw "null pointer dereference")._indent--;
                            @:check2r _check._trace(_pos, ("=> %s " : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _ityp._typeSet())));
                        };
                        a();
                    }) });
                };
            };
            (@:checkr _ityp ?? throw "null pointer dereference")._tset = (stdgo.Go.setRef(({ _terms : stdgo._internal.go.types.Types__alltermlist._allTermlist } : stdgo._internal.go.types.Types_t__typeset.T__TypeSet)) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            var _unionSets:stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
            if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
                if ((@:checkr _check ?? throw "null pointer dereference")._unionTypeSets == null) {
                    (@:checkr _check ?? throw "null pointer dereference")._unionTypeSets = ({
                        final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
                };
                _unionSets = (@:checkr _check ?? throw "null pointer dereference")._unionTypeSets;
            } else {
                _unionSets = ({
                    final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>();
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_union.Union>, stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>>);
            };
            var _seen:stdgo._internal.go.types.Types_t_objset.T_objset = (null : stdgo._internal.go.types.Types_t_objset.T_objset);
            var _allMethods:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
            var _mpos = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, stdgo._internal.go.token.Token_pos.Pos>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, stdgo._internal.go.token.Token_pos.Pos>);
            var _addMethod = function(_pos:stdgo._internal.go.token.Token_pos.Pos, _m:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _explicit:Bool):Void {
                {
                    var _other = (@:check2 _seen._insert(stdgo.Go.asInterface(_m)) : stdgo._internal.go.types.Types_object.Object);
                    if (_other == null) {
                        _allMethods = (_allMethods.__append__(_m));
                        _mpos[_m] = _pos;
                    } else if (_explicit) {
                        if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
                            @:check2r _check._errorf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("duplicate method %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                            @:check2r _check._errorf(stdgo.Go.asInterface((_mpos[(stdgo.Go.typeAssert((stdgo.Go.toInterface(_other) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] ?? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("\tother declaration of %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                        };
                    } else {
                        if ((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__))) {
                            @:check2r @:check2r _check._later(function():Void {
                                if ((!@:check2r _check._allowVersion((@:checkr _m ?? throw "null pointer dereference")._object._pkg, stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_14._go1_14?.__copy__()) || !stdgo._internal.go.types.Types_identical.identical((@:checkr _m ?? throw "null pointer dereference")._object._typ, _other.type()) : Bool)) {
                                    @:check2r _check._errorf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("duplicate method %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                                    @:check2r _check._errorf(stdgo.Go.asInterface((_mpos[(stdgo.Go.typeAssert((stdgo.Go.toInterface(_other) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)) : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>)] ?? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.types.Types_t_atpos.T_atPos)), (10 : stdgo._internal.internal.types.errors.Errors_code.Code), ("\tother declaration of %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                                };
                            })._describef(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), ("duplicate method check for %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._object._name));
                        };
                    };
                };
            };
            for (__40 => _m in (@:checkr _ityp ?? throw "null pointer dereference")._methods) {
                _addMethod((@:checkr _m ?? throw "null pointer dereference")._object._pos, _m, true);
            };
            var _allTerms = (stdgo._internal.go.types.Types__alltermlist._allTermlist : stdgo._internal.go.types.Types_t_termlist.T_termlist);
            var _allComparable = (false : Bool);
            for (_i => _typ in (@:checkr _ityp ?? throw "null pointer dereference")._embeddeds) {
                var _pos:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
                if (((@:checkr _ityp ?? throw "null pointer dereference")._embedPos != null && (((@:checkr _ityp ?? throw "null pointer dereference")._embedPos : Dynamic).__nil__ == null || !((@:checkr _ityp ?? throw "null pointer dereference")._embedPos : Dynamic).__nil__))) {
                    _pos = (((@:checkr _ityp ?? throw "null pointer dereference")._embedPos : stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>))[(_i : stdgo.GoInt)];
                };
                var _comparable:Bool = false;
                var _terms:stdgo._internal.go.types.Types_t_termlist.T_termlist = new stdgo._internal.go.types.Types_t_termlist.T_termlist(0, 0);
                {
                    final __type__ = stdgo._internal.go.types.Types__under._under(_typ);
                    if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>))) {
                        var _u:stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>) : __type__.__underlying__().value;
                        stdgo._internal.go.types.Types__assert._assert(!stdgo._internal.go.types.Types__istypeparam._isTypeParam(_typ));
                        var _tset = stdgo._internal.go.types.Types__computeinterfacetypeset._computeInterfaceTypeSet(_check, _pos, _u);
                        if ((((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && @:check2r _check._isImportedConstraint(_typ) : Bool) && !@:check2r _check._verifyVersionf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_18._go1_18?.__copy__(), ("embedding constraint interface %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) : Bool)) {
                            continue;
                        };
                        _comparable = (@:checkr _tset ?? throw "null pointer dereference")._comparable;
                        for (__73 => _m in (@:checkr _tset ?? throw "null pointer dereference")._methods) {
                            _addMethod(_pos, _m, false);
                        };
                        _terms = (@:checkr _tset ?? throw "null pointer dereference")._terms;
                    } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>))) {
                        var _u:stdgo.Ref<stdgo._internal.go.types.Types_union.Union> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>) : __type__.__underlying__().value;
                        if (((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && !@:check2r _check._verifyVersionf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_18._go1_18?.__copy__(), ("embedding interface element %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_u))) : Bool)) {
                            continue;
                        };
                        var _tset = stdgo._internal.go.types.Types__computeuniontypeset._computeUnionTypeSet(_check, _unionSets, _pos, _u);
                        if (_tset == ((stdgo.Go.setRef(stdgo._internal.go.types.Types__invalidtypeset._invalidTypeSet) : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>))) {
                            continue;
                        };
                        stdgo._internal.go.types.Types__assert._assert(!(@:checkr _tset ?? throw "null pointer dereference")._comparable);
                        stdgo._internal.go.types.Types__assert._assert(((@:checkr _tset ?? throw "null pointer dereference")._methods.length) == ((0 : stdgo.GoInt)));
                        _terms = (@:checkr _tset ?? throw "null pointer dereference")._terms;
                    } else {
                        var _u:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : cast __type__;
                        if (stdgo.Go.toInterface(_u) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
                            continue;
                        };
                        if (((_check != null && ((_check : Dynamic).__nil__ == null || !(_check : Dynamic).__nil__)) && !@:check2r _check._verifyVersionf(stdgo.Go.asInterface((_pos : stdgo._internal.go.types.Types_t_atpos.T_atPos)), stdgo._internal.go.types.Types__go1_18._go1_18?.__copy__(), ("embedding non-interface type %s" : stdgo.GoString), stdgo.Go.toInterface(_typ)) : Bool)) {
                            continue;
                        };
                        _terms = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term>>(1, 1, ...[(new stdgo._internal.go.types.Types_t_term.T_term(false, _typ) : stdgo._internal.go.types.Types_t_term.T_term)]) : stdgo._internal.go.types.Types_t_termlist.T_termlist);
                    };
                };
                {
                    var __tmp__ = stdgo._internal.go.types.Types__intersecttermlists._intersectTermLists(_allTerms, _allComparable, _terms, _comparable);
                    _allTerms = @:tmpset0 __tmp__._0;
                    _allComparable = @:tmpset0 __tmp__._1;
                };
            };
            (@:checkr _ityp ?? throw "null pointer dereference")._embedPos = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>>);
            (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._tset ?? throw "null pointer dereference")._comparable = _allComparable;
            if ((_allMethods.length) != ((0 : stdgo.GoInt))) {
                stdgo._internal.go.types.Types__sortmethods._sortMethods(_allMethods);
                (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._tset ?? throw "null pointer dereference")._methods = _allMethods;
            };
            (@:checkr (@:checkr _ityp ?? throw "null pointer dereference")._tset ?? throw "null pointer dereference")._terms = _allTerms;
            {
                final __ret__:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> = (@:checkr _ityp ?? throw "null pointer dereference")._tset;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>);
            };
        };
    }
