package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
class Code_asInterface {
    @:keep
    @:tdfield
    public dynamic function dump():stdgo.GoString return @:_0 __self__.value.dump();
    @:keep
    @:tdfield
    public dynamic function opcodeDescription(_offset:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value.opcodeDescription(_offset);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_codepointer.CodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
