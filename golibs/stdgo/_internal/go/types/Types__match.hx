package stdgo._internal.go.types;
function _match(_x:stdgo._internal.go.types.Types_type_.Type_, _y:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ {
        if (stdgo._internal.go.types.Types_identical.identical(_x, _y)) {
            return _x;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
            }, _x = __tmp__._0, __0 = __tmp__._1;
            if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>)) : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_chan.Chan>), _1 : false };
                    }, _y = __tmp__._0, __1 = __tmp__._1;
                    if (((_y != null && ((_y : Dynamic).__nil__ == null || !(_y : Dynamic).__nil__)) && stdgo._internal.go.types.Types_identical.identical((@:checkr _x ?? throw "null pointer dereference")._elem, (@:checkr _y ?? throw "null pointer dereference")._elem) : Bool)) {
                        if ((@:checkr _x ?? throw "null pointer dereference")._dir == ((0 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                            return stdgo.Go.asInterface(_y);
                        } else if ((@:checkr _y ?? throw "null pointer dereference")._dir == ((0 : stdgo._internal.go.types.Types_chandir.ChanDir))) {
                            return stdgo.Go.asInterface(_x);
                        };
                    };
                };
            };
        };
        return (null : stdgo._internal.go.types.Types_type_.Type_);
    }
