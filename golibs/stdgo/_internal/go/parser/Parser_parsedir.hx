package stdgo._internal.go.parser;
function parseDir(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _path:stdgo.GoString, _filter:stdgo._internal.io.fs.Fs_fileinfo.FileInfo -> Bool, _mode:stdgo._internal.go.parser.Parser_mode.Mode):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } {
        var _pkgs = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>), _first = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_path?.__copy__()), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>), _1 : _err };
                _pkgs = __tmp__._0;
                _first = __tmp__._1;
                __tmp__;
            };
        };
        _pkgs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>);
        for (__0 => _d in _list) {
            if ((_d.isDir() || !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_d.name()?.__copy__(), (".go" : stdgo.GoString)) : Bool)) {
                continue;
            };
            if (_filter != null) {
                var __tmp__ = _d.info(), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>>), _1 : _err };
                        _pkgs = __tmp__._0;
                        _first = __tmp__._1;
                        __tmp__;
                    };
                };
                if (!_filter(_info)) {
                    continue;
                };
            };
            var _filename = (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _d.name()?.__copy__())?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, _filename?.__copy__(), (null : stdgo.AnyInterface), _mode), _src:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var _name = ((@:checkr (@:checkr _src ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                    var __tmp__ = (_pkgs != null && _pkgs.exists(_name?.__copy__()) ? { _0 : _pkgs[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>), _1 : false }), _pkg:stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package> = __tmp__._0, _found:Bool = __tmp__._1;
                    if (!_found) {
                        _pkg = (stdgo.Go.setRef(({ name : _name?.__copy__(), files : (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>();
                            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>) } : stdgo._internal.go.ast.Ast_package.Package)) : stdgo.Ref<stdgo._internal.go.ast.Ast_package.Package>);
                        _pkgs[_name] = _pkg;
                    };
                    (@:checkr _pkg ?? throw "null pointer dereference").files[_filename] = _src;
                } else if (_first == null) {
                    _first = _err;
                };
            };
        };
        return { _0 : _pkgs, _1 : _first };
    }
