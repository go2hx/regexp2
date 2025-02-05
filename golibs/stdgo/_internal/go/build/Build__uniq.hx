package stdgo._internal.go.build;
function _uniq(_list:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        if (_list == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _out = (new stdgo.Slice<stdgo.GoString>((_list.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        _out.__copyTo__(_list);
        stdgo._internal.sort.Sort_strings.strings(_out);
        var _uniq = (_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        for (__0 => _x in _out) {
            if (((_uniq.length == (0 : stdgo.GoInt)) || (_uniq[((_uniq.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _x) : Bool)) {
                _uniq = (_uniq.__append__(_x?.__copy__()));
            };
        };
        return _uniq;
    }
