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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix_static_extension.BmPrefix_static_extension) class BmPrefix {
    public var _positive : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _negativeASCII : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _negativeUnicode : stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
    public var _pattern : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _lowASCII : stdgo.GoInt32 = 0;
    public var _highASCII : stdgo.GoInt32 = 0;
    public var _rightToLeft : Bool = false;
    public var _caseInsensitive : Bool = false;
    public function new(?_positive:stdgo.Slice<stdgo.GoInt>, ?_negativeASCII:stdgo.Slice<stdgo.GoInt>, ?_negativeUnicode:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>, ?_pattern:stdgo.Slice<stdgo.GoInt32>, ?_lowASCII:stdgo.GoInt32, ?_highASCII:stdgo.GoInt32, ?_rightToLeft:Bool, ?_caseInsensitive:Bool) {
        if (_positive != null) this._positive = _positive;
        if (_negativeASCII != null) this._negativeASCII = _negativeASCII;
        if (_negativeUnicode != null) this._negativeUnicode = _negativeUnicode;
        if (_pattern != null) this._pattern = _pattern;
        if (_lowASCII != null) this._lowASCII = _lowASCII;
        if (_highASCII != null) this._highASCII = _highASCII;
        if (_rightToLeft != null) this._rightToLeft = _rightToLeft;
        if (_caseInsensitive != null) this._caseInsensitive = _caseInsensitive;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BmPrefix(_positive, _negativeASCII, _negativeUnicode, _pattern, _lowASCII, _highASCII, _rightToLeft, _caseInsensitive);
    }
}
