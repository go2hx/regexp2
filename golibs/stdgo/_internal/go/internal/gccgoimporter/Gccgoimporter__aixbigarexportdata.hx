package stdgo._internal.go.internal.gccgoimporter;
function _aixBigArExportData(_archive:stdgo._internal.io.Io_readseeker.ReadSeeker):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        var _archiveAt = (stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__readeratfromseeker._readerAtFromSeeker(_archive) : stdgo._internal.io.Io_readerat.ReaderAt);
        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newarchive.newArchive(_archiveAt), _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
        };
        for (__0 => _mem in (@:checkr _arch ?? throw "null pointer dereference").members) {
            var __tmp__ = @:check2r _arch.getFile((@:checkr _mem ?? throw "null pointer dereference").memberHeader.name?.__copy__()), _f:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
            };
            var _sdat = @:check2r _f.cSect((".go_export" : stdgo.GoString));
            if (_sdat != null) {
                return { _0 : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_sdat)), _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : stdgo._internal.fmt.Fmt_errorf.errorf((".go_export not found in this archive" : stdgo.GoString)) };
    }
