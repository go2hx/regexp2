package stdgo._internal.go.internal.gcimporter;
function _chanDir(_d:stdgo.GoInt):stdgo._internal.go.types.Types_chandir.ChanDir {
        {
            final __value__ = _d;
            if (__value__ == ((1 : stdgo.GoInt))) {
                return (2 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return (1 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                return (0 : stdgo._internal.go.types.Types_chandir.ChanDir);
            } else {
                stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("unexpected channel dir %d" : stdgo.GoString), stdgo.Go.toInterface(_d));
                return (0 : stdgo._internal.go.types.Types_chandir.ChanDir);
            };
        };
    }
