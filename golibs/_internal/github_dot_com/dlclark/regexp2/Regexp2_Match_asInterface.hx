package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
class Match_asInterface {
    @:keep
    @:tdfield
    public dynamic function _dump():stdgo.GoString return @:_0 __self__.value._dump();
    @:keep
    @:tdfield
    public dynamic function _groupValueAppendToBuf(_groupnum:stdgo.GoInt, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void @:_0 __self__.value._groupValueAppendToBuf(_groupnum, _buf);
    @:keep
    @:tdfield
    public dynamic function _populateOtherGroups():Void @:_0 __self__.value._populateOtherGroups();
    @:keep
    @:tdfield
    public dynamic function groups():stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_Group.Group> return @:_0 __self__.value.groups();
    @:keep
    @:tdfield
    public dynamic function groupByNumber(_num:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_Group.Group> return @:_0 __self__.value.groupByNumber(_num);
    @:keep
    @:tdfield
    public dynamic function groupByName(_name:stdgo.GoString):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_Group.Group> return @:_0 __self__.value.groupByName(_name);
    @:keep
    @:tdfield
    public dynamic function groupCount():stdgo.GoInt return @:_0 __self__.value.groupCount();
    @:keep
    @:tdfield
    public dynamic function _removeMatch(_c:stdgo.GoInt):Void @:_0 __self__.value._removeMatch(_c);
    @:keep
    @:tdfield
    public dynamic function _balanceMatch(_c:stdgo.GoInt):Void @:_0 __self__.value._balanceMatch(_c);
    @:keep
    @:tdfield
    public dynamic function _addMatch(_c:stdgo.GoInt, _start:stdgo.GoInt, _l:stdgo.GoInt):Void @:_0 __self__.value._addMatch(_c, _start, _l);
    @:keep
    @:tdfield
    public dynamic function _matchLength(_cap:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._matchLength(_cap);
    @:keep
    @:tdfield
    public dynamic function _matchIndex(_cap:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._matchIndex(_cap);
    @:keep
    @:tdfield
    public dynamic function _isMatched(_cap:stdgo.GoInt):Bool return @:_0 __self__.value._isMatched(_cap);
    @:keep
    @:tdfield
    public dynamic function _tidy(_textpos:stdgo.GoInt):Void @:_0 __self__.value._tidy(_textpos);
    @:keep
    @:tdfield
    public dynamic function _reset(_text:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt):Void @:_0 __self__.value._reset(_text, _textstart);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function runes():stdgo.Slice<stdgo.GoInt32> return @:_0 __self__.value.runes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.Regexp2_MatchPointer.MatchPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
