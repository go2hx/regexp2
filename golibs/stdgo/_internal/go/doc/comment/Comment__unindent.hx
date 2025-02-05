package stdgo._internal.go.doc.comment;
function _unindent(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        while ((((_lines.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.doc.comment.Comment__isblank._isBlank(_lines[(0 : stdgo.GoInt)]?.__copy__()) : Bool)) {
            _lines = (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        while ((((_lines.length) > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.doc.comment.Comment__isblank._isBlank(_lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool)) {
            _lines = (_lines.__slice__(0, ((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        if ((_lines.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        var _prefix = (stdgo._internal.go.doc.comment.Comment__leadingspace._leadingSpace(_lines[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        for (__1 => _line in (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            if (!stdgo._internal.go.doc.comment.Comment__isblank._isBlank(_line?.__copy__())) {
                _prefix = stdgo._internal.go.doc.comment.Comment__commonprefix._commonPrefix(_prefix?.__copy__(), stdgo._internal.go.doc.comment.Comment__leadingspace._leadingSpace(_line?.__copy__())?.__copy__())?.__copy__();
            };
        };
        var _out = (new stdgo.Slice<stdgo.GoString>((_lines.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _line in _lines) {
            _line = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_line?.__copy__(), _prefix?.__copy__())?.__copy__();
            if (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__()) == ((stdgo.Go.str() : stdgo.GoString))) {
                _line = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            _out[(_i : stdgo.GoInt)] = _line?.__copy__();
        };
        while ((((_out.length) > (0 : stdgo.GoInt) : Bool) && (_out[(0 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _out = (_out.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        while ((((_out.length) > (0 : stdgo.GoInt) : Bool) && (_out[((_out.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _out = (_out.__slice__(0, ((_out.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        };
        return _out;
    }
