package stdgo._internal.go.printer;
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        @:check2r _t.parallel();
        for (__0 => _e in stdgo._internal.go.printer.Printer__data._data) {
            var _source = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), _e._source?.__copy__())?.__copy__() : stdgo.GoString);
            var _golden = (stdgo._internal.path.filepath.Filepath_join.join(("testdata" : stdgo.GoString), _e._golden?.__copy__())?.__copy__() : stdgo.GoString);
            var _mode = (_e._mode : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode);
            @:check2r _t.run(_e._source?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                @:check2r _t.parallel();
                stdgo._internal.go.printer.Printer__check._check(_t, _source?.__copy__(), _golden?.__copy__(), _mode);
            });
        };
    }
