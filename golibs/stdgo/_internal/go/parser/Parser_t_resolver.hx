package stdgo._internal.go.parser;
@:structInit @:using(stdgo._internal.go.parser.Parser_t_resolver_static_extension.T_resolver_static_extension) class T_resolver {
    public var _handle : stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
    public var _declErr : (stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void = null;
    public var _pkgScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var _topScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var _unresolved : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>);
    public var _depth : stdgo.GoInt = 0;
    public var _labelScope : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>);
    public var _targetStack : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>);
    public function new(?_handle:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, ?_declErr:(stdgo._internal.go.token.Token_pos.Pos, stdgo.GoString) -> Void, ?_pkgScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?_topScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?_unresolved:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>, ?_depth:stdgo.GoInt, ?_labelScope:stdgo.Ref<stdgo._internal.go.ast.Ast_scope.Scope>, ?_targetStack:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>>) {
        if (_handle != null) this._handle = _handle;
        if (_declErr != null) this._declErr = _declErr;
        if (_pkgScope != null) this._pkgScope = _pkgScope;
        if (_topScope != null) this._topScope = _topScope;
        if (_unresolved != null) this._unresolved = _unresolved;
        if (_depth != null) this._depth = _depth;
        if (_labelScope != null) this._labelScope = _labelScope;
        if (_targetStack != null) this._targetStack = _targetStack;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_resolver(_handle, _declErr, _pkgScope, _topScope, _unresolved, _depth, _labelScope, _targetStack);
    }
}
