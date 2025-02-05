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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_regexFc_asInterface) class T_regexFc_static_extension {
    @:keep
    @:tdfield
    static public function _addFC( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>, _fc:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc, _concatenate:Bool):Bool {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> = _r;
        if ((!(@:checkr _r ?? throw "null pointer dereference")._cc.isMergeable() || !_fc._cc.isMergeable() : Bool)) {
            return false;
        };
        if (_concatenate) {
            if (!(@:checkr _r ?? throw "null pointer dereference")._nullable) {
                return true;
            };
            if (!_fc._nullable) {
                (@:checkr _r ?? throw "null pointer dereference")._nullable = false;
            };
        } else {
            if (_fc._nullable) {
                (@:checkr _r ?? throw "null pointer dereference")._nullable = true;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._caseInsensitive = ((@:checkr _r ?? throw "null pointer dereference")._caseInsensitive || _fc._caseInsensitive : Bool);
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._cc._addSet(_fc._cc?.__copy__());
        return true;
    }
    @:keep
    @:tdfield
    static public function _getFirstChars( _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet {
        @:recv var _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._caseInsensitive) {
            @:check2 (@:checkr _r ?? throw "null pointer dereference")._cc._addLowercase();
        };
        return (@:checkr _r ?? throw "null pointer dereference")._cc?.__copy__();
    }
}
