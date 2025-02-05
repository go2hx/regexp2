package stdgo._internal.internal.abi;
@:structInit class T_uncommon___localname___u_8423 {
    @:embedded
    public var funcType : stdgo._internal.internal.abi.Abi_functype.FuncType = ({} : stdgo._internal.internal.abi.Abi_functype.FuncType);
    public var _u : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType = ({} : stdgo._internal.internal.abi.Abi_uncommontype.UncommonType);
    public function new(?funcType:stdgo._internal.internal.abi.Abi_functype.FuncType, ?_u:stdgo._internal.internal.abi.Abi_uncommontype.UncommonType) {
        if (funcType != null) this.funcType = funcType;
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var align(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_align():() -> stdgo.GoInt return @:check32 this.funcType.align;
    public var arrayType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType>;
    @:embedded
    public function get_arrayType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_arraytype.ArrayType> return @:check32 this.funcType.arrayType;
    public var chanDir(get, never) : () -> stdgo._internal.internal.abi.Abi_chandir.ChanDir;
    @:embedded
    public function get_chanDir():() -> stdgo._internal.internal.abi.Abi_chandir.ChanDir return @:check32 this.funcType.chanDir;
    public var common(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    public function get_common():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.funcType.common;
    public var elem(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    public function get_elem():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.funcType.elem;
    public var exportedMethods(get, never) : () -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method>;
    @:embedded
    public function get_exportedMethods():() -> stdgo.Slice<stdgo._internal.internal.abi.Abi_method.Method> return @:check32 this.funcType.exportedMethods;
    public var fieldAlign(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_fieldAlign():() -> stdgo.GoInt return @:check32 this.funcType.fieldAlign;
    public var gcSlice(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    public function get_gcSlice():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> stdgo.Slice<stdgo.GoUInt8> return @:check32 this.funcType.gcSlice;
    public var hasName(get, never) : () -> Bool;
    @:embedded
    public function get_hasName():() -> Bool return @:check32 this.funcType.hasName;
    public var ifaceIndir(get, never) : () -> Bool;
    @:embedded
    public function get_ifaceIndir():() -> Bool return @:check32 this.funcType.ifaceIndir;
    public var in_(get, never) : stdgo.GoInt -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    public function get_in_():stdgo.GoInt -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.funcType.in_;
    public var inSlice(get, never) : () -> stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>;
    @:embedded
    public function get_inSlice():() -> stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>> return @:check32 this.funcType.inSlice;
    public var interfaceType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType>;
    @:embedded
    public function get_interfaceType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_interfacetype.InterfaceType> return @:check32 this.funcType.interfaceType;
    public var isDirectIface(get, never) : () -> Bool;
    @:embedded
    public function get_isDirectIface():() -> Bool return @:check32 this.funcType.isDirectIface;
    public var isVariadic(get, never) : () -> Bool;
    @:embedded
    public function get_isVariadic():() -> Bool return @:check32 this.funcType.isVariadic;
    public var key(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    public function get_key():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.funcType.key;
    public var kind(get, never) : () -> stdgo._internal.internal.abi.Abi_kind.Kind;
    @:embedded
    public function get_kind():() -> stdgo._internal.internal.abi.Abi_kind.Kind return @:check32 this.funcType.kind;
    public var len(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_len():() -> stdgo.GoInt return @:check32 this.funcType.len;
    public var mapType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType>;
    @:embedded
    public function get_mapType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_maptype.MapType> return @:check32 this.funcType.mapType;
    public var numIn(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_numIn():() -> stdgo.GoInt return @:check32 this.funcType.numIn;
    public var numMethod(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_numMethod():() -> stdgo.GoInt return @:check32 this.funcType.numMethod;
    public var numOut(get, never) : () -> stdgo.GoInt;
    @:embedded
    public function get_numOut():() -> stdgo.GoInt return @:check32 this.funcType.numOut;
    public var out(get, never) : stdgo.GoInt -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>;
    @:embedded
    public function get_out():stdgo.GoInt -> stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_> return @:check32 this.funcType.out;
    public var outSlice(get, never) : () -> stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>>;
    @:embedded
    public function get_outSlice():() -> stdgo.Slice<stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>> return @:check32 this.funcType.outSlice;
    public var pointers(get, never) : () -> Bool;
    @:embedded
    public function get_pointers():() -> Bool return @:check32 this.funcType.pointers;
    public var size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    public function get_size():() -> stdgo.GoUIntptr return @:check32 this.funcType.size;
    public var structType(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType>;
    @:embedded
    public function get_structType():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_structtype.StructType> return @:check32 this.funcType.structType;
    public var uncommon(get, never) : () -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType>;
    @:embedded
    public function get_uncommon():() -> stdgo.Ref<stdgo._internal.internal.abi.Abi_uncommontype.UncommonType> return @:check32 this.funcType.uncommon;
    public function __copy__() {
        return new T_uncommon___localname___u_8423(funcType, _u);
    }
}
