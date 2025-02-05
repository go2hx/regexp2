package stdgo._internal.go.types;
function typeString(_typ:stdgo._internal.go.types.Types_type_.Type_, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        stdgo._internal.go.types.Types_writetype.writeType((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _typ, _qf);
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
