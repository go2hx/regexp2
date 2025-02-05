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
function _newRegexNodeSet(_t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _opt:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions, _set:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        return (stdgo.Go.setRef(({ _t : _t, _options : _opt, _set : _set } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    }
