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
function _getFirstCharsPrefix(_tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexTree.RegexTree>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix> {
        var _s = ({ _fcStack : (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexFc.T_regexFc>((32 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((32 : stdgo.GoInt).toBasic() > 0 ? (32 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexFc.T_regexFc)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexFc.T_regexFc>), _intStack : (new stdgo.Slice<stdgo.GoInt>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexFcd.T_regexFcd);
        var _fc = @:check2 _s._regexFCFromRegexTree(_tree);
        if ((((_fc == null || (_fc : Dynamic).__nil__) || (@:checkr _fc ?? throw "null pointer dereference")._nullable : Bool) || (@:checkr _fc ?? throw "null pointer dereference")._cc.isEmpty() : Bool)) {
            return null;
        };
        var _fcSet = (@:check2r _fc._getFirstChars()?.__copy__() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
        return (stdgo.Go.setRef(({ prefixSet : _fcSet?.__copy__(), caseInsensitive : (@:checkr _fc ?? throw "null pointer dereference")._caseInsensitive } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix>);
    }
