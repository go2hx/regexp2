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
function _getAnchors(_tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc {
        var _concatNode:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var __0 = (0 : stdgo.GoInt), __1 = ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
var _result = __1, _nextChild = __0;
        var _curNode = (@:checkr _tree ?? throw "null pointer dereference")._root;
        while (true) {
            {
                final __value__ = (@:checkr _curNode ?? throw "null pointer dereference")._t;
                if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    if ((((@:checkr _curNode ?? throw "null pointer dereference")._children.length) > (0 : stdgo.GoInt) : Bool)) {
                        _concatNode = _curNode;
                        _nextChild = (0 : stdgo.GoInt);
                    };
                } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    _curNode = (@:checkr _curNode ?? throw "null pointer dereference")._children[(0 : stdgo.GoInt)];
                    _concatNode = null;
                    continue;
                } else if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    return (_result | _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__anchorfromtype._anchorFromType((@:checkr _curNode ?? throw "null pointer dereference")._t) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
                } else if (__value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {} else {
                    return _result;
                };
            };
            if (((_concatNode == null || (_concatNode : Dynamic).__nil__) || (_nextChild >= ((@:checkr _concatNode ?? throw "null pointer dereference")._children.length) : Bool) : Bool)) {
                return _result;
            };
            _curNode = (@:checkr _concatNode ?? throw "null pointer dereference")._children[(_nextChild : stdgo.GoInt)];
            _nextChild++;
        };
    }
