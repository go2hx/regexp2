package stdgo._internal.go.ast;
function _nodeList(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> {
        var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        stdgo._internal.go.ast.Ast_inspect.inspect(_n, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            {
                final __type__ = _n;
                if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>))) {
                    return false;
                };
            };
            _list = (_list.__append__(_n));
            return true;
        });
        return _list;
    }
