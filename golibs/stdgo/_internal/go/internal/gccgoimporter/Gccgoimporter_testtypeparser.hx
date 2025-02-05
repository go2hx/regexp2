package stdgo._internal.go.internal.gccgoimporter;
function testTypeParser(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in stdgo._internal.go.internal.gccgoimporter.Gccgoimporter__typeparsertests._typeParserTests) {
            var _p:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser = ({} : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_t_parser.T_parser);
            @:check2 _p._init(("test.gox" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_test._typ?.__copy__())), (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>));
            _p._version = ("v2" : stdgo.GoString);
            _p._pkgname = _test._id?.__copy__();
            _p._pkgpath = _test._id?.__copy__();
            @:check2 _p._maybeCreatePackage();
            var _typ = (@:check2 _p._parseType(_p._pkg) : stdgo._internal.go.types.Types_type_.Type_);
            if (_p._tok != ((-1 : stdgo.GoInt32))) {
                @:check2r _t.errorf(("expected full parse, stopped at %q" : stdgo.GoString), stdgo.Go.toInterface(_p._lit));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                }, _ityp = __tmp__._0, __1 = __tmp__._1;
                if ((_ityp != null && ((_ityp : Dynamic).__nil__ == null || !(_ityp : Dynamic).__nil__))) {
                    @:check2r _ityp.complete();
                };
            };
            var _got = ((_typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_test._want)) {
                @:check2r _t.errorf(("got type %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
            if (_test._underlying != ((stdgo.Go.str() : stdgo.GoString))) {
                var _underlying = ((_typ.underlying().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_underlying != (_test._underlying)) {
                    @:check2r _t.errorf(("got underlying type %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_underlying), stdgo.Go.toInterface(_test._underlying));
                };
            };
            if (_test._methods != ((stdgo.Go.str() : stdgo.GoString))) {
                var _nt = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_typ) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>)) : stdgo.Ref<stdgo._internal.go.types.Types_named.Named>);
                var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                {
                    var _i = (0 : stdgo.GoInt);
                    while (_i != (@:check2r _nt.numMethods())) {
                        @:check2 _buf.writeString((@:check2r @:check2r _nt.method(_i).string() : stdgo.GoString).__copy__());
                        _i++;
                    };
                };
                var _methods = ((@:check2 _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_methods != (_test._methods)) {
                    @:check2r _t.errorf(("got methods %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_methods), stdgo.Go.toInterface(_test._methods));
                };
            };
        };
    }
