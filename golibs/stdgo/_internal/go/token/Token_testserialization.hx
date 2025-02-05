package stdgo._internal.go.token;
function testSerialization(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = stdgo._internal.go.token.Token_newfileset.newFileSet();
        stdgo._internal.go.token.Token__checkserialize._checkSerialize(_t, _p);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _f = @:check2r _p.addFile(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file%d" : stdgo.GoString), stdgo.Go.toInterface(_i)).__copy__(), (@:check2r _p.base() + _i : stdgo.GoInt), (_i * (100 : stdgo.GoInt) : stdgo.GoInt));
stdgo._internal.go.token.Token__checkserialize._checkSerialize(_t, _p);
var _line = (1000 : stdgo.GoInt);
{
                    var _offs = (0 : stdgo.GoInt);
                    while ((_offs < @:check2r _f.size() : Bool)) {
                        @:check2r _f.addLine(_offs);
if ((_offs % (7 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                            @:check2r _f.addLineInfo(_offs, stdgo._internal.fmt.Fmt_sprintf.sprintf(("file%d" : stdgo.GoString), stdgo.Go.toInterface(_offs)).__copy__(), _line);
                            _line = (_line + ((33 : stdgo.GoInt)) : stdgo.GoInt);
                        };
                        _offs = (_offs + (((40 : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
stdgo._internal.go.token.Token__checkserialize._checkSerialize(_t, _p);
                _i++;
            };
        };
    }
