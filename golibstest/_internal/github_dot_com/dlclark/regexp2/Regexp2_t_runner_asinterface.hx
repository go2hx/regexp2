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
class T_runner_asInterface {
    @:keep
    @:tdfield
    public dynamic function _initTrackCount():Void @:_0 __self__.value._initTrackCount();
    @:keep
    @:tdfield
    public dynamic function _checkTimeout():stdgo.Error return @:_0 __self__.value._checkTimeout();
    @:keep
    @:tdfield
    public dynamic function _startTimeoutWatch():Void @:_0 __self__.value._startTimeoutWatch();
    @:keep
    @:tdfield
    public dynamic function _isECMABoundary(_index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool return @:_0 __self__.value._isECMABoundary(_index, _startpos, _endpos);
    @:keep
    @:tdfield
    public dynamic function _isBoundary(_index:stdgo.GoInt, _startpos:stdgo.GoInt, _endpos:stdgo.GoInt):Bool return @:_0 __self__.value._isBoundary(_index, _startpos, _endpos);
    @:keep
    @:tdfield
    public dynamic function _textposDescription():stdgo.GoString return @:_0 __self__.value._textposDescription();
    @:keep
    @:tdfield
    public dynamic function _stackDescription(_a:stdgo.Slice<stdgo.GoInt>, _index:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value._stackDescription(_a, _index);
    @:keep
    @:tdfield
    public dynamic function _dumpState():Void @:_0 __self__.value._dumpState();
    @:keep
    @:tdfield
    public dynamic function _uncapture():Void @:_0 __self__.value._uncapture();
    @:keep
    @:tdfield
    public dynamic function _transferCapture(_capnum:stdgo.GoInt, _uncapnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void @:_0 __self__.value._transferCapture(_capnum, _uncapnum, _start, _end);
    @:keep
    @:tdfield
    public dynamic function _capture(_capnum:stdgo.GoInt, _start:stdgo.GoInt, _end:stdgo.GoInt):Void @:_0 __self__.value._capture(_capnum, _start, _end);
    @:keep
    @:tdfield
    public dynamic function _tidyMatch(_quick:Bool):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> return @:_0 __self__.value._tidyMatch(_quick);
    @:keep
    @:tdfield
    public dynamic function _initMatch():Void @:_0 __self__.value._initMatch();
    @:keep
    @:tdfield
    public dynamic function _findFirstChar():Bool return @:_0 __self__.value._findFirstChar();
    @:keep
    @:tdfield
    public dynamic function _charAt(_j:stdgo.GoInt):stdgo.GoInt32 return @:_0 __self__.value._charAt(_j);
    @:keep
    @:tdfield
    public dynamic function _backwardnext():Void @:_0 __self__.value._backwardnext();
    @:keep
    @:tdfield
    public dynamic function _refmatch(_index:stdgo.GoInt, _len:stdgo.GoInt):Bool return @:_0 __self__.value._refmatch(_index, _len);
    @:keep
    @:tdfield
    public dynamic function _runematch(_str:stdgo.Slice<stdgo.GoInt32>):Bool return @:_0 __self__.value._runematch(_str);
    @:keep
    @:tdfield
    public dynamic function _forwardcharnext():stdgo.GoInt32 return @:_0 __self__.value._forwardcharnext();
    @:keep
    @:tdfield
    public dynamic function _forwardchars():stdgo.GoInt return @:_0 __self__.value._forwardchars();
    @:keep
    @:tdfield
    public dynamic function _bump():stdgo.GoInt return @:_0 __self__.value._bump();
    @:keep
    @:tdfield
    public dynamic function _rightchars():stdgo.GoInt return @:_0 __self__.value._rightchars();
    @:keep
    @:tdfield
    public dynamic function _leftchars():stdgo.GoInt return @:_0 __self__.value._leftchars();
    @:keep
    @:tdfield
    public dynamic function _operand(_i:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._operand(_i);
    @:keep
    @:tdfield
    public dynamic function _stackPeekN(_i:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._stackPeekN(_i);
    @:keep
    @:tdfield
    public dynamic function _stackPeek():stdgo.GoInt return @:_0 __self__.value._stackPeek();
    @:keep
    @:tdfield
    public dynamic function _stackPopN(_framesize:stdgo.GoInt):Void @:_0 __self__.value._stackPopN(_framesize);
    @:keep
    @:tdfield
    public dynamic function _stackPop():Void @:_0 __self__.value._stackPop();
    @:keep
    @:tdfield
    public dynamic function _stackPush2(i1:stdgo.GoInt, i2:stdgo.GoInt):Void @:_0 __self__.value._stackPush2(i1, i2);
    @:keep
    @:tdfield
    public dynamic function _stackPush(i1:stdgo.GoInt):Void @:_0 __self__.value._stackPush(i1);
    @:keep
    @:tdfield
    public dynamic function _trackPeekN(_i:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._trackPeekN(_i);
    @:keep
    @:tdfield
    public dynamic function _trackPeek():stdgo.GoInt return @:_0 __self__.value._trackPeek();
    @:keep
    @:tdfield
    public dynamic function _trackPopN(_framesize:stdgo.GoInt):Void @:_0 __self__.value._trackPopN(_framesize);
    @:keep
    @:tdfield
    public dynamic function _trackPop():Void @:_0 __self__.value._trackPop();
    @:keep
    @:tdfield
    public dynamic function _setOperator(_op:stdgo.GoInt):Void @:_0 __self__.value._setOperator(_op);
    @:keep
    @:tdfield
    public dynamic function _backtrack():Void @:_0 __self__.value._backtrack();
    @:keep
    @:tdfield
    public dynamic function _trackPushNeg2(i1:stdgo.GoInt, i2:stdgo.GoInt):Void @:_0 __self__.value._trackPushNeg2(i1, i2);
    @:keep
    @:tdfield
    public dynamic function _trackPushNeg1(i1:stdgo.GoInt):Void @:_0 __self__.value._trackPushNeg1(i1);
    @:keep
    @:tdfield
    public dynamic function _trackPush3(i1:stdgo.GoInt, i2:stdgo.GoInt, i3:stdgo.GoInt):Void @:_0 __self__.value._trackPush3(i1, i2, i3);
    @:keep
    @:tdfield
    public dynamic function _trackPush2(i1:stdgo.GoInt, i2:stdgo.GoInt):Void @:_0 __self__.value._trackPush2(i1, i2);
    @:keep
    @:tdfield
    public dynamic function _trackPush1(i1:stdgo.GoInt):Void @:_0 __self__.value._trackPush1(i1);
    @:keep
    @:tdfield
    public dynamic function _trackPush():Void @:_0 __self__.value._trackPush();
    @:keep
    @:tdfield
    public dynamic function _trackpos():stdgo.GoInt return @:_0 __self__.value._trackpos();
    @:keep
    @:tdfield
    public dynamic function _textPos():stdgo.GoInt return @:_0 __self__.value._textPos();
    @:keep
    @:tdfield
    public dynamic function _textstart():stdgo.GoInt return @:_0 __self__.value._textstart();
    @:keep
    @:tdfield
    public dynamic function _trackto(_newpos:stdgo.GoInt):Void @:_0 __self__.value._trackto(_newpos);
    @:keep
    @:tdfield
    public dynamic function _textto(_newpos:stdgo.GoInt):Void @:_0 __self__.value._textto(_newpos);
    @:keep
    @:tdfield
    public dynamic function _goTo(_newpos:stdgo.GoInt):Void @:_0 __self__.value._goTo(_newpos);
    @:keep
    @:tdfield
    public dynamic function _advance(_i:stdgo.GoInt):Void @:_0 __self__.value._advance(_i);
    @:keep
    @:tdfield
    public dynamic function _crawlpos():stdgo.GoInt return @:_0 __self__.value._crawlpos();
    @:keep
    @:tdfield
    public dynamic function _popcrawl():stdgo.GoInt return @:_0 __self__.value._popcrawl();
    @:keep
    @:tdfield
    public dynamic function _crawl(_i:stdgo.GoInt):Void @:_0 __self__.value._crawl(_i);
    @:keep
    @:tdfield
    public dynamic function _ensureStorage():Void @:_0 __self__.value._ensureStorage();
    @:keep
    @:tdfield
    public dynamic function _execute():stdgo.Error return @:_0 __self__.value._execute();
    @:keep
    @:tdfield
    public dynamic function _scan(_rt:stdgo.Slice<stdgo.GoInt32>, _textstart:stdgo.GoInt, _quick:Bool, _timeout:stdgo._internal.time.Time_duration.Duration):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>; var _1 : stdgo.Error; } return @:_0 __self__.value._scan(_rt, _textstart, _quick, _timeout);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_runnerpointer.T_runnerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
