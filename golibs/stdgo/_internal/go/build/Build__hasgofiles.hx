package stdgo._internal.go.build;
function _hasGoFiles(_ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString):Bool {
        var __tmp__ = @:check2r _ctxt._readDir(_dir?.__copy__()), _ents:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        for (__1 => _ent in _ents) {
            if ((!_ent.isDir() && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_ent.name()?.__copy__(), (".go" : stdgo.GoString)) : Bool)) {
                return true;
            };
        };
        return false;
    }
