package stdgo._internal.debug.dwarf;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.VoidType_asInterface) class VoidType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType> = _t;
        return ("void" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_voidtype.VoidType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_5 __self__.common();
}
