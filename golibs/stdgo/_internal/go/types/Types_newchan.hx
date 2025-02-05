package stdgo._internal.go.types;
function newChan(_dir:stdgo._internal.go.types.Types_chandir.ChanDir, _elem:stdgo._internal.go.types.Types_type_.Type_):stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan> {
        return (stdgo.Go.setRef(({ _dir : _dir, _elem : _elem } : stdgo._internal.go.types.Types_chan.Chan)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>);
    }
