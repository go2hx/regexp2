package stdgo._internal.go.types;
function newPkgName(_pos:stdgo._internal.go.token.Token_pos.Pos, _pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _imported:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName> {
        return (stdgo.Go.setRef((new stdgo._internal.go.types.Types_pkgname.PkgName((new stdgo._internal.go.types.Types_t_object.T_object(null, _pos, _pkg, _name?.__copy__(), stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]), (0u32 : stdgo.GoUInt32), (1u32 : stdgo._internal.go.types.Types_t_color.T_color), stdgo._internal.go.types.Types__nopos._nopos) : stdgo._internal.go.types.Types_t_object.T_object), _imported, false) : stdgo._internal.go.types.Types_pkgname.PkgName)) : stdgo.Ref<stdgo._internal.go.types.Types_pkgname.PkgName>);
    }
