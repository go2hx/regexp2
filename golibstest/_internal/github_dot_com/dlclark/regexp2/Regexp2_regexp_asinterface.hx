package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
class Regexp_asInterface {
    @:keep
    @:tdfield
    public dynamic function _putRunner(_r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner>):Void @:_0 __self__.value._putRunner(_r);
    @:keep
    @:tdfield
    public dynamic function _getRunner():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_runner.T_runner> return @:_0 __self__.value._getRunner();
    @:keep
    @:tdfield
    public dynamic function _run(_quick:Bool, _textstart:stdgo.GoInt, _input:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value._run(_quick, _textstart, _input);
    @:keep
    @:tdfield
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_text);
    @:keep
    @:tdfield
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:keep
    @:tdfield
    public dynamic function groupNumberFromName(_name:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value.groupNumberFromName(_name);
    @:keep
    @:tdfield
    public dynamic function groupNameFromNumber(_i:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value.groupNameFromNumber(_i);
    @:keep
    @:tdfield
    public dynamic function getGroupNumbers():stdgo.Slice<stdgo.GoInt> return @:_0 __self__.value.getGroupNumbers();
    @:keep
    @:tdfield
    public dynamic function getGroupNames():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.getGroupNames();
    @:keep
    @:tdfield
    public dynamic function matchRunes(_r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.matchRunes(_r);
    @:keep
    @:tdfield
    public dynamic function _getRunesAndStart(_s:stdgo.GoString, _startAt:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoInt; } return @:_0 __self__.value._getRunesAndStart(_s, _startAt);
    @:keep
    @:tdfield
    public dynamic function matchString(_s:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.matchString(_s);
    @:keep
    @:tdfield
    public dynamic function findNextMatch(_m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value.findNextMatch(_m);
    @:keep
    @:tdfield
    public dynamic function findRunesMatchStartingAt(_r:stdgo.Slice<stdgo.GoInt32>, _startAt:stdgo.GoInt):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value.findRunesMatchStartingAt(_r, _startAt);
    @:keep
    @:tdfield
    public dynamic function findStringMatchStartingAt(_s:stdgo.GoString, _startAt:stdgo.GoInt):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value.findStringMatchStartingAt(_s, _startAt);
    @:keep
    @:tdfield
    public dynamic function findRunesMatch(_r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value.findRunesMatch(_r);
    @:keep
    @:tdfield
    public dynamic function findStringMatch(_s:stdgo.GoString):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value.findStringMatch(_s);
    @:keep
    @:tdfield
    public dynamic function replaceFunc(_input:stdgo.GoString, _evaluator:_internal.github_dot_com.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.replaceFunc(_input, _evaluator, _startAt, _count);
    @:keep
    @:tdfield
    public dynamic function replace(_input:stdgo.GoString, _replacement:stdgo.GoString, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.replace(_input, _replacement, _startAt, _count);
    @:keep
    @:tdfield
    public dynamic function debug():Bool return @:_0 __self__.value.debug();
    @:keep
    @:tdfield
    public dynamic function rightToLeft():Bool return @:_0 __self__.value.rightToLeft();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexppointer.RegexpPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
