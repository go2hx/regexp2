package stdgo._internal.go.scanner;
function printError(_w:stdgo._internal.io.Io_writer.Writer, _err:stdgo.Error):Void {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList), _1 : true };
            } catch(_) {
                { _0 : new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0), _1 : false };
            }, _list = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                for (__0 => _e in _list) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)));
                };
            } else if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
