package stdgo._internal.go.types;
function _parseUnion(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, _uexpr:stdgo._internal.go.ast.Ast_expr.Expr):stdgo._internal.go.types.Types_type_.Type_ {
        var __tmp__ = stdgo._internal.go.types.Types__flattenunion._flattenUnion((null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>), _uexpr), _blist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = __tmp__._0, _tlist:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = __tmp__._1;
        stdgo._internal.go.types.Types__assert._assert((_blist.length) == (((_tlist.length) - (1 : stdgo.GoInt) : stdgo.GoInt)));
        var _terms:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>);
        var _u:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        for (_i => _x in _tlist) {
            var _term = stdgo._internal.go.types.Types__parsetilde._parseTilde(_check, _x);
            if (((_tlist.length == (1 : stdgo.GoInt)) && !(@:checkr _term ?? throw "null pointer dereference")._tilde : Bool)) {
                return (@:checkr _term ?? throw "null pointer dereference")._typ;
            };
            if (((_terms.length) >= (100 : stdgo.GoInt) : Bool)) {
                if (stdgo.Go.toInterface(_u) != (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
                    @:check2r _check._errorf(_x, (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("cannot handle more than %d union terms (implementation limitation)" : stdgo.GoString), stdgo.Go.toInterface((100 : stdgo.GoInt)));
                    _u = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
                };
            } else {
                _terms = (_terms.__append__(_term));
                _u = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.types.Types_union.Union(_terms) : stdgo._internal.go.types.Types_union.Union)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>));
            };
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _check._recordTypeAndValue(_blist[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)], (3 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode), _u, (null : stdgo._internal.go.constant.Constant_value.Value));
            };
        };
        if (stdgo.Go.toInterface(_u) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
            return _u;
        };
        @:check2r @:check2r _check._later(function():Void {
            for (_i => _t in _terms) {
                if (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._typ) == (stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])))) {
                    continue;
                };
                var _u = (stdgo._internal.go.types.Types__under._under((@:checkr _t ?? throw "null pointer dereference")._typ) : stdgo._internal.go.types.Types_type_.Type_);
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_u) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _f = __tmp__._0, __8 = __tmp__._1;
                if ((@:checkr _t ?? throw "null pointer dereference")._tilde) {
                    if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                        @:check2r _check._errorf(_tlist[(_i : stdgo.GoInt)], (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("invalid use of ~ (%s is an interface)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._typ));
                        continue;
                    };
                    if (!stdgo._internal.go.types.Types_identical.identical(_u, (@:checkr _t ?? throw "null pointer dereference")._typ)) {
                        @:check2r _check._errorf(_tlist[(_i : stdgo.GoInt)], (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("invalid use of ~ (underlying type of %s is %s)" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._typ), stdgo.Go.toInterface(_u));
                        continue;
                    };
                };
                if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
                    var _tset = @:check2r _f._typeSet();
                    if (@:check2r _tset.numMethods() != ((0 : stdgo.GoInt))) {
                        @:check2r _check._errorf(_tlist[(_i : stdgo.GoInt)], (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("cannot use %s in union (%s contains methods)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                    } else if (stdgo.Go.toInterface((@:checkr _t ?? throw "null pointer dereference")._typ) == (stdgo.Go.toInterface(stdgo._internal.go.types.Types__universecomparable._universeComparable.type()))) {
                        @:check2r _check._error(_tlist[(_i : stdgo.GoInt)], (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("cannot use comparable in union" : stdgo.GoString));
                    } else if ((@:checkr _tset ?? throw "null pointer dereference")._comparable) {
                        @:check2r _check._errorf(_tlist[(_i : stdgo.GoInt)], (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("cannot use %s in union (%s embeds comparable)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                    };
                    continue;
                };
                {
                    var _j = (stdgo._internal.go.types.Types__overlappingterm._overlappingTerm((_terms.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>), _t) : stdgo.GoInt);
                    if ((_j >= (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _check._softErrorf(_tlist[(_i : stdgo.GoInt)], (141 : stdgo._internal.internal.types.errors.Errors_code.Code), ("overlapping terms %s and %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(stdgo.Go.asInterface(_terms[(_j : stdgo.GoInt)])));
                    };
                };
            };
        })._describef(_uexpr, ("check term validity %s" : stdgo.GoString), stdgo.Go.toInterface(_uexpr));
        return _u;
    }
