package stdgo._internal.go.internal.gccgoimporter;
function _arExportData(_archive:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        {
            var __tmp__ = _archive.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        {
            var __tmp__ = _archive.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
            };
        };
        {
            final __value__ = ((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString);
            if (__value__ == (("!<arch>\n" : stdgo.GoString))) {
                return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__standardarexportdata._standardArExportData(_archive);
            } else if (__value__ == (("!<thin>\n" : stdgo.GoString))) {
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.errors.Errors_new_.new_(("unsupported thin archive" : stdgo.GoString)) };
            } else if (__value__ == (("<bigaf>\n" : stdgo.GoString))) {
                return stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__aixbigarexportdata._aixBigArExportData(_archive);
            } else {
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unrecognized archive file format %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) };
            };
        };
    }
