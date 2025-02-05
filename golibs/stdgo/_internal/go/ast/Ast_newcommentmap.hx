package stdgo._internal.go.ast;
function newCommentMap(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo._internal.go.ast.Ast_node.Node, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo._internal.go.ast.Ast_commentmap.CommentMap {
        if ((_comments.length) == ((0 : stdgo.GoInt))) {
            return null;
        };
        var _cmap = ((({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_node.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.go.ast.Ast_node.Node", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>) : stdgo._internal.go.ast.Ast_commentmap.CommentMap) : stdgo._internal.go.ast.Ast_commentmap.CommentMap);
        var _tmp = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>((_comments.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        _tmp.__copyTo__(_comments);
        stdgo._internal.go.ast.Ast__sortcomments._sortComments(_tmp);
        var _r = ({ _fset : _fset, _list : _tmp } : stdgo._internal.go.ast.Ast_t_commentlistreader.T_commentListReader);
        @:check2 _r._next();
        var _nodes = stdgo._internal.go.ast.Ast__nodelist._nodeList(_node);
        _nodes = (_nodes.__append__((null : stdgo._internal.go.ast.Ast_node.Node)));
        var __0:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node), __1:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position), __2:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node), __3:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position), __4:stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack = new stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack(0, 0);
var _stack = __4, _pgend = __3, _pg = __2, _pend = __1, _p = __0;
        for (__8 => _q in _nodes) {
            var _qpos:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
            if (_q != null) {
                _qpos = @:check2r _fset.position(_q.pos())?.__copy__();
            } else {
                {};
                _qpos.offset = (1073741824 : stdgo.GoInt);
                _qpos.line = (1073741824 : stdgo.GoInt);
            };
            while ((_r._end.offset <= _qpos.offset : Bool)) {
                {
                    var _top = (@:check2 _stack._pop(@:check2r _r._comment.pos()) : stdgo._internal.go.ast.Ast_node.Node);
                    if (_top != null) {
                        _pg = _top;
                        _pgend = @:check2r _fset.position(_pg.end())?.__copy__();
                    };
                };
                var _assoc:stdgo._internal.go.ast.Ast_node.Node = (null : stdgo._internal.go.ast.Ast_node.Node);
                if (((_pg != null) && (((_pgend.line == _r._pos.line) || ((_pgend.line + (1 : stdgo.GoInt) : stdgo.GoInt) == (_r._pos.line) && ((_r._end.line + (1 : stdgo.GoInt) : stdgo.GoInt) < _qpos.line : Bool) : Bool) : Bool)) : Bool)) {
                    _assoc = _pg;
                } else if (((_p != null) && (((_pend.line == (_r._pos.line) || ((_pend.line + (1 : stdgo.GoInt) : stdgo.GoInt) == (_r._pos.line) && ((_r._end.line + (1 : stdgo.GoInt) : stdgo.GoInt) < _qpos.line : Bool) : Bool) : Bool) || (_q == null) : Bool)) : Bool)) {
                    _assoc = _p;
                } else {
                    if (_q == null) {
                        throw stdgo.Go.toInterface(("internal error: no comments should be associated with sentinel" : stdgo.GoString));
                    };
                    _assoc = _q;
                };
                _cmap._addComment(_assoc, _r._comment);
                if (@:check2 _r._eol()) {
                    return _cmap;
                };
                @:check2 _r._next();
            };
            _p = _q;
            _pend = @:check2r _fset.position(_p.end())?.__copy__();
            {
                final __type__ = _q;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_decl.Decl)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_spec.Spec)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_stmt.Stmt))) {
                    @:check2 _stack._push(_q);
                };
            };
        };
        return _cmap;
    }
