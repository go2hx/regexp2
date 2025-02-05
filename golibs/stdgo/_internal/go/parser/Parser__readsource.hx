package stdgo._internal.go.parser;
function _readSource(_filename:stdgo.GoString, _src:stdgo.AnyInterface):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        if (_src != null) {
            {
                final __type__ = _src;
                if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                    var _s:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                    return { _0 : (_s : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                    var _s:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                    return { _0 : _s, _1 : (null : stdgo.Error) };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) {
                    var _s:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__().value;
                    if ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                        return { _0 : @:check2r _s.bytes(), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.io.Io_reader.Reader))) {
                    var _s:stdgo._internal.io.Io_reader.Reader = __type__ == null ? (null : stdgo._internal.io.Io_reader.Reader) : __type__.__underlying__() == null ? (null : stdgo._internal.io.Io_reader.Reader) : __type__ == null ? (null : stdgo._internal.io.Io_reader.Reader) : __type__.__underlying__().value;
                    return stdgo._internal.io.Io_readall.readAll(_s);
                };
            };
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid source" : stdgo.GoString)) };
        };
        return stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__());
    }
