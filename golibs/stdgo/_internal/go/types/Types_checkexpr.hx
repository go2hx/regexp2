package stdgo._internal.go.types;
function checkExpr(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _pos:stdgo._internal.go.token.Token_pos.Pos, _expr:stdgo._internal.go.ast.Ast_expr.Expr, _info:stdgo.Ref<stdgo._internal.go.types.Types_info.Info>):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
            if ((_pkg == null || (_pkg : Dynamic).__nil__)) {
                _scope = stdgo._internal.go.types.Types_universe.universe;
                _pos = stdgo._internal.go.types.Types__nopos._nopos;
            } else if (!_pos.isValid()) {
                _scope = (@:checkr _pkg ?? throw "null pointer dereference")._scope;
            } else {
                for (__0 => _fscope in (@:checkr (@:checkr _pkg ?? throw "null pointer dereference")._scope ?? throw "null pointer dereference")._children) {
                    {
                        _scope = @:check2r _fscope.innermost(_pos);
                        if ((_scope != null && ((_scope : Dynamic).__nil__ == null || !(_scope : Dynamic).__nil__))) {
                            break;
                        };
                    };
                };
                if (((_scope == null || (_scope : Dynamic).__nil__) || false : Bool)) {
                    var _s = _scope;
                    while (((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__)) && (_s != (@:checkr _pkg ?? throw "null pointer dereference")._scope) : Bool)) {
                        _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
                    };
                    if ((_s == null || (_s : Dynamic).__nil__)) {
                        return _err = stdgo._internal.fmt.Fmt_errorf.errorf(("no position %s found in package %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r _fset.position(_pos))), stdgo.Go.toInterface((@:checkr _pkg ?? throw "null pointer dereference")._name));
                    };
                };
            };
            var _check = stdgo._internal.go.types.Types_newchecker.newChecker(null, _fset, _pkg, _info);
            (@:checkr _check ?? throw "null pointer dereference")._environment._scope = _scope;
            (@:checkr _check ?? throw "null pointer dereference")._environment._pos = _pos;
            {
                var _a0 = (stdgo.Go.setRef(_err) : stdgo.Ref<stdgo.Error>);
                final __f__ = @:check2r _check._handleBailout;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _x:stdgo._internal.go.types.Types_t_operand.T_operand = ({} : stdgo._internal.go.types.Types_t_operand.T_operand);
            @:check2r _check._rawExpr((null : stdgo._internal.go.types.Types_type_.Type_), (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>), _expr, (null : stdgo._internal.go.types.Types_type_.Type_), true);
            @:check2r _check._processDelayed((0 : stdgo.GoInt));
            @:check2r _check._recordUntyped();
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
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
                return _err;
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
                return _err;
            };
        };
    }
