package stdgo._internal.go.doc.comment;
class List_asInterface {
    @:keep
    @:tdfield
    public dynamic function blankBetween():Bool return @:_0 __self__.value.blankBetween();
    @:keep
    @:tdfield
    public dynamic function blankBefore():Bool return @:_0 __self__.value.blankBefore();
    @:keep
    @:tdfield
    public dynamic function _block():Void @:_0 __self__.value._block();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.doc.comment.Comment_listpointer.ListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
