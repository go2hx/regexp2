package stdgo._internal.go.types;
function _stripAnnotations(_s:stdgo.GoString):stdgo.GoString {
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (__0 => _r in _s) {
            if (((_r < (8320 : stdgo.GoInt32) : Bool) || ((8330 : stdgo.GoInt32) <= _r : Bool) : Bool)) {
                @:check2 _buf.writeRune(_r);
            };
        };
        if ((@:check2 _buf.len() < (_s.length) : Bool)) {
            return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
