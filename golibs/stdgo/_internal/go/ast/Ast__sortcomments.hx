package stdgo._internal.go.ast;
function _sortComments(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):Void {
        {
            var _orderedList = (_list : stdgo._internal.go.ast.Ast_t_bypos.T_byPos);
            if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface(_orderedList))) {
                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_orderedList));
            };
        };
    }
