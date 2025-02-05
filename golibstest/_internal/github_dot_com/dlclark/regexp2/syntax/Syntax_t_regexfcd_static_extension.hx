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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_regexFcd_asInterface) class T_regexFcd_static_extension {
    @:keep
    @:tdfield
    static public function _calculateFC( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, _nt:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _node:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, curIndex:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        var _ci = (false : Bool);
        var _rtl = (false : Bool);
        if ((_nt <= (13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool)) {
            if ((((@:checkr _node ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                _ci = true;
            };
            if ((((@:checkr _node ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                _rtl = true;
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _nt;
                    if (__value__ == ((89 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((88 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((97 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((90 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((91 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        break;
                        break;
                    } else if (__value__ == ((98 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        if (curIndex == ((0 : stdgo.GoInt))) {
                            @:check2r _s._skipChild();
                        };
                        break;
                        break;
                    } else if (__value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(({ _nullable : true } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        break;
                        break;
                    } else if (__value__ == ((153 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        if (curIndex != ((0 : stdgo.GoInt))) {
                            var _child = @:check2r _s._popFC();
                            var _cumul = @:check2r _s._topFC();
                            (@:checkr _s ?? throw "null pointer dereference")._failed = !@:check2r _cumul._addFC((_child : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)?.__copy__(), true);
                        };
                        var _fc = @:check2r _s._topFC();
                        if (!(@:checkr _fc ?? throw "null pointer dereference")._nullable) {
                            (@:checkr _s ?? throw "null pointer dereference")._skipAllChildren = true;
                        };
                        break;
                        break;
                    } else if (__value__ == ((162 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        if ((curIndex > (1 : stdgo.GoInt) : Bool)) {
                            var _child = @:check2r _s._popFC();
                            var _cumul = @:check2r _s._topFC();
                            (@:checkr _s ?? throw "null pointer dereference")._failed = !@:check2r _cumul._addFC((_child : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)?.__copy__(), false);
                        };
                        break;
                        break;
                    } else if (__value__ == ((152 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((161 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        if (curIndex != ((0 : stdgo.GoInt))) {
                            var _child = @:check2r _s._popFC();
                            var _cumul = @:check2r _s._topFC();
                            (@:checkr _s ?? throw "null pointer dereference")._failed = !@:check2r _cumul._addFC((_child : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)?.__copy__(), false);
                        };
                        break;
                        break;
                    } else if (__value__ == ((154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((155 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        if ((@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt))) {
                            var _fc = @:check2r _s._topFC();
                            (@:checkr _fc ?? throw "null pointer dereference")._nullable = true;
                        };
                        break;
                        break;
                    } else if (__value__ == ((93 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((157 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((92 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((156 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((96 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((160 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        break;
                        break;
                    } else if (__value__ == ((94 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((95 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._skipChild();
                        @:check2r _s._pushFC(({ _nullable : true } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        break;
                        break;
                    } else if (__value__ == ((158 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((159 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        break;
                        break;
                    } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw "null pointer dereference")._ch, _nt == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)), false, _ci)?.__copy__());
                        break;
                        break;
                    } else if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw "null pointer dereference")._ch, false, (@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt)), _ci)?.__copy__());
                        break;
                        break;
                    } else if (__value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw "null pointer dereference")._ch, true, (@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt)), _ci)?.__copy__());
                        break;
                        break;
                    } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        if (((@:checkr _node ?? throw "null pointer dereference")._str.length) == ((0 : stdgo.GoInt))) {
                            @:check2r _s._pushFC(({ _nullable : true } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        } else if (!_rtl) {
                            @:check2r _s._pushFC(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw "null pointer dereference")._str[(0 : stdgo.GoInt)], false, false, _ci)?.__copy__());
                        } else {
                            @:check2r _s._pushFC(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw "null pointer dereference")._str[(((@:checkr _node ?? throw "null pointer dereference")._str.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], false, false, _ci)?.__copy__());
                        };
                        break;
                        break;
                    } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(({ _cc : (@:checkr (@:checkr _node ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").copy()?.__copy__(), _nullable : false, _caseInsensitive : _ci } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        break;
                        break;
                    } else if (__value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(({ _cc : (@:checkr (@:checkr _node ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").copy()?.__copy__(), _nullable : (@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt)), _caseInsensitive : _ci } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        break;
                        break;
                    } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(({ _cc : (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anyclass.anyClass() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet)?.__copy__(), _nullable : true, _caseInsensitive : false } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        break;
                        break;
                    } else if (__value__ == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _s._pushFC(({ _nullable : true } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        break;
                        break;
                    } else {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected op code: %v" : stdgo.GoString), stdgo.Go.toInterface(_nt)));
                    };
                };
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _skipChild( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):Void {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._skipchild = true;
    }
    @:keep
    @:tdfield
    static public function _topFC( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        return (stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._fcStack[((@:checkr _s ?? throw "null pointer dereference")._fcDepth - (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
    }
    @:keep
    @:tdfield
    static public function _popFC( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._fcDepth--;
        return (stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._fcStack[((@:checkr _s ?? throw "null pointer dereference")._fcDepth : stdgo.GoInt)]) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
    }
    @:keep
    @:tdfield
    static public function _fcIsEmpty( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):Bool {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._fcDepth == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _pushFC( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, _fc:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc):Void {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._fcDepth >= ((@:checkr _s ?? throw "null pointer dereference")._fcStack.length) : Bool)) {
            var _expanded = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>(((@:checkr _s ?? throw "null pointer dereference")._fcDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _s ?? throw "null pointer dereference")._fcDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _s ?? throw "null pointer dereference")._fcDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
            _expanded.__copyTo__((@:checkr _s ?? throw "null pointer dereference")._fcStack);
            (@:checkr _s ?? throw "null pointer dereference")._fcStack = _expanded;
        };
        (@:checkr _s ?? throw "null pointer dereference")._fcStack[((@:checkr _s ?? throw "null pointer dereference")._fcDepth : stdgo.GoInt)] = _fc?.__copy__();
        (@:checkr _s ?? throw "null pointer dereference")._fcDepth++;
    }
    @:keep
    @:tdfield
    static public function _popInt( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._intDepth--;
        return (@:checkr _s ?? throw "null pointer dereference")._intStack[((@:checkr _s ?? throw "null pointer dereference")._intDepth : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _intIsEmpty( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):Bool {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        return (@:checkr _s ?? throw "null pointer dereference")._intDepth == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _pushInt( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, i:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._intDepth >= ((@:checkr _s ?? throw "null pointer dereference")._intStack.length) : Bool)) {
            var _expanded = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _s ?? throw "null pointer dereference")._intDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            _expanded.__copyTo__((@:checkr _s ?? throw "null pointer dereference")._intStack);
            (@:checkr _s ?? throw "null pointer dereference")._intStack = _expanded;
        };
        (@:checkr _s ?? throw "null pointer dereference")._intStack[((@:checkr _s ?? throw "null pointer dereference")._intDepth : stdgo.GoInt)] = i;
        (@:checkr _s ?? throw "null pointer dereference")._intDepth++;
    }
    @:keep
    @:tdfield
    static public function _regexFCFromRegexTree( _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, _tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> {
        @:recv var _s:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        var _curNode = (@:checkr _tree ?? throw "null pointer dereference")._root;
        var _curChild = (0 : stdgo.GoInt);
        while (true) {
            if (((@:checkr _curNode ?? throw "null pointer dereference")._children.length) == ((0 : stdgo.GoInt))) {
                @:check2r _s._calculateFC((@:checkr _curNode ?? throw "null pointer dereference")._t, _curNode, (0 : stdgo.GoInt));
            } else if (((_curChild < ((@:checkr _curNode ?? throw "null pointer dereference")._children.length) : Bool) && !(@:checkr _s ?? throw "null pointer dereference")._skipAllChildren : Bool)) {
                @:check2r _s._calculateFC(((@:checkr _curNode ?? throw "null pointer dereference")._t | (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _curNode, _curChild);
                if (!(@:checkr _s ?? throw "null pointer dereference")._skipchild) {
                    _curNode = (@:checkr _curNode ?? throw "null pointer dereference")._children[(_curChild : stdgo.GoInt)];
                    @:check2r _s._pushInt(_curChild);
                    _curChild = (0 : stdgo.GoInt);
                } else {
                    _curChild++;
                    (@:checkr _s ?? throw "null pointer dereference")._skipchild = false;
                };
                continue;
            };
            (@:checkr _s ?? throw "null pointer dereference")._skipAllChildren = false;
            if (@:check2r _s._intIsEmpty()) {
                break;
            };
            _curChild = @:check2r _s._popInt();
            _curNode = (@:checkr _curNode ?? throw "null pointer dereference")._next;
            @:check2r _s._calculateFC(((@:checkr _curNode ?? throw "null pointer dereference")._t | (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _curNode, _curChild);
            if ((@:checkr _s ?? throw "null pointer dereference")._failed) {
                return null;
            };
            _curChild++;
        };
        if (@:check2r _s._fcIsEmpty()) {
            return null;
        };
        return @:check2r _s._popFC();
    }
}
