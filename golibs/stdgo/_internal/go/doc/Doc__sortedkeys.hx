package stdgo._internal.go.doc;
function _sortedKeys(_m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>):stdgo.Slice<stdgo.GoString> {
        var _list = (new stdgo.Slice<stdgo.GoString>((_m.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _i = (0 : stdgo.GoInt);
        for (_key => _ in _m) {
            _list[(_i : stdgo.GoInt)] = _key?.__copy__();
            _i++;
        };
        stdgo._internal.sort.Sort_strings.strings(_list);
        return _list;
    }
