package stdgo._internal.go.types;
function writeType(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _typ:stdgo._internal.go.types.Types_type_.Type_, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):Void {
        @:check2r stdgo._internal.go.types.Types__newtypewriter._newTypeWriter(_buf, _qf)._typ(_typ);
    }
