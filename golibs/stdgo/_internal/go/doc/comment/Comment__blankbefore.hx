package stdgo._internal.go.doc.comment;
function _blankBefore(_x:stdgo._internal.go.doc.comment.Comment_block.Block):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>), _1 : false };
            }, _x = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return @:check2r _x.blankBefore();
            };
        };
        return true;
    }
