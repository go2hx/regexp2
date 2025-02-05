package stdgo._internal.go.doc;
function _lastComment(_b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _c:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>; } {
        var _i = (0 : stdgo.GoInt), _last = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        if ((_b == null || (_b : Dynamic).__nil__)) {
            return { _0 : _i, _1 : _last };
        };
        var __0 = (@:check2r _b.pos() : stdgo._internal.go.token.Token_pos.Pos), __1 = (@:check2r _b.end() : stdgo._internal.go.token.Token_pos.Pos);
var _end = __1, _pos = __0;
        for (_j => _cg in _c) {
            if ((@:check2r _cg.pos() < _pos : Bool)) {
                continue;
            };
            if ((@:check2r _cg.end() > _end : Bool)) {
                break;
            };
            {
                final __tmp__0 = _j;
                final __tmp__1 = _cg;
                _i = __tmp__0;
                _last = __tmp__1;
            };
        };
        return { _0 : _i, _1 : _last };
    }
