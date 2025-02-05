package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Initializer_asInterface) class Initializer_static_extension {
    @:keep
    @:tdfield
    static public function string( _init:stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer>):stdgo.GoString {
        @:recv var _init:stdgo.Ref<stdgo._internal.go.types.Types_initializer.Initializer> = _init;
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (_i => _lhs in (@:checkr _init ?? throw "null pointer dereference").lhs) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _buf.writeString((", " : stdgo.GoString));
            };
            @:check2 _buf.writeString(@:check2r _lhs.name()?.__copy__());
        };
        @:check2 _buf.writeString((" = " : stdgo.GoString));
        stdgo._internal.go.types.Types_writeexpr.writeExpr((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (@:checkr _init ?? throw "null pointer dereference").rhs);
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
}
