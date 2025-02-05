package stdgo._internal.go.types;
function _typeParamsString(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>):stdgo.GoString {
        var _n = (_list.length : stdgo.GoInt);
        {
            final __value__ = _n;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return (@:checkr (@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return (((@:checkr (@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name + (" and " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr (@:checkr _list[(1 : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (_i => _tname in (_list.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>)) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _buf.writeString((", " : stdgo.GoString));
            };
            @:check2 _buf.writeString((@:checkr (@:checkr _tname ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__());
        };
        @:check2 _buf.writeString((", and " : stdgo.GoString));
        @:check2 _buf.writeString((@:checkr (@:checkr _list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference")._obj ?? throw "null pointer dereference")._object._name?.__copy__());
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
