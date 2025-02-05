package stdgo._internal.go.doc;
function _sortBy(_less:(stdgo.GoInt, stdgo.GoInt) -> Bool, _swap:(stdgo.GoInt, stdgo.GoInt) -> Void, _n:stdgo.GoInt):Void {
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.doc.Doc_t_data.T_data(_n, _swap, _less) : stdgo._internal.go.doc.Doc_t_data.T_data)) : stdgo.Ref<stdgo._internal.go.doc.Doc_t_data.T_data>)));
    }
