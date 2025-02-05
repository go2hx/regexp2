package stdgo._internal.go.token;
function _verifyPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _lines:stdgo.Slice<stdgo.GoInt>):Void {
        {
            var _offs = (0 : stdgo.GoInt);
            while ((_offs < @:check2r _f.size() : Bool)) {
                var _p = (@:check2r _f.pos(_offs) : stdgo._internal.go.token.Token_pos.Pos);
var _offs2 = (@:check2r _f.offset(_p) : stdgo.GoInt);
if (_offs2 != (_offs)) {
                    @:check2r _t.errorf(("%s, Offset: got offset %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(_offs2), stdgo.Go.toInterface(_offs));
                };
var __tmp__ = stdgo._internal.go.token.Token__linecol._linecol(_lines, _offs), _line:stdgo.GoInt = __tmp__._0, _col:stdgo.GoInt = __tmp__._1;
var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s (offs = %d, p = %d)" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _f.name()), stdgo.Go.toInterface(_offs), stdgo.Go.toInterface(stdgo.Go.asInterface(_p))).__copy__() : stdgo.GoString);
stdgo._internal.go.token.Token__checkpos._checkPos(_t, _msg.__copy__(), @:check2r _f.position(@:check2r _f.pos(_offs)).__copy__(), (new stdgo._internal.go.token.Token_position.Position(@:check2r _f.name().__copy__(), _offs, _line, _col) : stdgo._internal.go.token.Token_position.Position));
stdgo._internal.go.token.Token__checkpos._checkPos(_t, _msg.__copy__(), @:check2r _fset.position(_p).__copy__(), (new stdgo._internal.go.token.Token_position.Position(@:check2r _f.name().__copy__(), _offs, _line, _col) : stdgo._internal.go.token.Token_position.Position));
                _offs++;
            };
        };
    }
