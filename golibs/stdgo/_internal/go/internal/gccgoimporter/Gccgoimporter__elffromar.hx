package stdgo._internal.go.internal.gccgoimporter;
function _elfFromAr(_member:stdgo.Ref<stdgo._internal.io.Io_sectionreader.SectionReader>):{ var _0 : stdgo._internal.io.Io_readseeker.ReadSeeker; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.debug.elf.Elf_newfile.newFile(stdgo.Go.asInterface(_member)), _ef:stdgo.Ref<stdgo._internal.debug.elf.Elf_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : _err };
        };
        var _sec = @:check2r _ef.section((".go_export" : stdgo.GoString));
        if ((_sec == null || (_sec : Dynamic).__nil__)) {
            return { _0 : (null : stdgo._internal.io.Io_readseeker.ReadSeeker), _1 : (null : stdgo.Error) };
        };
        return { _0 : @:check2r _sec.open(), _1 : (null : stdgo.Error) };
    }
