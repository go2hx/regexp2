package stdgo._internal.go.types;
function _writeIdentList(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void {
        for (_i => _x in _list) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _buf.writeString((", " : stdgo.GoString));
            };
            @:check2r _buf.writeString((@:checkr _x ?? throw "null pointer dereference").name?.__copy__());
        };
    }
