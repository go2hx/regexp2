package stdgo._internal.go.parser;
@:structInit @:using(stdgo._internal.go.parser.Parser_t_field_static_extension.T_field_static_extension) class T_field {
    public var _name : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    public var _typ : stdgo._internal.go.ast.Ast_expr.Expr = (null : stdgo._internal.go.ast.Ast_expr.Expr);
    public function new(?_name:stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>, ?_typ:stdgo._internal.go.ast.Ast_expr.Expr) {
        if (_name != null) this._name = _name;
        if (_typ != null) this._typ = _typ;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_field(_name, _typ);
    }
}
