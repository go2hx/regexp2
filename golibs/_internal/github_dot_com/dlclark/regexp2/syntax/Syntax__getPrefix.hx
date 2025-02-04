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
function _getPrefix(_tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexTree.RegexTree>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix> {
        var _concatNode:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode>);
        var _nextChild = (0 : stdgo.GoInt);
        var _curNode = (@:checkr _tree ?? throw "null pointer dereference")._root;
        while (true) {
            {
                final __value__ = (@:checkr _curNode ?? throw "null pointer dereference")._t;
                if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    if ((((@:checkr _curNode ?? throw "null pointer dereference")._children.length) > (0 : stdgo.GoInt) : Bool)) {
                        _concatNode = _curNode;
                        _nextChild = (0 : stdgo.GoInt);
                    };
                } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    _curNode = (@:checkr _curNode ?? throw "null pointer dereference")._children[(0 : stdgo.GoInt)];
                    _concatNode = null;
                    continue;
                } else if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    if (((@:checkr _curNode ?? throw "null pointer dereference")._m > (0 : stdgo.GoInt) : Bool)) {
                        return (stdgo.Go.setRef(({ prefixStr : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__repeat._repeat((@:checkr _curNode ?? throw "null pointer dereference")._ch, (@:checkr _curNode ?? throw "null pointer dereference")._m), caseInsensitive : (((@:checkr _curNode ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix>);
                    };
                    return null;
                } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    return (stdgo.Go.setRef(({ prefixStr : (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(@:checkr _curNode ?? throw "null pointer dereference")._ch]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), caseInsensitive : (((@:checkr _curNode ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix>);
                } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    return (stdgo.Go.setRef(({ prefixStr : (@:checkr _curNode ?? throw "null pointer dereference")._str, caseInsensitive : (((@:checkr _curNode ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix.Prefix>);
                } else if (__value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {} else {
                    return null;
                };
            };
            if (((_concatNode == null || (_concatNode : Dynamic).__nil__) || (_nextChild >= ((@:checkr _concatNode ?? throw "null pointer dereference")._children.length) : Bool) : Bool)) {
                return null;
            };
            _curNode = (@:checkr _concatNode ?? throw "null pointer dereference")._children[(_nextChild : stdgo.GoInt)];
            _nextChild++;
        };
    }
