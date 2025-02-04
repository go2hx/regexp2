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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexFc_static_extension.T_regexFc_static_extension) class T_regexFc {
    public var _cc : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
    public var _nullable : Bool = false;
    public var _caseInsensitive : Bool = false;
    public function new(?_cc:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet, ?_nullable:Bool, ?_caseInsensitive:Bool) {
        if (_cc != null) this._cc = _cc;
        if (_nullable != null) this._nullable = _nullable;
        if (_caseInsensitive != null) this._caseInsensitive = _caseInsensitive;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_regexFc(_cc, _nullable, _caseInsensitive);
    }
}
