package stdgo._internal.go.ast;
function testCommentText(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _c in stdgo._internal.go.ast.Ast__comments._comments) {
            var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>((_c._list.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
            for (_i => _s in _c._list) {
                _list[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ text : _s?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
            };
            var _text = (@:check2r (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_commentgroup.CommentGroup(_list) : stdgo._internal.go.ast.Ast_commentgroup.CommentGroup)) : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>).text()?.__copy__() : stdgo.GoString);
            if (_text != (_c._text)) {
                @:check2r _t.errorf(("case %d: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_c._text));
            };
        };
    }
