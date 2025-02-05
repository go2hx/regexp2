package stdgo._internal.go.token;
function _checkSerialize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _p:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _encode = (function(_x:stdgo.AnyInterface):stdgo.Error {
            return @:check2r stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).encode(_x);
        } : stdgo.AnyInterface -> stdgo.Error);
        {
            var _err = (@:check2r _p.write(_encode) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("writing fileset failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
        };
        var _q = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _decode = (function(_x:stdgo.AnyInterface):stdgo.Error {
            return @:check2r stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).decode(_x);
        } : stdgo.AnyInterface -> stdgo.Error);
        {
            var _err = (@:check2r _q.read(_decode) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("reading fileset failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                return;
            };
        };
        {
            var _err = (stdgo._internal.go.token.Token__equal._equal(_p, _q) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("filesets not identical: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
