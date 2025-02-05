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
function _anchorFromType(_t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc {
        {
            final __value__ = _t;
            if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else {
                return (0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            };
        };
    }
