package stdgo._internal.go.token;
function testFileSetRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                @:check2r _fset.addFile(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file-%d" : stdgo.GoString), stdgo.Go.toInterface(_i)).__copy__(), @:check2r _fset.base(), (1031 : stdgo.GoInt));
                _i++;
            };
        };
        var _max = (@:check2r _fset.base() : stdgo.GoInt32);
        var _stop:stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
        var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource((7i64 : stdgo.GoInt64)));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource(@:check2r _r.int63()));
@:check2 _stop.add((1 : stdgo.GoInt));
stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                                @:check2r _fset.position((@:check2r _r.int31n(_max) : stdgo._internal.go.token.Token_pos.Pos));
                                _i++;
                            };
                        };
                        @:check2 _stop.done();
                    };
                    a();
                }));
                _i++;
            };
        };
        @:check2 _stop.wait_();
    }
