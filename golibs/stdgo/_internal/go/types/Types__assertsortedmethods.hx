package stdgo._internal.go.types;
function _assertSortedMethods(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>):Void {
        if (true) {
            throw stdgo.Go.toInterface(("assertSortedMethods called outside debug mode" : stdgo.GoString));
        };
        if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface((_list : stdgo._internal.go.types.Types_t_byuniquemethodname.T_byUniqueMethodName)))) {
            throw stdgo.Go.toInterface(("methods not sorted" : stdgo.GoString));
        };
    }
