package stdgo._internal.encoding.json;
function testEmbeddedBug(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = (new stdgo._internal.encoding.json.Json_bugb.BugB((new stdgo._internal.encoding.json.Json_buga.BugA(("A" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_buga.BugA), ("B" : stdgo.GoString)) : stdgo._internal.encoding.json.Json_bugb.BugB);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_v))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _want = (("{\"S\":\"B\"}" : stdgo.GoString) : stdgo.GoString);
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            @:check2r _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        var _x = ({ a : (23 : stdgo.GoInt) } : stdgo._internal.encoding.json.Json_bugx.BugX);
        {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
            _b = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Marshal:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("{\"A\":23}" : stdgo.GoString);
        _got = (_b : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            @:check2r _t.fatalf(("Marshal: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
