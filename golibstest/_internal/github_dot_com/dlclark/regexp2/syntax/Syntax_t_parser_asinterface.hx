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
class T_parser_asInterface {
    @:keep
    @:tdfield
    public dynamic function _isTrueQuantifier():Bool return @:_0 __self__.value._isTrueQuantifier();
    @:keep
    @:tdfield
    public dynamic function _addAlternate():Void @:_0 __self__.value._addAlternate();
    @:keep
    @:tdfield
    public dynamic function _startGroup(_openGroup:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void @:_0 __self__.value._startGroup(_openGroup);
    @:keep
    @:tdfield
    public dynamic function _emptyStack():Bool return @:_0 __self__.value._emptyStack();
    @:keep
    @:tdfield
    public dynamic function _popGroup():stdgo.Error return @:_0 __self__.value._popGroup();
    @:keep
    @:tdfield
    public dynamic function _pushGroup():Void @:_0 __self__.value._pushGroup();
    @:keep
    @:tdfield
    public dynamic function _addToConcatenate(_pos:stdgo.GoInt, _cch:stdgo.GoInt, _isReplacement:Bool):Void @:_0 __self__.value._addToConcatenate(_pos, _cch, _isReplacement);
    @:keep
    @:tdfield
    public dynamic function _pushOptions():Void @:_0 __self__.value._pushOptions();
    @:keep
    @:tdfield
    public dynamic function _popOptions():Void @:_0 __self__.value._popOptions();
    @:keep
    @:tdfield
    public dynamic function _popKeepOptions():Void @:_0 __self__.value._popKeepOptions();
    @:keep
    @:tdfield
    public dynamic function _addGroup():stdgo.Error return @:_0 __self__.value._addGroup();
    @:keep
    @:tdfield
    public dynamic function _addUnitType(_t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):Void @:_0 __self__.value._addUnitType(_t);
    @:keep
    @:tdfield
    public dynamic function _addUnitNode(_node:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void @:_0 __self__.value._addUnitNode(_node);
    @:keep
    @:tdfield
    public dynamic function _addUnitSet(_set:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void @:_0 __self__.value._addUnitSet(_set);
    @:keep
    @:tdfield
    public dynamic function _addUnitNotone(_ch:stdgo.GoInt32):Void @:_0 __self__.value._addUnitNotone(_ch);
    @:keep
    @:tdfield
    public dynamic function _addUnitOne(_ch:stdgo.GoInt32):Void @:_0 __self__.value._addUnitOne(_ch);
    @:keep
    @:tdfield
    public dynamic function _addConcatenate3(_lazy:Bool, _min:stdgo.GoInt, _max:stdgo.GoInt):Void @:_0 __self__.value._addConcatenate3(_lazy, _min, _max);
    @:keep
    @:tdfield
    public dynamic function _addConcatenate():Void @:_0 __self__.value._addConcatenate();
    @:keep
    @:tdfield
    public dynamic function _emptyOptionsStack():Bool return @:_0 __self__.value._emptyOptionsStack();
    @:keep
    @:tdfield
    public dynamic function _useOptionU():Bool return @:_0 __self__.value._useOptionU();
    @:keep
    @:tdfield
    public dynamic function _useRE2():Bool return @:_0 __self__.value._useRE2();
    @:keep
    @:tdfield
    public dynamic function _useOptionE():Bool return @:_0 __self__.value._useOptionE();
    @:keep
    @:tdfield
    public dynamic function _useOptionX():Bool return @:_0 __self__.value._useOptionX();
    @:keep
    @:tdfield
    public dynamic function _useOptionS():Bool return @:_0 __self__.value._useOptionS();
    @:keep
    @:tdfield
    public dynamic function _useOptionM():Bool return @:_0 __self__.value._useOptionM();
    @:keep
    @:tdfield
    public dynamic function _useOptionI():Bool return @:_0 __self__.value._useOptionI();
    @:keep
    @:tdfield
    public dynamic function _useOptionN():Bool return @:_0 __self__.value._useOptionN();
    @:keep
    @:tdfield
    public dynamic function _isCaptureName(_capname:stdgo.GoString):Bool return @:_0 __self__.value._isCaptureName(_capname);
    @:keep
    @:tdfield
    public dynamic function _isCaptureSlot(_i:stdgo.GoInt):Bool return @:_0 __self__.value._isCaptureSlot(_i);
    @:keep
    @:tdfield
    public dynamic function _captureSlotFromName(_capname:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value._captureSlotFromName(_capname);
    @:keep
    @:tdfield
    public dynamic function _rightMost():Bool return @:_0 __self__.value._rightMost();
    @:keep
    @:tdfield
    public dynamic function _charsRight():stdgo.GoInt return @:_0 __self__.value._charsRight();
    @:keep
    @:tdfield
    public dynamic function _rightChar(_i:stdgo.GoInt):stdgo.GoInt32 return @:_0 __self__.value._rightChar(_i);
    @:keep
    @:tdfield
    public dynamic function _charAt(_i:stdgo.GoInt):stdgo.GoInt32 return @:_0 __self__.value._charAt(_i);
    @:keep
    @:tdfield
    public dynamic function _moveLeft():Void @:_0 __self__.value._moveLeft();
    @:keep
    @:tdfield
    public dynamic function _moveRight(_i:stdgo.GoInt):Void @:_0 __self__.value._moveRight(_i);
    @:keep
    @:tdfield
    public dynamic function _moveRightGetChar():stdgo.GoInt32 return @:_0 __self__.value._moveRightGetChar();
    @:keep
    @:tdfield
    public dynamic function _textto(_pos:stdgo.GoInt):Void @:_0 __self__.value._textto(_pos);
    @:keep
    @:tdfield
    public dynamic function _textpos():stdgo.GoInt return @:_0 __self__.value._textpos();
    @:keep
    @:tdfield
    public dynamic function _scanOctal():stdgo.GoInt32 return @:_0 __self__.value._scanOctal();
    @:keep
    @:tdfield
    public dynamic function _scanHex(_c:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._scanHex(_c);
    @:keep
    @:tdfield
    public dynamic function _scanHexUntilBrace():{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._scanHexUntilBrace();
    @:keep
    @:tdfield
    public dynamic function _scanControl():{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._scanControl();
    @:keep
    @:tdfield
    public dynamic function _scanCharEscape():{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._scanCharEscape();
    @:keep
    @:tdfield
    public dynamic function _scanOptions():Void @:_0 __self__.value._scanOptions();
    @:keep
    @:tdfield
    public dynamic function _scanDecimal():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._scanDecimal();
    @:keep
    @:tdfield
    public dynamic function _scanCharSet(_caseInsensitive:Bool, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanCharSet(_caseInsensitive, _scanOnly);
    @:keep
    @:tdfield
    public dynamic function _scanCapname():stdgo.GoString return @:_0 __self__.value._scanCapname();
    @:keep
    @:tdfield
    public dynamic function _scanBlank():stdgo.Error return @:_0 __self__.value._scanBlank();
    @:keep
    @:tdfield
    public dynamic function _typeFromCode(_ch:stdgo.GoInt32):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType return @:_0 __self__.value._typeFromCode(_ch);
    @:keep
    @:tdfield
    public dynamic function _parseProperty():{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._parseProperty();
    @:keep
    @:tdfield
    public dynamic function _scanBasicBackslash(_scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanBasicBackslash(_scanOnly);
    @:keep
    @:tdfield
    public dynamic function _scanBackslash(_scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanBackslash(_scanOnly);
    @:keep
    @:tdfield
    public dynamic function _scanGroupOpen():{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanGroupOpen();
    @:keep
    @:tdfield
    public dynamic function _scanDollar():{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanDollar();
    @:keep
    @:tdfield
    public dynamic function _scanReplacement():{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanReplacement();
    @:keep
    @:tdfield
    public dynamic function _scanRegex():{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } return @:_0 __self__.value._scanRegex();
    @:keep
    @:tdfield
    public dynamic function _reset(_topopts:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):Void @:_0 __self__.value._reset(_topopts);
    @:keep
    @:tdfield
    public dynamic function _countCaptures():stdgo.Error return @:_0 __self__.value._countCaptures();
    @:keep
    @:tdfield
    public dynamic function _consumeAutocap():stdgo.GoInt return @:_0 __self__.value._consumeAutocap();
    @:keep
    @:tdfield
    public dynamic function _assignNameSlots():Void @:_0 __self__.value._assignNameSlots();
    @:keep
    @:tdfield
    public dynamic function _noteCaptureName(_name:stdgo.GoString, _pos:stdgo.GoInt):Void @:_0 __self__.value._noteCaptureName(_name, _pos);
    @:keep
    @:tdfield
    public dynamic function _noteCaptureSlot(_i:stdgo.GoInt, _pos:stdgo.GoInt):Void @:_0 __self__.value._noteCaptureSlot(_i, _pos);
    @:keep
    @:tdfield
    public dynamic function _getErr(_code:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return @:_0 __self__.value._getErr(_code, ..._args);
    @:keep
    @:tdfield
    public dynamic function _setPattern(_pattern:stdgo.GoString):Void @:_0 __self__.value._setPattern(_pattern);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parserpointer.T_parserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
