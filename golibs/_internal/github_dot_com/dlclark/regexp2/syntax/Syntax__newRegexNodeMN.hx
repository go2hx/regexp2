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
function _newRegexNodeMN(_t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType, _opt:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions, _m:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> {
        return (stdgo.Go.setRef(({ _t : _t, _options : _opt, _m : _m, _n : _n } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode>);
    }
