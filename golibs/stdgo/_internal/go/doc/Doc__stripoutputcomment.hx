package stdgo._internal.go.doc;
function _stripOutputComment(_body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>; } {
        var __tmp__ = stdgo._internal.go.doc.Doc__lastcomment._lastComment(_body, _comments), _i:stdgo.GoInt = __tmp__._0, _last:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __tmp__._1;
        if (((_last == null || (_last : Dynamic).__nil__) || !@:check2r stdgo._internal.go.doc.Doc__outputprefix._outputPrefix.matchString(@:check2r _last.text()?.__copy__()) : Bool)) {
            return { _0 : _body, _1 : _comments };
        };
        var _newBody = (stdgo.Go.setRef(({ lbrace : (@:checkr _body ?? throw "null pointer dereference").lbrace, list : (@:checkr _body ?? throw "null pointer dereference").list, rbrace : @:check2r _last.pos() } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        var _newComments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>(((_comments.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        _newComments.__copyTo__((_comments.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
        (_newComments.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>).__copyTo__((_comments.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
        return { _0 : _newBody, _1 : _newComments };
    }
