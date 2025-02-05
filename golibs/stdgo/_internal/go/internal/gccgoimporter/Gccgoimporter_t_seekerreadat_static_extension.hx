package stdgo._internal.go.internal.gccgoimporter;
@:keep @:allow(stdgo._internal.go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt_asInterface) class T_seekerReadAt_static_extension {
    @:keep
    @:tdfield
    static public function readAt( _sra:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt, _p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _sra:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_seekerreadat.T_seekerReadAt = _sra?.__copy__();
        {
            var __tmp__ = _sra._seeker.seek(_off, (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _err };
            };
        };
        return _sra._seeker.read(_p);
    }
}
