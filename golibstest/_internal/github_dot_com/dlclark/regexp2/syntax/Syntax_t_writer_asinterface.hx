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
class T_writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _emit2(_op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp, _opd1:stdgo.GoInt, _opd2:stdgo.GoInt):Void @:_0 __self__.value._emit2(_op, _opd1, _opd2);
    @:keep
    @:tdfield
    public dynamic function _emit1(_op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp, _opd1:stdgo.GoInt):Void @:_0 __self__.value._emit1(_op, _opd1);
    @:keep
    @:tdfield
    public dynamic function _emit(_op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp):Void @:_0 __self__.value._emit(_op);
    @:keep
    @:tdfield
    public dynamic function _mapCapnum(_capnum:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._mapCapnum(_capnum);
    @:keep
    @:tdfield
    public dynamic function _stringCode(_str:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt return @:_0 __self__.value._stringCode(_str);
    @:keep
    @:tdfield
    public dynamic function _setCode(_set:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>):stdgo.GoInt return @:_0 __self__.value._setCode(_set);
    @:keep
    @:tdfield
    public dynamic function _patchJump(_offset:stdgo.GoInt, _jumpDest:stdgo.GoInt):Void @:_0 __self__.value._patchJump(_offset, _jumpDest);
    @:keep
    @:tdfield
    public dynamic function _curPos():stdgo.GoInt return @:_0 __self__.value._curPos();
    @:keep
    @:tdfield
    public dynamic function _popInt():stdgo.GoInt return @:_0 __self__.value._popInt();
    @:keep
    @:tdfield
    public dynamic function _emptyStack():Bool return @:_0 __self__.value._emptyStack();
    @:keep
    @:tdfield
    public dynamic function _pushInt(_i:stdgo.GoInt):Void @:_0 __self__.value._pushInt(_i);
    @:keep
    @:tdfield
    public dynamic function _emitFragment(_nodetype:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _node:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _curIndex:stdgo.GoInt):stdgo.Error return @:_0 __self__.value._emitFragment(_nodetype, _node, _curIndex);
    @:keep
    @:tdfield
    public dynamic function _codeFromTree(_tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>; var _1 : stdgo.Error; } return @:_0 __self__.value._codeFromTree(_tree);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_writerpointer.T_writerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
