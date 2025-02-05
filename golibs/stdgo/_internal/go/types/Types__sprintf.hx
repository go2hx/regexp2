package stdgo._internal.go.types;
function _sprintf(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier, _tpSubscripts:Bool, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        for (_i => _arg in _args) {
            {
                final __type__ = _arg;
                if (__type__ == null) {
                    var _a:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                    _arg = stdgo.Go.toInterface(("<nil>" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_t_operand.T_operand))) {
                    var _a:stdgo._internal.go.types.Types_t_operand.T_operand = __type__ == null ? ({} : stdgo._internal.go.types.Types_t_operand.T_operand) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.types.Types_t_operand.T_operand) : __type__ == null ? ({} : stdgo._internal.go.types.Types_t_operand.T_operand) : __type__.__underlying__().value;
                    throw stdgo.Go.toInterface(("got operand instead of *operand" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>))) {
                    var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__.__underlying__().value;
                    _arg = stdgo.Go.toInterface(stdgo._internal.go.types.Types__operandstring._operandString(_a, _qf));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_pos.Pos))) {
                    var _a:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value;
                    if ((_fset != null && ((_fset : Dynamic).__nil__ == null || !(_fset : Dynamic).__nil__))) {
                        _arg = stdgo.Go.toInterface((@:check2r _fset.position(_a).string() : stdgo.GoString));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_expr.Expr))) {
                    var _a:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__().value;
                    _arg = stdgo.Go.toInterface(stdgo._internal.go.types.Types_exprstring.exprString(_a));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>))) {
                    var _a:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) : __type__.__underlying__().value;
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    @:check2 _buf.writeByte((91 : stdgo.GoUInt8));
                    stdgo._internal.go.types.Types__writeexprlist._writeExprList((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _a);
                    @:check2 _buf.writeByte((93 : stdgo.GoUInt8));
                    _arg = stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_object.Object))) {
                    var _a:stdgo._internal.go.types.Types_object.Object = __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : __type__.__underlying__() == null ? (null : stdgo._internal.go.types.Types_object.Object) : __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : __type__.__underlying__().value;
                    _arg = stdgo.Go.toInterface(stdgo._internal.go.types.Types_objectstring.objectString(_a, _qf));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_type_.Type_))) {
                    var _a:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : __type__.__underlying__() == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : __type__.__underlying__().value;
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _qf);
                    (@:checkr _w ?? throw "null pointer dereference")._tpSubscripts = _tpSubscripts;
                    @:check2r _w._typ(_a);
                    _arg = stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>))) {
                    var _a:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) : __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) : __type__.__underlying__().value;
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _qf);
                    (@:checkr _w ?? throw "null pointer dereference")._tpSubscripts = _tpSubscripts;
                    @:check2 _buf.writeByte((91 : stdgo.GoUInt8));
                    for (_i => _x in _a) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2 _buf.writeString((", " : stdgo.GoString));
                        };
                        @:check2r _w._typ(_x);
                    };
                    @:check2 _buf.writeByte((93 : stdgo.GoUInt8));
                    _arg = stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>))) {
                    var _a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = __type__ == null ? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : __type__ == null ? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : __type__.__underlying__().value;
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _qf);
                    (@:checkr _w ?? throw "null pointer dereference")._tpSubscripts = _tpSubscripts;
                    @:check2 _buf.writeByte((91 : stdgo.GoUInt8));
                    for (_i => _x in _a) {
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2 _buf.writeString((", " : stdgo.GoString));
                        };
                        @:check2r _w._typ(stdgo.Go.asInterface(_x));
                    };
                    @:check2 _buf.writeByte((93 : stdgo.GoUInt8));
                    _arg = stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString));
                };
            };
            _args[(_i : stdgo.GoInt)] = _arg;
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
