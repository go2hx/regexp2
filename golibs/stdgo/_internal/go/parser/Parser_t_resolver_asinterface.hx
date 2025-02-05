package stdgo._internal.go.parser;
class T_resolver_asInterface {
    @:keep
    @:tdfield
    public dynamic function _walkBody(_body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>):Void @:_0 __self__.value._walkBody(_body);
    @:keep
    @:tdfield
    public dynamic function _walkTParams(_list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void @:_0 __self__.value._walkTParams(_list);
    @:keep
    @:tdfield
    public dynamic function _walkFieldList(_list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void @:_0 __self__.value._walkFieldList(_list, _kind);
    @:keep
    @:tdfield
    public dynamic function _walkRecv(_recv:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void @:_0 __self__.value._walkRecv(_recv);
    @:keep
    @:tdfield
    public dynamic function _declareList(_list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind):Void @:_0 __self__.value._declareList(_list, _kind);
    @:keep
    @:tdfield
    public dynamic function _resolveList(_list:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):Void @:_0 __self__.value._resolveList(_list);
    @:keep
    @:tdfield
    public dynamic function _walkFuncType(_typ:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void @:_0 __self__.value._walkFuncType(_typ);
    @:keep
    @:tdfield
    public dynamic function visit(_node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor return @:_0 __self__.value.visit(_node);
    @:keep
    @:tdfield
    public dynamic function _walkStmts(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void @:_0 __self__.value._walkStmts(_list);
    @:keep
    @:tdfield
    public dynamic function _walkLHS(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void @:_0 __self__.value._walkLHS(_list);
    @:keep
    @:tdfield
    public dynamic function _walkExprs(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>):Void @:_0 __self__.value._walkExprs(_list);
    @:keep
    @:tdfield
    public dynamic function _resolve(_ident:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, _collectUnresolved:Bool):Void @:_0 __self__.value._resolve(_ident, _collectUnresolved);
    @:keep
    @:tdfield
    public dynamic function _shortVarDecl(_decl:stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>):Void @:_0 __self__.value._shortVarDecl(_decl);
    @:keep
    @:tdfield
    public dynamic function _declare(_decl:stdgo.AnyInterface, _data:stdgo.AnyInterface, _scope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, _kind:stdgo._internal.go.ast.Ast_objkind.ObjKind, _idents:haxe.Rest<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void @:_0 __self__.value._declare(_decl, _data, _scope, _kind, ..._idents);
    @:keep
    @:tdfield
    public dynamic function _closeLabelScope():Void @:_0 __self__.value._closeLabelScope();
    @:keep
    @:tdfield
    public dynamic function _openLabelScope():Void @:_0 __self__.value._openLabelScope();
    @:keep
    @:tdfield
    public dynamic function _closeScope():Void @:_0 __self__.value._closeScope();
    @:keep
    @:tdfield
    public dynamic function _openScope(_pos:stdgo._internal.go.token.Token_pos.Pos):Void @:_0 __self__.value._openScope(_pos);
    @:keep
    @:tdfield
    public dynamic function _sprintf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString return @:_0 __self__.value._sprintf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _trace(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._trace(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.parser.Parser_t_resolverpointer.T_resolverPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
