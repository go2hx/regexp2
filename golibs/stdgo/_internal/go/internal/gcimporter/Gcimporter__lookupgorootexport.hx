package stdgo._internal.go.internal.gcimporter;
function _lookupGorootExport(_pkgDir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var __tmp__ = @:check2 stdgo._internal.go.internal.gcimporter.Gcimporter__exportmap._exportMap.load(stdgo.Go.toInterface(_pkgDir)), _f:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var __0:stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once), __1:stdgo.GoString = ("" : stdgo.GoString);
var _exportPath = __1, _listOnce = __0;
            {
                var __tmp__ = @:check2 stdgo._internal.go.internal.gcimporter.Gcimporter__exportmap._exportMap.loadOrStore(stdgo.Go.toInterface(_pkgDir), stdgo.Go.toInterface(function():{ var _0 : stdgo.GoString; var _1 : Bool; } {
                    @:check2 _listOnce.do_(function():Void {
                        var _cmd = stdgo._internal.os.exec.Exec_command.command(stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.go.build.Build_default_.default_.gOROOT?.__copy__(), ("bin" : stdgo.GoString), ("go" : stdgo.GoString))?.__copy__(), ("list" : stdgo.GoString), ("-export" : stdgo.GoString), ("-f" : stdgo.GoString), ("{{.Export}}" : stdgo.GoString), _pkgDir?.__copy__());
                        (@:checkr _cmd ?? throw "null pointer dereference").dir = stdgo._internal.go.build.Build_default_.default_.gOROOT?.__copy__();
                        (@:checkr _cmd ?? throw "null pointer dereference").env = (@:check2r _cmd.environ_().__append__((("GOROOT=" : stdgo.GoString) + stdgo._internal.go.build.Build_default_.default_.gOROOT?.__copy__() : stdgo.GoString)?.__copy__()));
                        var _output:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        var __tmp__ = @:check2r _cmd.output(), _output:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return;
                        };
                        var _exports = stdgo._internal.strings.Strings_split.split((stdgo._internal.bytes.Bytes_trimspace.trimSpace(_output) : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString));
                        if ((_exports.length) != ((1 : stdgo.GoInt))) {
                            return;
                        };
                        _exportPath = _exports[(0 : stdgo.GoInt)]?.__copy__();
                    });
                    return { _0 : _exportPath?.__copy__(), _1 : _exportPath != ((stdgo.Go.str() : stdgo.GoString)) };
                }));
                _f = @:tmpset0 __tmp__._0;
            };
        };
        return (stdgo.Go.typeAssert((_f : () -> { var _0 : stdgo.GoString; var _1 : Bool; })) : () -> { var _0 : stdgo.GoString; var _1 : Bool; })();
    }
