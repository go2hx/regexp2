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
class T_regexNode_asInterface {
    @:keep
    @:tdfield
    public dynamic function _dump():stdgo.GoString return @:_0 __self__.value._dump();
    @:keep
    @:tdfield
    public dynamic function _description():stdgo.GoString return @:_0 __self__.value._description();
    @:keep
    @:tdfield
    public dynamic function _makeQuantifier(_lazy:Bool, _min:stdgo.GoInt, _max:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._makeQuantifier(_lazy, _min, _max);
    @:keep
    @:tdfield
    public dynamic function _reverseLeft():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reverseLeft();
    @:keep
    @:tdfield
    public dynamic function _reduceSet():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reduceSet();
    @:keep
    @:tdfield
    public dynamic function _reduceGroup():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reduceGroup();
    @:keep
    @:tdfield
    public dynamic function _stripEnation(_emptyType:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._stripEnation(_emptyType);
    @:keep
    @:tdfield
    public dynamic function _reduceRep():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reduceRep();
    @:keep
    @:tdfield
    public dynamic function _reduceConcatenation():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reduceConcatenation();
    @:keep
    @:tdfield
    public dynamic function _reduceAlternation():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reduceAlternation();
    @:keep
    @:tdfield
    public dynamic function _reduce():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> return @:_0 __self__.value._reduce();
    @:keep
    @:tdfield
    public dynamic function _makeRep(_t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType, _min:stdgo.GoInt, _max:stdgo.GoInt):Void @:_0 __self__.value._makeRep(_t, _min, _max);
    @:keep
    @:tdfield
    public dynamic function _removeChildren(_startIndex:stdgo.GoInt, _endIndex:stdgo.GoInt):Void @:_0 __self__.value._removeChildren(_startIndex, _endIndex);
    @:keep
    @:tdfield
    public dynamic function _insertChildren(_afterIndex:stdgo.GoInt, _nodes:stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode>>):Void @:_0 __self__.value._insertChildren(_afterIndex, _nodes);
    @:keep
    @:tdfield
    public dynamic function _addChild(_child:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode>):Void @:_0 __self__.value._addChild(_child);
    @:keep
    @:tdfield
    public dynamic function _writeStrToBuf(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void @:_0 __self__.value._writeStrToBuf(_buf);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNodePointer.T_regexNodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
