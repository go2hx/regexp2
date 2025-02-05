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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_regexNode_asInterface) class T_regexNode_static_extension {
    @:keep
    @:tdfield
    static public function _dump( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _stack:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var curNode = _n;
        var curChild = (0 : stdgo.GoInt);
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(@:check2r curNode._description()?.__copy__());
        @:check2r _buf.writeRune((10 : stdgo.GoInt32));
        while (true) {
            if ((((@:checkr curNode ?? throw "null pointer dereference")._children != null) && (curChild < ((@:checkr curNode ?? throw "null pointer dereference")._children.length) : Bool) : Bool)) {
                _stack = (_stack.__append__((curChild + (1 : stdgo.GoInt) : stdgo.GoInt)));
                curNode = (@:checkr curNode ?? throw "null pointer dereference")._children[(curChild : stdgo.GoInt)];
                curChild = (0 : stdgo.GoInt);
                var depth = (_stack.length : stdgo.GoInt);
                if ((depth > (32 : stdgo.GoInt) : Bool)) {
                    depth = (32 : stdgo.GoInt);
                };
                @:check2r _buf.write((_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__padspace._padSpace.__slice__(0, depth) : stdgo.Slice<stdgo.GoUInt8>));
                @:check2r _buf.writeString(@:check2r curNode._description()?.__copy__());
                @:check2r _buf.writeRune((10 : stdgo.GoInt32));
            } else {
                if ((_stack.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
                curChild = _stack[((_stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _stack = (_stack.__slice__(0, ((_stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                curNode = (@:checkr curNode ?? throw "null pointer dereference")._next;
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _description( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__typestr._typeStr[((@:checkr _n ?? throw "null pointer dereference")._t : stdgo.GoInt)]?.__copy__());
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-C" : stdgo.GoString));
        };
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-I" : stdgo.GoString));
        };
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-L" : stdgo.GoString));
        };
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-M" : stdgo.GoString));
        };
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-S" : stdgo.GoString));
        };
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-X" : stdgo.GoString));
        };
        if ((((@:checkr _n ?? throw "null pointer dereference")._options & (256 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
            @:check2r _buf.writeString(("-E" : stdgo.GoString));
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _n ?? throw "null pointer dereference")._t;
                    if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _buf.writeString(((("(Ch = " : stdgo.GoString) + _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_chardescription.charDescription((@:checkr _n ?? throw "null pointer dereference")._ch)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        break;
                        break;
                    } else if (__value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _buf.writeString(((((("(index = " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw "null pointer dereference")._m)?.__copy__() : stdgo.GoString) + (", unindex = " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw "null pointer dereference")._n)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        break;
                        break;
                    } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _buf.writeString(((("(index = " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw "null pointer dereference")._m)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        break;
                        break;
                    } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("(String = %s)" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _n ?? throw "null pointer dereference")._str : stdgo.GoString)));
                        break;
                        break;
                    } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _buf.writeString(((("(Set = " : stdgo.GoString) + ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        break;
                        break;
                    };
                };
                break;
            };
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _n ?? throw "null pointer dereference")._t;
                    if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        @:check2r _buf.writeString(("(Min = " : stdgo.GoString));
                        @:check2r _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw "null pointer dereference")._m)?.__copy__());
                        @:check2r _buf.writeString((", Max = " : stdgo.GoString));
                        if ((@:checkr _n ?? throw "null pointer dereference")._n == ((2147483647 : stdgo.GoInt))) {
                            @:check2r _buf.writeString(("inf" : stdgo.GoString));
                        } else {
                            @:check2r _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _n ?? throw "null pointer dereference")._n)?.__copy__());
                        };
                        @:check2r _buf.writeString((")" : stdgo.GoString));
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _makeQuantifier( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _lazy:Bool, _min:stdgo.GoInt, _max:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        if (((_min == (0 : stdgo.GoInt)) && (_max == (0 : stdgo.GoInt)) : Bool)) {
            return _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw "null pointer dereference")._options);
        };
        if (((_min == (1 : stdgo.GoInt)) && (_max == (1 : stdgo.GoInt)) : Bool)) {
            return _n;
        };
        {
            final __value__ = (@:checkr _n ?? throw "null pointer dereference")._t;
            if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                if (_lazy) {
                    @:check2r _n._makeRep((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _min, _max);
                } else {
                    @:check2r _n._makeRep((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _min, _max);
                };
                return _n;
            } else {
                var _t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                if (_lazy) {
                    _t = (27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                } else {
                    _t = (26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                };
                var _result = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN(_t, (@:checkr _n ?? throw "null pointer dereference")._options, _min, _max);
                @:check2r _result._addChild(_n);
                return _result;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reverseLeft( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        if (((((@:checkr _n ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) && (@:checkr _n ?? throw "null pointer dereference")._t == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool) && (((@:checkr _n ?? throw "null pointer dereference")._children.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            {
                var __0 = (0 : stdgo.GoInt), __1 = (((@:checkr _n ?? throw "null pointer dereference")._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _right = __1, _left = __0;
                while ((_left < _right : Bool)) {
                    {
                        final __tmp__0 = (@:checkr _n ?? throw "null pointer dereference")._children[(_right : stdgo.GoInt)];
                        final __tmp__1 = (@:checkr _n ?? throw "null pointer dereference")._children[(_left : stdgo.GoInt)];
                        final __tmp__2 = (@:checkr _n ?? throw "null pointer dereference")._children;
                        final __tmp__3 = (_left : stdgo.GoInt);
                        final __tmp__4 = (@:checkr _n ?? throw "null pointer dereference")._children;
                        final __tmp__5 = (_right : stdgo.GoInt);
                        __tmp__2[__tmp__3] = __tmp__0;
                        __tmp__4[__tmp__5] = __tmp__1;
                    };
                    {
                        final __tmp__0 = (_left + (1 : stdgo.GoInt) : stdgo.GoInt);
                        final __tmp__1 = (_right - (1 : stdgo.GoInt) : stdgo.GoInt);
                        _left = __tmp__0;
                        _right = __tmp__1;
                    };
                };
            };
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _reduceSet( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        if (((@:checkr _n ?? throw "null pointer dereference")._set == null || ((@:checkr _n ?? throw "null pointer dereference")._set : Dynamic).__nil__)) {
            (@:checkr _n ?? throw "null pointer dereference")._t = (22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        } else if ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").isSingleton()) {
            (@:checkr _n ?? throw "null pointer dereference")._ch = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").singletonChar();
            (@:checkr _n ?? throw "null pointer dereference")._set = null;
            (@:checkr _n ?? throw "null pointer dereference")._t = ((@:checkr _n ?? throw "null pointer dereference")._t + ((-2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        } else if ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").isSingletonInverse()) {
            (@:checkr _n ?? throw "null pointer dereference")._ch = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").singletonChar();
            (@:checkr _n ?? throw "null pointer dereference")._set = null;
            (@:checkr _n ?? throw "null pointer dereference")._t = ((@:checkr _n ?? throw "null pointer dereference")._t + ((-1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function _reduceGroup( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _u = _n;
        while ((@:checkr _u ?? throw "null pointer dereference")._t == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
            _u = (@:checkr _u ?? throw "null pointer dereference")._children[(0 : stdgo.GoInt)];
        };
        return _u;
    }
    @:keep
    @:tdfield
    static public function _stripEnation( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _emptyType:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        {
            final __value__ = ((@:checkr _n ?? throw "null pointer dereference")._children.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_emptyType, (@:checkr _n ?? throw "null pointer dereference")._options);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return (@:checkr _n ?? throw "null pointer dereference")._children[(0 : stdgo.GoInt)];
            } else {
                return _n;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _reduceRep( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _u = _n;
        var _t = ((@:checkr _n ?? throw "null pointer dereference")._t : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        var _min = ((@:checkr _n ?? throw "null pointer dereference")._m : stdgo.GoInt);
        var _max = ((@:checkr _n ?? throw "null pointer dereference")._n : stdgo.GoInt);
        while (true) {
            if (((@:checkr _u ?? throw "null pointer dereference")._children.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            var _child = (@:checkr _u ?? throw "null pointer dereference")._children[(0 : stdgo.GoInt)];
            if ((@:checkr _child ?? throw "null pointer dereference")._t != (_t)) {
                var _childType = ((@:checkr _child ?? throw "null pointer dereference")._t : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                if (!(((((_childType >= (3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) && (_childType <= (5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) : Bool) && _t == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool) || (((_childType >= (6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) && (_childType <= (8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool) : Bool) && _t == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool) : Bool))) {
                    break;
                };
            };
            if ((((@:checkr _u ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt)) && ((@:checkr _child ?? throw "null pointer dereference")._m > (1 : stdgo.GoInt) : Bool) : Bool) || ((@:checkr _child ?? throw "null pointer dereference")._n < ((@:checkr _child ?? throw "null pointer dereference")._m * (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            _u = _child;
            if (((@:checkr _u ?? throw "null pointer dereference")._m > (0 : stdgo.GoInt) : Bool)) {
                if ((((2147483646 : stdgo.GoInt) / (@:checkr _u ?? throw "null pointer dereference")._m : stdgo.GoInt) < _min : Bool)) {
                    (@:checkr _u ?? throw "null pointer dereference")._m = (2147483647 : stdgo.GoInt);
                } else {
                    (@:checkr _u ?? throw "null pointer dereference")._m = ((@:checkr _u ?? throw "null pointer dereference")._m * _min : stdgo.GoInt);
                };
            };
            if (((@:checkr _u ?? throw "null pointer dereference")._n > (0 : stdgo.GoInt) : Bool)) {
                if ((((2147483646 : stdgo.GoInt) / (@:checkr _u ?? throw "null pointer dereference")._n : stdgo.GoInt) < _max : Bool)) {
                    (@:checkr _u ?? throw "null pointer dereference")._n = (2147483647 : stdgo.GoInt);
                } else {
                    (@:checkr _u ?? throw "null pointer dereference")._n = ((@:checkr _u ?? throw "null pointer dereference")._n * _max : stdgo.GoInt);
                };
            };
        };
        if ((2147483647 : stdgo.GoInt) == (_min)) {
            return _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw "null pointer dereference")._options);
        };
        return _u;
    }
    @:keep
    @:tdfield
    static public function _reduceConcatenation( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _optionsLast:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
        var _optionsAt:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
        if (((@:checkr _n ?? throw "null pointer dereference")._children.length) == ((0 : stdgo.GoInt))) {
            return _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw "null pointer dereference")._options);
        };
        var _wasLastString = (false : Bool);
        {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _i = __tmp__0;
                _j = __tmp__1;
            };
            while ((_i < ((@:checkr _n ?? throw "null pointer dereference")._children.length) : Bool)) {
                var __0:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>), __1:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
var _prev = __1, _at = __0;
_at = (@:checkr _n ?? throw "null pointer dereference")._children[(_i : stdgo.GoInt)];
if ((_j < _i : Bool)) {
                    (@:checkr _n ?? throw "null pointer dereference")._children[(_j : stdgo.GoInt)] = _at;
                };
if ((((@:checkr _at ?? throw "null pointer dereference")._t == (25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) && (((@:checkr _at ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) == (((@:checkr _n ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) : Bool)) {
                    {
                        var _k = (0 : stdgo.GoInt);
                        while ((_k < ((@:checkr _at ?? throw "null pointer dereference")._children.length) : Bool)) {
                            (@:checkr (@:checkr _at ?? throw "null pointer dereference")._children[(_k : stdgo.GoInt)] ?? throw "null pointer dereference")._next = _n;
                            _k++;
                        };
                    };
                    @:check2r _n._insertChildren((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (@:checkr _at ?? throw "null pointer dereference")._children);
                    _j--;
                } else if ((((@:checkr _at ?? throw "null pointer dereference")._t == (12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr _at ?? throw "null pointer dereference")._t == (9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
                    _optionsAt = ((@:checkr _at ?? throw "null pointer dereference")._options & (65 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    if ((!_wasLastString || (_optionsLast != _optionsAt) : Bool)) {
                        _wasLastString = true;
                        _optionsLast = _optionsAt;
                        {
                            {
                                final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                                _i = __tmp__0;
                                _j = __tmp__1;
                            };
                            continue;
                        };
                    };
                    _j--;
                    _prev = (@:checkr _n ?? throw "null pointer dereference")._children[(_j : stdgo.GoInt)];
                    if ((@:checkr _prev ?? throw "null pointer dereference")._t == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        (@:checkr _prev ?? throw "null pointer dereference")._t = (12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                        (@:checkr _prev ?? throw "null pointer dereference")._str = (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(@:checkr _prev ?? throw "null pointer dereference")._ch]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    };
                    if (((_optionsAt & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                        if ((@:checkr _at ?? throw "null pointer dereference")._t == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            (@:checkr _prev ?? throw "null pointer dereference")._str = ((@:checkr _prev ?? throw "null pointer dereference")._str.__append__((@:checkr _at ?? throw "null pointer dereference")._ch));
                        } else {
                            (@:checkr _prev ?? throw "null pointer dereference")._str = ((@:checkr _prev ?? throw "null pointer dereference")._str.__append__(...((@:checkr _at ?? throw "null pointer dereference")._str : Array<stdgo.GoInt32>)));
                        };
                    } else {
                        if ((@:checkr _at ?? throw "null pointer dereference")._t == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            (@:checkr _prev ?? throw "null pointer dereference")._str = ((@:checkr _prev ?? throw "null pointer dereference")._str.__append__((0 : stdgo.GoInt32)));
                            ((@:checkr _prev ?? throw "null pointer dereference")._str.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((@:checkr _prev ?? throw "null pointer dereference")._str);
                            (@:checkr _prev ?? throw "null pointer dereference")._str[(0 : stdgo.GoInt)] = (@:checkr _at ?? throw "null pointer dereference")._ch;
                        } else {
                            var _merge = (new stdgo.Slice<stdgo.GoInt32>((((@:checkr _prev ?? throw "null pointer dereference")._str.length) + ((@:checkr _at ?? throw "null pointer dereference")._str.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                            _merge.__copyTo__((@:checkr _at ?? throw "null pointer dereference")._str);
                            (_merge.__slice__(((@:checkr _at ?? throw "null pointer dereference")._str.length)) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((@:checkr _prev ?? throw "null pointer dereference")._str);
                            (@:checkr _prev ?? throw "null pointer dereference")._str = _merge;
                        };
                    };
                } else if ((@:checkr _at ?? throw "null pointer dereference")._t == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    _j--;
                } else {
                    _wasLastString = false;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = __tmp__0;
                    _j = __tmp__1;
                };
            };
        };
        if ((_j < _i : Bool)) {
            @:check2r _n._removeChildren(_j, _i);
        };
        return @:check2r _n._stripEnation((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
    }
    @:keep
    @:tdfield
    static public function _reduceAlternation( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        if (((@:checkr _n ?? throw "null pointer dereference")._children.length) == ((0 : stdgo.GoInt))) {
            return _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _n ?? throw "null pointer dereference")._options);
        };
        var _wasLastSet = (false : Bool);
        var _lastNodeCannotMerge = (false : Bool);
        var _optionsLast:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _j = __1, _i = __0;
        {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _i = __tmp__0;
                _j = __tmp__1;
            };
            while ((_i < ((@:checkr _n ?? throw "null pointer dereference")._children.length) : Bool)) {
                var _at = (@:checkr _n ?? throw "null pointer dereference")._children[(_i : stdgo.GoInt)];
if ((_j < _i : Bool)) {
                    (@:checkr _n ?? throw "null pointer dereference")._children[(_j : stdgo.GoInt)] = _at;
                };
while (true) {
                    if ((@:checkr _at ?? throw "null pointer dereference")._t == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        {
                            var _k = (0 : stdgo.GoInt);
                            while ((_k < ((@:checkr _at ?? throw "null pointer dereference")._children.length) : Bool)) {
                                (@:checkr (@:checkr _at ?? throw "null pointer dereference")._children[(_k : stdgo.GoInt)] ?? throw "null pointer dereference")._next = _n;
                                _k++;
                            };
                        };
                        @:check2r _n._insertChildren((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (@:checkr _at ?? throw "null pointer dereference")._children);
                        _j--;
                    } else if ((((@:checkr _at ?? throw "null pointer dereference")._t == (11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr _at ?? throw "null pointer dereference")._t == (9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
                        var _optionsAt = ((@:checkr _at ?? throw "null pointer dereference")._options & (65 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                        if ((@:checkr _at ?? throw "null pointer dereference")._t == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            if ((((!_wasLastSet || _optionsLast != (_optionsAt) : Bool) || _lastNodeCannotMerge : Bool) || !(@:checkr (@:checkr _at ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").isMergeable() : Bool)) {
                                _wasLastSet = true;
                                _lastNodeCannotMerge = !(@:checkr (@:checkr _at ?? throw "null pointer dereference")._set ?? throw "null pointer dereference").isMergeable();
                                _optionsLast = _optionsAt;
                                break;
                            };
                        } else if (((!_wasLastSet || _optionsLast != (_optionsAt) : Bool) || _lastNodeCannotMerge : Bool)) {
                            _wasLastSet = true;
                            _lastNodeCannotMerge = false;
                            _optionsLast = _optionsAt;
                            break;
                        };
                        _j--;
                        var _prev = (@:checkr _n ?? throw "null pointer dereference")._children[(_j : stdgo.GoInt)];
                        var _prevCharClass:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
                        if ((@:checkr _prev ?? throw "null pointer dereference")._t == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            _prevCharClass = (stdgo.Go.setRef((new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
                            @:check2r _prevCharClass._addChar((@:checkr _prev ?? throw "null pointer dereference")._ch);
                        } else {
                            _prevCharClass = (@:checkr _prev ?? throw "null pointer dereference")._set;
                        };
                        if ((@:checkr _at ?? throw "null pointer dereference")._t == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                            @:check2r _prevCharClass._addChar((@:checkr _at ?? throw "null pointer dereference")._ch);
                        } else {
                            @:check2r _prevCharClass._addSet(((@:checkr _at ?? throw "null pointer dereference")._set : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet)?.__copy__());
                        };
                        (@:checkr _prev ?? throw "null pointer dereference")._t = (11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                        (@:checkr _prev ?? throw "null pointer dereference")._set = _prevCharClass;
                    } else if ((@:checkr _at ?? throw "null pointer dereference")._t == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        _j--;
                    } else {
                        _wasLastSet = false;
                        _lastNodeCannotMerge = false;
                    };
                    break;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = __tmp__0;
                    _j = __tmp__1;
                };
            };
        };
        if ((_j < _i : Bool)) {
            @:check2r _n._removeChildren(_j, _i);
        };
        return @:check2r _n._stripEnation((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
    }
    @:keep
    @:tdfield
    static public function _reduce( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        {
            final __value__ = (@:checkr _n ?? throw "null pointer dereference")._t;
            if (__value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return @:check2r _n._reduceAlternation();
            } else if (__value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return @:check2r _n._reduceConcatenation();
            } else if (__value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return @:check2r _n._reduceRep();
            } else if (__value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return @:check2r _n._reduceGroup();
            } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                return @:check2r _n._reduceSet();
            } else {
                return _n;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _makeRep( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _min:stdgo.GoInt, _max:stdgo.GoInt):Void {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        (@:checkr _n ?? throw "null pointer dereference")._t = ((@:checkr _n ?? throw "null pointer dereference")._t + ((_t - (9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        (@:checkr _n ?? throw "null pointer dereference")._m = _min;
        (@:checkr _n ?? throw "null pointer dereference")._n = _max;
    }
    @:keep
    @:tdfield
    static public function _removeChildren( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _startIndex:stdgo.GoInt, _endIndex:stdgo.GoInt):Void {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        (@:checkr _n ?? throw "null pointer dereference")._children = (((@:checkr _n ?? throw "null pointer dereference")._children.__slice__(0, _startIndex) : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>).__append__(...(((@:checkr _n ?? throw "null pointer dereference")._children.__slice__(_endIndex) : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>) : Array<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>)));
    }
    @:keep
    @:tdfield
    static public function _insertChildren( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _afterIndex:stdgo.GoInt, _nodes:stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>):Void {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _newChildren = (new stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>((0 : stdgo.GoInt).toBasic(), (((@:checkr _n ?? throw "null pointer dereference")._children.length) + (_nodes.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>);
        (@:checkr _n ?? throw "null pointer dereference")._children = (((_newChildren.__append__(...(((@:checkr _n ?? throw "null pointer dereference")._children.__slice__(0, _afterIndex) : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>) : Array<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>))).__append__(...(_nodes : Array<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>))).__append__(...(((@:checkr _n ?? throw "null pointer dereference")._children.__slice__(_afterIndex) : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>) : Array<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>)));
    }
    @:keep
    @:tdfield
    static public function _addChild( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _child:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        var _reduced = @:check2r _child._reduce();
        (@:checkr _n ?? throw "null pointer dereference")._children = ((@:checkr _n ?? throw "null pointer dereference")._children.__append__(_reduced));
        (@:checkr _reduced ?? throw "null pointer dereference")._next = _n;
    }
    @:keep
    @:tdfield
    static public function _writeStrToBuf( _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = _n;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _n ?? throw "null pointer dereference")._str.length) : Bool)) {
                @:check2r _buf.writeRune((@:checkr _n ?? throw "null pointer dereference")._str[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
    }
}
