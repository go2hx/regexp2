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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _isTrueQuantifier( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _nChars = (@:check2r _p._charsRight() : stdgo.GoInt);
        if (_nChars == ((0 : stdgo.GoInt))) {
            return false;
        };
        var _startpos = (@:check2r _p._textpos() : stdgo.GoInt);
        var _ch = (@:check2r _p._charAt(_startpos) : stdgo.GoInt32);
        if (_ch != ((123 : stdgo.GoInt32))) {
            return ((_ch <= (123 : stdgo.GoInt32) : Bool) && (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax___category.__category[(_ch : stdgo.GoInt)] >= (5 : stdgo.GoUInt8) : Bool) : Bool);
        };
        var _pos = (_startpos : stdgo.GoInt);
        while (true) {
            _nChars--;
            if ((_nChars <= (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            _pos++;
            _ch = @:check2r _p._charAt(_pos);
            if (((_ch < (48 : stdgo.GoInt32) : Bool) || (_ch > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                break;
            };
        };
        if (((_nChars == (0 : stdgo.GoInt)) || ((_pos - _startpos : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
            return false;
        };
        if (_ch == ((125 : stdgo.GoInt32))) {
            return true;
        };
        if (_ch != ((44 : stdgo.GoInt32))) {
            return false;
        };
        while (true) {
            _nChars--;
            if ((_nChars <= (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            _pos++;
            _ch = @:check2r _p._charAt(_pos);
            if (((_ch < (48 : stdgo.GoInt32) : Bool) || (_ch > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                break;
            };
        };
        return ((_nChars > (0 : stdgo.GoInt) : Bool) && (_ch == (125 : stdgo.GoInt32)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _addAlternate( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t == (34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t == (33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
            @:check2r (@:checkr _p ?? throw "null pointer dereference")._group._addChild(@:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._reverseLeft());
        } else {
            @:check2r (@:checkr _p ?? throw "null pointer dereference")._alternation._addChild(@:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._reverseLeft());
        };
        (@:checkr _p ?? throw "null pointer dereference")._concatenation = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options);
    }
    @:keep
    @:tdfield
    static public function _startGroup( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _openGroup:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._group = _openGroup;
        (@:checkr _p ?? throw "null pointer dereference")._alternation = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options);
        (@:checkr _p ?? throw "null pointer dereference")._concatenation = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options);
    }
    @:keep
    @:tdfield
    static public function _emptyStack( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._stack == null || ((@:checkr _p ?? throw "null pointer dereference")._stack : Dynamic).__nil__);
    }
    @:keep
    @:tdfield
    static public function _popGroup( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._concatenation = (@:checkr _p ?? throw "null pointer dereference")._stack;
        (@:checkr _p ?? throw "null pointer dereference")._alternation = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._concatenation ?? throw "null pointer dereference")._next;
        (@:checkr _p ?? throw "null pointer dereference")._group = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._alternation ?? throw "null pointer dereference")._next;
        (@:checkr _p ?? throw "null pointer dereference")._stack = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._next;
        if ((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t == (34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) && ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._children.length == (0 : stdgo.GoInt)) : Bool)) {
            if (((@:checkr _p ?? throw "null pointer dereference")._unit == null || ((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__)) {
                return @:check2r _p._getErr((("illegal conditional (?(...)) expression" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
            };
            @:check2r (@:checkr _p ?? throw "null pointer dereference")._group._addChild((@:checkr _p ?? throw "null pointer dereference")._unit);
            (@:checkr _p ?? throw "null pointer dereference")._unit = null;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pushGroup( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._next = (@:checkr _p ?? throw "null pointer dereference")._stack;
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._alternation ?? throw "null pointer dereference")._next = (@:checkr _p ?? throw "null pointer dereference")._group;
        (@:checkr (@:checkr _p ?? throw "null pointer dereference")._concatenation ?? throw "null pointer dereference")._next = (@:checkr _p ?? throw "null pointer dereference")._alternation;
        (@:checkr _p ?? throw "null pointer dereference")._stack = (@:checkr _p ?? throw "null pointer dereference")._concatenation;
    }
    @:keep
    @:tdfield
    static public function _addToConcatenate( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _pos:stdgo.GoInt, _cch:stdgo.GoInt, _isReplacement:Bool):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _node:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        if (_cch == ((0 : stdgo.GoInt))) {
            return;
        };
        if ((_cch > (1 : stdgo.GoInt) : Bool)) {
            var _str = (new stdgo.Slice<stdgo.GoInt32>((_cch : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            _str.__copyTo__(((@:checkr _p ?? throw "null pointer dereference")._pattern.__slice__(_pos, (_pos + _cch : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
            if ((@:check2r _p._useOptionI() && !_isReplacement : Bool)) {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (_str.length) : Bool)) {
                        _str[(_i : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_tolower.toLower(_str[(_i : stdgo.GoInt)]);
                        _i++;
                    };
                };
            };
            _node = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodestr._newRegexNodeStr((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _str);
        } else {
            var _ch = (@:check2r _p._charAt(_pos) : stdgo.GoInt32);
            if ((@:check2r _p._useOptionI() && !_isReplacement : Bool)) {
                _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
            };
            _node = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _ch);
        };
        @:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._addChild(_node);
    }
    @:keep
    @:tdfield
    static public function _pushOptions( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._optionsStack = ((@:checkr _p ?? throw "null pointer dereference")._optionsStack.__append__((@:checkr _p ?? throw "null pointer dereference")._options));
    }
    @:keep
    @:tdfield
    static public function _popOptions( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _lastIdx = (((@:checkr _p ?? throw "null pointer dereference")._optionsStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._options = (@:checkr _p ?? throw "null pointer dereference")._optionsStack[(_lastIdx : stdgo.GoInt)];
        (@:checkr _p ?? throw "null pointer dereference")._optionsStack = ((@:checkr _p ?? throw "null pointer dereference")._optionsStack.__slice__(0, _lastIdx) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
    }
    @:keep
    @:tdfield
    static public function _popKeepOptions( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _lastIdx = (((@:checkr _p ?? throw "null pointer dereference")._optionsStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._optionsStack = ((@:checkr _p ?? throw "null pointer dereference")._optionsStack.__slice__(0, _lastIdx) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
    }
    @:keep
    @:tdfield
    static public function _addGroup( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t == (34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t == (33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
            @:check2r (@:checkr _p ?? throw "null pointer dereference")._group._addChild(@:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._reverseLeft());
            if ((((((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t == (33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) && (((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._children.length) > (2 : stdgo.GoInt) : Bool) : Bool)) || (((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._children.length) > (3 : stdgo.GoInt) : Bool) : Bool)) {
                return @:check2r _p._getErr((("too many | in (?()|)" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
            };
        } else {
            @:check2r (@:checkr _p ?? throw "null pointer dereference")._alternation._addChild(@:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._reverseLeft());
            @:check2r (@:checkr _p ?? throw "null pointer dereference")._group._addChild((@:checkr _p ?? throw "null pointer dereference")._alternation);
        };
        (@:checkr _p ?? throw "null pointer dereference")._unit = (@:checkr _p ?? throw "null pointer dereference")._group;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _addUnitType( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _t:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._unit = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_t, (@:checkr _p ?? throw "null pointer dereference")._options);
    }
    @:keep
    @:tdfield
    static public function _addUnitNode( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _node:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._unit = _node;
    }
    @:keep
    @:tdfield
    static public function _addUnitSet( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _set:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._unit = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _set);
    }
    @:keep
    @:tdfield
    static public function _addUnitNotone( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _ch:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (@:check2r _p._useOptionI()) {
            _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        (@:checkr _p ?? throw "null pointer dereference")._unit = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _ch);
    }
    @:keep
    @:tdfield
    static public function _addUnitOne( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _ch:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (@:check2r _p._useOptionI()) {
            _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        (@:checkr _p ?? throw "null pointer dereference")._unit = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _ch);
    }
    @:keep
    @:tdfield
    static public function _addConcatenate3( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _lazy:Bool, _min:stdgo.GoInt, _max:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        @:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._addChild(@:check2r (@:checkr _p ?? throw "null pointer dereference")._unit._makeQuantifier(_lazy, _min, _max));
        (@:checkr _p ?? throw "null pointer dereference")._unit = null;
    }
    @:keep
    @:tdfield
    static public function _addConcatenate( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        @:check2r (@:checkr _p ?? throw "null pointer dereference")._concatenation._addChild((@:checkr _p ?? throw "null pointer dereference")._unit);
        (@:checkr _p ?? throw "null pointer dereference")._unit = null;
    }
    @:keep
    @:tdfield
    static public function _emptyOptionsStack( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._optionsStack.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _useOptionU( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (1024 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useRE2( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (512 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionE( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (256 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionX( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionS( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionM( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionI( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionN( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._options & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _isCaptureName( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _capname:stdgo.GoString):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._capnames == null) {
            return false;
        };
        var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._capnames != null && (@:checkr _p ?? throw "null pointer dereference")._capnames.exists(_capname?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._capnames[_capname?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _isCaptureSlot( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._caps != null) {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._caps != null && (@:checkr _p ?? throw "null pointer dereference")._caps.exists(_i) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._caps[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            return _ok;
        };
        return (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (@:checkr _p ?? throw "null pointer dereference")._capsize : Bool) : Bool));
    }
    @:keep
    @:tdfield
    static public function _captureSlotFromName( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _capname:stdgo.GoString):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return ((@:checkr _p ?? throw "null pointer dereference")._capnames[_capname] ?? (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _rightMost( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._currentPos == (((@:checkr _p ?? throw "null pointer dereference")._pattern.length));
    }
    @:keep
    @:tdfield
    static public function _charsRight( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (((@:checkr _p ?? throw "null pointer dereference")._pattern.length) - (@:checkr _p ?? throw "null pointer dereference")._currentPos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _rightChar( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._pattern[((@:checkr _p ?? throw "null pointer dereference")._currentPos + _i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _charAt( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._pattern[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _moveLeft( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._currentPos--;
    }
    @:keep
    @:tdfield
    static public function _moveRight( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._currentPos = ((@:checkr _p ?? throw "null pointer dereference")._currentPos + (_i) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _moveRightGetChar( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _ch = ((@:checkr _p ?? throw "null pointer dereference")._pattern[((@:checkr _p ?? throw "null pointer dereference")._currentPos : stdgo.GoInt)] : stdgo.GoInt32);
        (@:checkr _p ?? throw "null pointer dereference")._currentPos++;
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _textto( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _pos:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._currentPos = _pos;
    }
    @:keep
    @:tdfield
    static public function _textpos( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return (@:checkr _p ?? throw "null pointer dereference")._currentPos;
    }
    @:keep
    @:tdfield
    static public function _scanOctal( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _c = (3 : stdgo.GoInt);
        if ((_c > @:check2r _p._charsRight() : Bool)) {
            _c = @:check2r _p._charsRight();
        };
        var _i = (0 : stdgo.GoInt);
        var _d = ((@:check2r _p._rightChar((0 : stdgo.GoInt)) - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        while ((((_c > (0 : stdgo.GoInt) : Bool) && (_d <= (7 : stdgo.GoInt) : Bool) : Bool) && (_d >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            if (((_i >= (32 : stdgo.GoInt) : Bool) && @:check2r _p._useOptionE() : Bool)) {
                break;
            };
            _i = (_i * ((8 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
            _c--;
            @:check2r _p._moveRight((1 : stdgo.GoInt));
            if (!@:check2r _p._rightMost()) {
                _d = ((@:check2r _p._rightChar((0 : stdgo.GoInt)) - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
            };
        };
        _i = (_i & ((255 : stdgo.GoInt)) : stdgo.GoInt);
        return (_i : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _scanHex( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _c:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = (0 : stdgo.GoInt);
        if ((@:check2r _p._charsRight() >= _c : Bool)) {
            while ((_c > (0 : stdgo.GoInt) : Bool)) {
                var _d = (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__hexdigit._hexDigit(@:check2r _p._moveRightGetChar()) : stdgo.GoInt);
                if ((_d < (0 : stdgo.GoInt) : Bool)) {
                    break;
                };
                _i = (_i * ((16 : stdgo.GoInt)) : stdgo.GoInt);
                _i = (_i + (_d) : stdgo.GoInt);
                _c--;
            };
        };
        if ((_c > (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("insufficient hexadecimal digits" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        return { _0 : (_i : stdgo.GoInt32), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanHexUntilBrace( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = (0 : stdgo.GoInt);
        var _hasContent = (false : Bool);
        while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            var _ch = (@:check2r _p._moveRightGetChar() : stdgo.GoInt32);
            if (_ch == ((125 : stdgo.GoInt32))) {
                if (!_hasContent) {
                    return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("insufficient hexadecimal digits" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                };
                return { _0 : (_i : stdgo.GoInt32), _1 : (null : stdgo.Error) };
            };
            _hasContent = true;
            var _d = (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__hexdigit._hexDigit(_ch) : stdgo.GoInt);
            if ((_d < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("missing closing }" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            _i = (_i * ((16 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
            if ((_i > (1114111 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("hex values may not be larger than 0x10FFFF" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
        };
        return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("missing closing }" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
    }
    @:keep
    @:tdfield
    static public function _scanControl( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:check2r _p._charsRight() <= (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("missing control character" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _ch = (@:check2r _p._moveRightGetChar() : stdgo.GoInt32);
        if (((_ch >= (97 : stdgo.GoInt32) : Bool) && (_ch <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            _ch = ((_ch - (32 : stdgo.GoInt32) : stdgo.GoInt32));
        };
        _ch = ((_ch - (64 : stdgo.GoInt32) : stdgo.GoInt32));
        if (((_ch >= (0 : stdgo.GoInt32) : Bool) && (_ch < (32 : stdgo.GoInt32) : Bool) : Bool)) {
            return { _0 : _ch, _1 : (null : stdgo.Error) };
        };
        return { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("unrecognized control character" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
    }
    @:keep
    @:tdfield
    static public function _scanCharEscape( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _err = (null : stdgo.Error);
        var _ch = (@:check2r _p._moveRightGetChar() : stdgo.GoInt32);
        if (((_ch >= (48 : stdgo.GoInt32) : Bool) && (_ch <= (55 : stdgo.GoInt32) : Bool) : Bool)) {
            @:check2r _p._moveLeft();
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : @:check2r _p._scanOctal(), _1 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _pos = (@:check2r _p._textpos() : stdgo.GoInt);
        {
            final __value__ = _ch;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (123 : stdgo.GoInt32)) : Bool)) {
                    if (@:check2r _p._useOptionE()) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _ch, _1 : (null : stdgo.Error) };
                            _r = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = @:check2r _p._scanHexUntilBrace();
                        _r = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                } else {
                    {
                        var __tmp__ = @:check2r _p._scanHex((2 : stdgo.GoInt));
                        _r = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                };
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                if ((((@:check2r _p._useOptionE() && @:check2r _p._useOptionU() : Bool) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (123 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = @:check2r _p._scanHexUntilBrace();
                        _r = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                } else {
                    {
                        var __tmp__ = @:check2r _p._scanHex((4 : stdgo.GoInt));
                        _r = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                };
            } else if (__value__ == ((97 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (7 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (8 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((101 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (27 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((102 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (12 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((110 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (10 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((114 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (13 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((116 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (9 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((118 : stdgo.GoInt32))) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (11 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                {
                    var __tmp__ = @:check2r _p._scanControl();
                    _r = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                if (((!@:check2r _p._useOptionE() && !@:check2r _p._useRE2() : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : @:check2r _p._getErr((("unrecognized escape sequence \\%v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface((_ch : stdgo.GoString))) };
                        _r = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _ch, _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (((_err != null) && @:check2r _p._useOptionE() : Bool)) {
            @:check2r _p._textto(_pos);
            return {
                final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _ch, _1 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return { _0 : _r, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _scanOptions( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        {
            var _off = (false : Bool);
            while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                var _ch = (@:check2r _p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
if (_ch == ((45 : stdgo.GoInt32))) {
                    _off = true;
                } else if (_ch == ((43 : stdgo.GoInt32))) {
                    _off = false;
                } else {
                    var _option = (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__optionfromcode._optionFromCode(_ch) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    if (((_option == (0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) || _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isonlytopoption._isOnlyTopOption(_option) : Bool)) {
                        return;
                    };
                    if (_off) {
                        (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options & ((-1 ^ _option)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    } else {
                        (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options | (_option) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    };
                };
                @:check2r _p._moveRight((1 : stdgo.GoInt));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanDecimal( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = (0 : stdgo.GoInt);
        var _d:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            _d = ((@:check2r _p._rightChar((0 : stdgo.GoInt)) - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
            if (((_d < (0 : stdgo.GoInt) : Bool) || (_d > (9 : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            @:check2r _p._moveRight((1 : stdgo.GoInt));
            if (((_i > (214748364 : stdgo.GoInt) : Bool) || (((_i == (214748364 : stdgo.GoInt)) && (_d > (7 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                return { _0 : (0 : stdgo.GoInt), _1 : @:check2r _p._getErr((("capture group number out of range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            _i = (_i * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
        };
        return { _0 : (_i : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanCharSet( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _caseInsensitive:Bool, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _ch = (0 : stdgo.GoInt32);
        var _chPrev = (0 : stdgo.GoInt32);
        var _inRange = (false : Bool);
        var _firstChar = (true : Bool);
        var _closed = (false : Bool);
        var _cc:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        if (!_scanOnly) {
            _cc = (stdgo.Go.setRef((new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        };
        if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (94 : stdgo.GoInt32)) : Bool)) {
            @:check2r _p._moveRight((1 : stdgo.GoInt));
            if (!_scanOnly) {
                (@:checkr _cc ?? throw "null pointer dereference")._negate = true;
            };
        };
        while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            var _fTranslatedChar = (false : Bool);
_ch = @:check2r _p._moveRightGetChar();
if (_ch == ((93 : stdgo.GoInt32))) {
                if (!_firstChar) {
                    _closed = true;
                    break;
                } else if (@:check2r _p._useOptionE()) {
                    if (!_scanOnly) {
                        @:check2r _cc._addRanges(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_noneclass.noneClass()._ranges);
                    };
                    _closed = true;
                    break;
                };
            } else if (((_ch == (92 : stdgo.GoInt32)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool)) {
                {
                    _ch = @:check2r _p._moveRightGetChar();
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _ch;
                                if (__value__ == ((68 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                                    if (!_scanOnly) {
                                        if (_inRange) {
                                            return { _0 : null, _1 : @:check2r _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_ch)) };
                                        };
                                        @:check2r _cc._addDigit((@:check2r _p._useOptionE() || @:check2r _p._useRE2() : Bool), _ch == ((68 : stdgo.GoInt32)), (@:checkr _p ?? throw "null pointer dereference")._patternRaw?.__copy__());
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((83 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32))) {
                                    if (!_scanOnly) {
                                        if (_inRange) {
                                            return { _0 : null, _1 : @:check2r _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_ch)) };
                                        };
                                        @:check2r _cc._addSpace(@:check2r _p._useOptionE(), @:check2r _p._useRE2(), _ch == ((83 : stdgo.GoInt32)));
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((87 : stdgo.GoInt32)) || __value__ == ((119 : stdgo.GoInt32))) {
                                    if (!_scanOnly) {
                                        if (_inRange) {
                                            return { _0 : null, _1 : @:check2r _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_ch)) };
                                        };
                                        @:check2r _cc._addWord((@:check2r _p._useOptionE() || @:check2r _p._useRE2() : Bool), _ch == ((87 : stdgo.GoInt32)));
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((112 : stdgo.GoInt32)) || __value__ == ((80 : stdgo.GoInt32))) {
                                    if (!_scanOnly) {
                                        if (_inRange) {
                                            return { _0 : null, _1 : @:check2r _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_ch)) };
                                        };
                                        var __tmp__ = @:check2r _p._parseProperty(), _prop:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        if (_err != null) {
                                            return { _0 : null, _1 : _err };
                                        };
                                        @:check2r _cc._addCategory(_prop?.__copy__(), (_ch != (112 : stdgo.GoInt32)), _caseInsensitive, (@:checkr _p ?? throw "null pointer dereference")._patternRaw?.__copy__());
                                    } else {
                                        @:check2r _p._parseProperty();
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((45 : stdgo.GoInt32))) {
                                    if (!_scanOnly) {
                                        @:check2r _cc._addRange(_ch, _ch);
                                    };
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else {
                                    @:check2r _p._moveLeft();
                                    var _err:stdgo.Error = (null : stdgo.Error);
                                    {
                                        var __tmp__ = @:check2r _p._scanCharEscape();
                                        _ch = @:tmpset0 __tmp__._0;
                                        _err = @:tmpset0 __tmp__._1;
                                    };
                                    if (_err != null) {
                                        return { _0 : null, _1 : _err };
                                    };
                                    _fTranslatedChar = true;
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _firstChar = false;
                            continue;
                        };
                    };
                };
            } else if (_ch == ((91 : stdgo.GoInt32))) {
                if ((((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && @:check2r _p._rightChar((0 : stdgo.GoInt)) == ((58 : stdgo.GoInt32)) : Bool) && !_inRange : Bool)) {
                    var _savePos = (@:check2r _p._textpos() : stdgo.GoInt);
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    var _negate = (false : Bool);
                    if (((@:check2r _p._charsRight() > (1 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (94 : stdgo.GoInt32)) : Bool)) {
                        _negate = true;
                        @:check2r _p._moveRight((1 : stdgo.GoInt));
                    };
                    var _nm = (@:check2r _p._scanCapname().__copy__() : stdgo.GoString);
                    if ((!_scanOnly && @:check2r _p._useRE2() : Bool)) {
                        {
                            var _ok = (@:check2r _cc._addNamedASCII(_nm.__copy__(), _negate) : Bool);
                            if (!_ok) {
                                return { _0 : null, _1 : @:check2r _p._getErr((("invalid character class range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                            };
                        };
                    };
                    if ((((@:check2r _p._charsRight() < (2 : stdgo.GoInt) : Bool) || @:check2r _p._moveRightGetChar() != ((58 : stdgo.GoInt32)) : Bool) || (@:check2r _p._moveRightGetChar() != (93 : stdgo.GoInt32)) : Bool)) {
                        @:check2r _p._textto(_savePos);
                    } else if (@:check2r _p._useRE2()) {
                        {
                            _firstChar = false;
                            continue;
                        };
                    };
                };
            };
if (_inRange) {
                _inRange = false;
                if (!_scanOnly) {
                    if (((_ch == ((91 : stdgo.GoInt32)) && !_fTranslatedChar : Bool) && !_firstChar : Bool)) {
                        @:check2r _cc._addChar(_chPrev);
                        var __tmp__ = @:check2r _p._scanCharSet(_caseInsensitive, false), _sub:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            return { _0 : null, _1 : _err };
                        };
                        @:check2r _cc._addSubtraction(_sub);
                        if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (93 : stdgo.GoInt32)) : Bool)) {
                            return { _0 : null, _1 : @:check2r _p._getErr((("a subtraction must be the last element in a character class" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                        };
                    } else {
                        if ((_chPrev > _ch : Bool)) {
                            return { _0 : null, _1 : @:check2r _p._getErr((("[%c-%c] range in reverse order" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_chPrev), stdgo.Go.toInterface(_ch)) };
                        };
                        @:check2r _cc._addRange(_chPrev, _ch);
                    };
                };
            } else if ((((@:check2r _p._charsRight() >= (2 : stdgo.GoInt) : Bool) && @:check2r _p._rightChar((0 : stdgo.GoInt)) == ((45 : stdgo.GoInt32)) : Bool) && (@:check2r _p._rightChar((1 : stdgo.GoInt)) != (93 : stdgo.GoInt32)) : Bool)) {
                _chPrev = _ch;
                _inRange = true;
                @:check2r _p._moveRight((1 : stdgo.GoInt));
            } else if ((((((@:check2r _p._charsRight() >= (1 : stdgo.GoInt) : Bool) && _ch == ((45 : stdgo.GoInt32)) : Bool) && !_fTranslatedChar : Bool) && @:check2r _p._rightChar((0 : stdgo.GoInt)) == ((91 : stdgo.GoInt32)) : Bool) && !_firstChar : Bool)) {
                if (!_scanOnly) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    var __tmp__ = @:check2r _p._scanCharSet(_caseInsensitive, false), _sub:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                    @:check2r _cc._addSubtraction(_sub);
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (93 : stdgo.GoInt32)) : Bool)) {
                        return { _0 : null, _1 : @:check2r _p._getErr((("a subtraction must be the last element in a character class" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    };
                } else {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    @:check2r _p._scanCharSet(_caseInsensitive, true);
                };
            } else {
                if (!_scanOnly) {
                    @:check2r _cc._addRange(_ch, _ch);
                };
            };
            _firstChar = false;
        };
        if (!_closed) {
            return { _0 : null, _1 : @:check2r _p._getErr((("unterminated [] set" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        if ((!_scanOnly && _caseInsensitive : Bool)) {
            @:check2r _cc._addLowercase();
        };
        return { _0 : _cc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanCapname( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _startpos = (@:check2r _p._textpos() : stdgo.GoInt);
        while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            if (!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(@:check2r _p._moveRightGetChar())) {
                @:check2r _p._moveLeft();
                break;
            };
        };
        return (((@:checkr _p ?? throw "null pointer dereference")._pattern.__slice__(_startpos, @:check2r _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanBlank( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (@:check2r _p._useOptionX()) {
            while (true) {
                while (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isspace._isSpace(@:check2r _p._rightChar((0 : stdgo.GoInt))) : Bool)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                };
                if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                    break;
                };
                if (@:check2r _p._rightChar((0 : stdgo.GoInt)) == ((35 : stdgo.GoInt32))) {
                    while (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        @:check2r _p._moveRight((1 : stdgo.GoInt));
                    };
                } else if (((((@:check2r _p._charsRight() >= (3 : stdgo.GoInt) : Bool) && @:check2r _p._rightChar((2 : stdgo.GoInt)) == ((35 : stdgo.GoInt32)) : Bool) && @:check2r _p._rightChar((1 : stdgo.GoInt)) == ((63 : stdgo.GoInt32)) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (40 : stdgo.GoInt32)) : Bool)) {
                    while (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (41 : stdgo.GoInt32)) : Bool)) {
                        @:check2r _p._moveRight((1 : stdgo.GoInt));
                    };
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        return @:check2r _p._getErr((("unterminated comment" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
                    };
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                } else {
                    break;
                };
            };
        } else {
            while (true) {
                if (((((@:check2r _p._charsRight() < (3 : stdgo.GoInt) : Bool) || @:check2r _p._rightChar((2 : stdgo.GoInt)) != ((35 : stdgo.GoInt32)) : Bool) || @:check2r _p._rightChar((1 : stdgo.GoInt)) != ((63 : stdgo.GoInt32)) : Bool) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (40 : stdgo.GoInt32)) : Bool)) {
                    return (null : stdgo.Error);
                };
                while (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (41 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                };
                if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                    return @:check2r _p._getErr((("unterminated comment" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
                };
                @:check2r _p._moveRight((1 : stdgo.GoInt));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _typeFromCode( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _ch:stdgo.GoInt32):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        {
            final __value__ = _ch;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                if (@:check2r _p._useOptionE()) {
                    return (41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                };
                return (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((66 : stdgo.GoInt32))) {
                if (@:check2r _p._useOptionE()) {
                    return (42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                };
                return (17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((65 : stdgo.GoInt32))) {
                return (18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((71 : stdgo.GoInt32))) {
                return (19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((90 : stdgo.GoInt32))) {
                return (20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((122 : stdgo.GoInt32))) {
                return (21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else {
                return (22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseProperty( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (((@:check2r _p._charsRight() >= (1 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (123 : stdgo.GoInt32)) : Bool)) {
            var _ch = ((@:check2r _p._moveRightGetChar() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isvalidunicodecat._isValidUnicodeCat(_ch?.__copy__())) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : @:check2r _p._getErr((("unknown unicode category, script, or property \'%v\'" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_ch)) };
            };
            return { _0 : _ch?.__copy__(), _1 : (null : stdgo.Error) };
        };
        if ((@:check2r _p._charsRight() < (3 : stdgo.GoInt) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : @:check2r _p._getErr((("incomplete \\p{X} character escape" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _ch = (@:check2r _p._moveRightGetChar() : stdgo.GoInt32);
        if (_ch != ((123 : stdgo.GoInt32))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : @:check2r _p._getErr((("malformed \\p{X} character escape" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _startpos = (@:check2r _p._textpos() : stdgo.GoInt);
        while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            _ch = @:check2r _p._moveRightGetChar();
            if (!((_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) || (_ch == (45 : stdgo.GoInt32)) : Bool))) {
                @:check2r _p._moveLeft();
                break;
            };
        };
        var _capname = ((((@:checkr _p ?? throw "null pointer dereference")._pattern.__slice__(_startpos, @:check2r _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || (@:check2r _p._moveRightGetChar() != (125 : stdgo.GoInt32)) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : @:check2r _p._getErr((("incomplete \\p{X} character escape" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        if (!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isvalidunicodecat._isValidUnicodeCat(_capname?.__copy__())) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : @:check2r _p._getErr((("unknown unicode category, script, or property \'%v\'" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capname)) };
        };
        return { _0 : _capname?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanBasicBackslash( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : @:check2r _p._getErr((("illegal \\ at end of pattern" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _angled = (false : Bool);
        var _k = (false : Bool);
        var _close = (0 : stdgo.GoInt32);
        var _backpos = (@:check2r _p._textpos() : stdgo.GoInt);
        var _ch = (@:check2r _p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
        if (((_ch == (107 : stdgo.GoInt32)) && ((!@:check2r _p._useOptionE() || (((@:checkr _p ?? throw "null pointer dereference")._capnames.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            if ((@:check2r _p._charsRight() >= (2 : stdgo.GoInt) : Bool)) {
                @:check2r _p._moveRight((1 : stdgo.GoInt));
                _ch = @:check2r _p._moveRightGetChar();
                if (((_ch == (60 : stdgo.GoInt32)) || ((!@:check2r _p._useOptionE() && (_ch == (39 : stdgo.GoInt32)) : Bool)) : Bool)) {
                    _angled = true;
                    if (_ch == ((39 : stdgo.GoInt32))) {
                        _close = (39 : stdgo.GoInt32);
                    } else {
                        _close = (62 : stdgo.GoInt32);
                    };
                };
            };
            if ((!_angled || (@:check2r _p._charsRight() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : null, _1 : @:check2r _p._getErr((("malformed \\k<...> named back reference" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            _ch = @:check2r _p._rightChar((0 : stdgo.GoInt));
            _k = true;
        } else if (((!@:check2r _p._useOptionE() && (((_ch == (60 : stdgo.GoInt32)) || (_ch == (39 : stdgo.GoInt32)) : Bool)) : Bool) && (@:check2r _p._charsRight() > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _angled = true;
            if (_ch == ((39 : stdgo.GoInt32))) {
                _close = (39 : stdgo.GoInt32);
            } else {
                _close = (62 : stdgo.GoInt32);
            };
            @:check2r _p._moveRight((1 : stdgo.GoInt));
            _ch = @:check2r _p._rightChar((0 : stdgo.GoInt));
        };
        if (((_angled && (_ch >= (48 : stdgo.GoInt32) : Bool) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            var __tmp__ = @:check2r _p._scanDecimal(), _capnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._moveRightGetChar() == _close) : Bool)) {
                if (@:check2r _p._isCaptureSlot(_capnum)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum), _1 : (null : stdgo.Error) };
                };
                return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capnum)) };
            };
        } else if (((!_angled && (_ch >= (49 : stdgo.GoInt32) : Bool) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            var __tmp__ = @:check2r _p._scanDecimal(), _capnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            if (_scanOnly) {
                return { _0 : null, _1 : (null : stdgo.Error) };
            };
            if (@:check2r _p._isCaptureSlot(_capnum)) {
                return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum), _1 : (null : stdgo.Error) };
            };
            if (((_capnum <= (9 : stdgo.GoInt) : Bool) && !@:check2r _p._useOptionE() : Bool)) {
                return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capnum)) };
            };
        } else if (_angled) {
            var _capname = (@:check2r _p._scanCapname()?.__copy__() : stdgo.GoString);
            if (((_capname != ((stdgo.Go.str() : stdgo.GoString)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == _close) : Bool)) {
                if (_scanOnly) {
                    return { _0 : null, _1 : (null : stdgo.Error) };
                };
                if (@:check2r _p._isCaptureName(_capname?.__copy__())) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, @:check2r _p._captureSlotFromName(_capname?.__copy__())), _1 : (null : stdgo.Error) };
                };
                return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group name %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capname)) };
            } else {
                if (_k) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("malformed \\k<...> named back reference" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                };
            };
        };
        @:check2r _p._textto(_backpos);
        var __tmp__ = @:check2r _p._scanCharEscape(), _ch:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if (_scanOnly) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (@:check2r _p._useOptionI()) {
            _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _ch), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanBackslash( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
            return { _0 : null, _1 : @:check2r _p._getErr((("illegal \\ at end of pattern" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        {
            var _ch = (@:check2r _p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
            {
                final __value__ = _ch;
                if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((66 : stdgo.GoInt32)) || __value__ == ((65 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((90 : stdgo.GoInt32)) || __value__ == ((122 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(@:check2r _p._typeFromCode(_ch), (@:checkr _p ?? throw "null pointer dereference")._options), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((119 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if ((@:check2r _p._useOptionE() || @:check2r _p._useRE2() : Bool)) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ecmawordclass.eCMAWordClass()), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_wordclass.wordClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((87 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if ((@:check2r _p._useOptionE() || @:check2r _p._useRE2() : Bool)) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notecmawordclass.notECMAWordClass()), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notwordclass.notWordClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((115 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (@:check2r _p._useOptionE()) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ecmaspaceclass.eCMASpaceClass()), _1 : (null : stdgo.Error) };
                    } else if (@:check2r _p._useRE2()) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_re2spaceclass.rE2SpaceClass()), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_spaceclass.spaceClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((83 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (@:check2r _p._useOptionE()) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notecmaspaceclass.notECMASpaceClass()), _1 : (null : stdgo.Error) };
                    } else if (@:check2r _p._useRE2()) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notre2spaceclass.notRE2SpaceClass()), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notspaceclass.notSpaceClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((100 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if ((@:check2r _p._useOptionE() || @:check2r _p._useRE2() : Bool)) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ecmadigitclass.eCMADigitClass()), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_digitclass.digitClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((68 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if ((@:check2r _p._useOptionE() || @:check2r _p._useRE2() : Bool)) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notecmadigitclass.notECMADigitClass()), _1 : (null : stdgo.Error) };
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_notdigitclass.notDigitClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((112 : stdgo.GoInt32)) || __value__ == ((80 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    var __tmp__ = @:check2r _p._parseProperty(), _prop:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                    var _cc = (stdgo.Go.setRef((new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
                    @:check2r _cc._addCategory(_prop?.__copy__(), (_ch != (112 : stdgo.GoInt32)), @:check2r _p._useOptionI(), (@:checkr _p ?? throw "null pointer dereference")._patternRaw?.__copy__());
                    if (@:check2r _p._useOptionI()) {
                        @:check2r _cc._addLowercase();
                    };
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _cc), _1 : (null : stdgo.Error) };
                } else {
                    return @:check2r _p._scanBasicBackslash(_scanOnly);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanGroupOpen( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _charsRight_3695467:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capnum_3694636:stdgo.GoInt = (0 : stdgo.GoInt);
        var _proceed_3691854:Bool = false;
        var _nt_3690606:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        var _capnum_3696308:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capname_3695054:stdgo.GoString = ("" : stdgo.GoString);
        var _parenPos_3694464:stdgo.GoInt = (0 : stdgo.GoInt);
        var _uncapname_3693642:stdgo.GoString = ("" : stdgo.GoString);
        var _capname_3692382:stdgo.GoString = ("" : stdgo.GoString);
        var _uncapnum_3691835:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_3690593:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _capname_3696326:stdgo.GoString = ("" : stdgo.GoString);
        var _close_3690634:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_3690623:stdgo.Error = (null : stdgo.Error);
        var _rightchar2_3695549:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _capnum_3691818:stdgo.GoInt = (0 : stdgo.GoInt);
        var _start_3690648:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _close_3690634 = (62 : stdgo.GoInt32);
                    _start_3690648 = @:check2r _p._textpos();
                    if (((@:check2r _p._charsRight() == ((0 : stdgo.GoInt)) || @:check2r _p._rightChar((0 : stdgo.GoInt)) != ((63 : stdgo.GoInt32)) : Bool) || (((@:check2r _p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) && (((@:check2r _p._charsRight() > (1 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((1 : stdgo.GoInt)) == (41 : stdgo.GoInt32)) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 3690904i32;
                    } else {
                        _gotoNext = 3691110i32;
                    };
                } else if (__value__ == (3690904i32)) {
                    if ((@:check2r _p._useOptionN() || (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen : Bool)) {
                        _gotoNext = 3690947i32;
                    } else {
                        _gotoNext = 3691032i32;
                    };
                } else if (__value__ == (3690947i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = false;
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options), _1 : (null : stdgo.Error) };
                    _gotoNext = 3691032i32;
                } else if (__value__ == (3691032i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, @:check2r _p._consumeAutocap(), (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3691110i32;
                } else if (__value__ == (3691110i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 3691127i32;
                } else if (__value__ == (3691127i32)) {
                    if (true) {
                        _gotoNext = 3691131i32;
                    } else {
                        _gotoNext = 3697466i32;
                    };
                } else if (__value__ == (3691131i32)) {
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3691158i32;
                    } else {
                        _gotoNext = 3691176i32;
                    };
                } else if (__value__ == (3691158i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3691176i32)) {
                    _gotoNext = 3691176i32;
                    {
                        _ch_3690593 = @:check2r _p._moveRightGetChar();
                        {
                            final __value__ = _ch_3690593;
                            if (__value__ == ((58 : stdgo.GoInt32))) {
                                _gotoNext = 3691217i32;
                            } else if (__value__ == ((61 : stdgo.GoInt32))) {
                                _gotoNext = 3691246i32;
                            } else if (__value__ == ((33 : stdgo.GoInt32))) {
                                _gotoNext = 3691306i32;
                            } else if (__value__ == ((62 : stdgo.GoInt32))) {
                                _gotoNext = 3691366i32;
                            } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                _gotoNext = 3691396i32;
                            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                                _gotoNext = 3691441i32;
                            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                                _gotoNext = 3694410i32;
                            } else if (__value__ == ((80 : stdgo.GoInt32))) {
                                _gotoNext = 3696027i32;
                            } else {
                                _gotoNext = 3697079i32;
                            };
                        };
                    };
                } else if (__value__ == (3691217i32)) {
                    _nt_3690606 = (29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3691246i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options & ((-65 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_3690606 = (30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3691306i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options & ((-65 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_3690606 = (31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3691366i32)) {
                    _nt_3690606 = (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3691396i32)) {
                    _close_3690634 = (39 : stdgo.GoInt32);
                    _gotoNext = 3691441i32;
                } else if (__value__ == (3691441i32)) {
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3691477i32;
                    } else {
                        _gotoNext = 3691512i32;
                    };
                } else if (__value__ == (3691477i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3691512i32)) {
                    _gotoNext = 3691512i32;
                    {
                        _ch_3690593 = @:check2r _p._moveRightGetChar();
                        {
                            final __value__ = _ch_3690593;
                            if (__value__ == ((61 : stdgo.GoInt32))) {
                                _gotoNext = 3691554i32;
                            } else if (__value__ == ((33 : stdgo.GoInt32))) {
                                _gotoNext = 3691671i32;
                            } else {
                                _gotoNext = 3691788i32;
                            };
                        };
                    };
                } else if (__value__ == (3691554i32)) {
                    if (_close_3690634 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 3691585i32;
                    } else {
                        _gotoNext = 3691623i32;
                    };
                } else if (__value__ == (3691585i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3691623i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options | ((64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_3690606 = (30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3691671i32)) {
                    if (_close_3690634 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 3691702i32;
                    } else {
                        _gotoNext = 3691740i32;
                    };
                } else if (__value__ == (3691702i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3691740i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options | ((64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_3690606 = (31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3691788i32)) {
                    @:check2r _p._moveLeft();
                    _capnum_3691818 = (-1 : stdgo.GoInt);
                    _uncapnum_3691835 = (-1 : stdgo.GoInt);
                    _proceed_3691854 = false;
                    if (((_ch_3690593 >= (48 : stdgo.GoInt32) : Bool) && (_ch_3690593 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3691929i32;
                    } else if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_3690593)) {
                        _gotoNext = 3692375i32;
                    } else if (_ch_3690593 == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 3692718i32;
                    } else {
                        _gotoNext = 3692751i32;
                    };
                } else if (__value__ == (3691929i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _capnum_3691818 = @:tmpset0 __tmp__._0;
                            _err_3690623 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3690623 != null) {
                            _gotoNext = 3691981i32;
                        } else {
                            _gotoNext = 3692018i32;
                        };
                    };
                } else if (__value__ == (3691981i32)) {
                    return { _0 : null, _1 : _err_3690623 };
                    _gotoNext = 3692018i32;
                } else if (__value__ == (3692018i32)) {
                    if (!@:check2r _p._isCaptureSlot(_capnum_3691818)) {
                        _gotoNext = 3692046i32;
                    } else {
                        _gotoNext = 3692138i32;
                    };
                } else if (__value__ == (3692046i32)) {
                    _capnum_3691818 = (-1 : stdgo.GoInt);
                    _gotoNext = 3692138i32;
                } else if (__value__ == (3692138i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && !(((@:check2r _p._rightChar((0 : stdgo.GoInt)) == _close_3690634) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 3692215i32;
                    } else {
                        _gotoNext = 3692277i32;
                    };
                } else if (__value__ == (3692215i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3692277i32;
                } else if (__value__ == (3692277i32)) {
                    if (_capnum_3691818 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3692292i32;
                    } else {
                        _gotoNext = 3692938i32;
                    };
                } else if (__value__ == (3692292i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("capture number cannot be zero" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3692938i32;
                } else if (__value__ == (3692375i32)) {
                    _capname_3692382 = @:check2r _p._scanCapname()?.__copy__();
                    if (@:check2r _p._isCaptureName(_capname_3692382?.__copy__())) {
                        _gotoNext = 3692443i32;
                    } else {
                        _gotoNext = 3692560i32;
                    };
                } else if (__value__ == (3692443i32)) {
                    _capnum_3691818 = @:check2r _p._captureSlotFromName(_capname_3692382?.__copy__());
                    _gotoNext = 3692560i32;
                } else if (__value__ == (3692560i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && !(((@:check2r _p._rightChar((0 : stdgo.GoInt)) == _close_3690634) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 3692637i32;
                    } else {
                        _gotoNext = 3692938i32;
                    };
                } else if (__value__ == (3692637i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3692938i32;
                } else if (__value__ == (3692718i32)) {
                    _proceed_3691854 = true;
                    _gotoNext = 3692938i32;
                } else if (__value__ == (3692751i32)) {
                    _gotoNext = 3692751i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 3692938i32;
                } else if (__value__ == (3692938i32)) {
                    if ((((((_capnum_3691818 != (-1 : stdgo.GoInt)) || (_proceed_3691854 == true) : Bool)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3693022i32;
                    } else {
                        _gotoNext = 3694207i32;
                    };
                } else if (__value__ == (3693022i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3693121i32;
                    } else {
                        _gotoNext = 3693184i32;
                    };
                } else if (__value__ == (3693121i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3693184i32;
                } else if (__value__ == (3693184i32)) {
                    _ch_3690593 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (((_ch_3690593 >= (48 : stdgo.GoInt32) : Bool) && (_ch_3690593 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3693235i32;
                    } else if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_3690593)) {
                        _gotoNext = 3693634i32;
                    } else {
                        _gotoNext = 3694013i32;
                    };
                } else if (__value__ == (3693235i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _uncapnum_3691835 = @:tmpset0 __tmp__._0;
                            _err_3690623 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3690623 != null) {
                            _gotoNext = 3693290i32;
                        } else {
                            _gotoNext = 3693330i32;
                        };
                    };
                } else if (__value__ == (3693290i32)) {
                    return { _0 : null, _1 : _err_3690623 };
                    _gotoNext = 3693330i32;
                } else if (__value__ == (3693330i32)) {
                    if (!@:check2r _p._isCaptureSlot(_uncapnum_3691835)) {
                        _gotoNext = 3693360i32;
                    } else {
                        _gotoNext = 3693496i32;
                    };
                } else if (__value__ == (3693360i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_uncapnum_3691835)) };
                    _gotoNext = 3693496i32;
                } else if (__value__ == (3693496i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != _close_3690634) : Bool)) {
                        _gotoNext = 3693545i32;
                    } else {
                        _gotoNext = 3694207i32;
                    };
                } else if (__value__ == (3693545i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3694207i32;
                } else if (__value__ == (3693634i32)) {
                    _uncapname_3693642 = @:check2r _p._scanCapname()?.__copy__();
                    if (!@:check2r _p._isCaptureName(_uncapname_3693642?.__copy__())) {
                        _gotoNext = 3693709i32;
                    } else {
                        _gotoNext = 3693785i32;
                    };
                } else if (__value__ == (3693709i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group name %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_uncapname_3693642)) };
                    _gotoNext = 3693785i32;
                } else if (__value__ == (3693785i32)) {
                    _uncapnum_3691835 = @:check2r _p._captureSlotFromName(_uncapname_3693642?.__copy__());
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != _close_3690634) : Bool)) {
                        _gotoNext = 3693942i32;
                    } else {
                        _gotoNext = 3694207i32;
                    };
                } else if (__value__ == (3693942i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3694207i32;
                } else if (__value__ == (3694013i32)) {
                    _gotoNext = 3694013i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 3694207i32;
                } else if (__value__ == (3694207i32)) {
                    if ((((((_capnum_3691818 != (-1 : stdgo.GoInt)) || (_uncapnum_3691835 != (-1 : stdgo.GoInt)) : Bool)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == _close_3690634) : Bool)) {
                        _gotoNext = 3694298i32;
                    } else {
                        _gotoNext = 3694382i32;
                    };
                } else if (__value__ == (3694298i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum_3691818, _uncapnum_3691835), _1 : (null : stdgo.Error) };
                    _gotoNext = 3694382i32;
                } else if (__value__ == (3694382i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3694410i32)) {
                    _parenPos_3694464 = @:check2r _p._textpos();
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3694513i32;
                    } else {
                        _gotoNext = 3695297i32;
                    };
                } else if (__value__ == (3694513i32)) {
                    _ch_3690593 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (((_ch_3690593 >= (48 : stdgo.GoInt32) : Bool) && (_ch_3690593 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3694625i32;
                    } else if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_3690593)) {
                        _gotoNext = 3695047i32;
                    } else {
                        _gotoNext = 3695297i32;
                    };
                } else if (__value__ == (3694625i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _capnum_3694636 = @:tmpset0 __tmp__._0;
                            _err_3690623 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3690623 != null) {
                            _gotoNext = 3694697i32;
                        } else {
                            _gotoNext = 3694733i32;
                        };
                    };
                } else if (__value__ == (3694697i32)) {
                    return { _0 : null, _1 : _err_3690623 };
                    _gotoNext = 3694733i32;
                } else if (__value__ == (3694733i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._moveRightGetChar() == (41 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3694786i32;
                    } else {
                        _gotoNext = 3694965i32;
                    };
                } else if (__value__ == (3694786i32)) {
                    if (@:check2r _p._isCaptureSlot(_capnum_3694636)) {
                        _gotoNext = 3694821i32;
                    } else {
                        _gotoNext = 3694900i32;
                    };
                } else if (__value__ == (3694821i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum_3694636), _1 : (null : stdgo.Error) };
                    _gotoNext = 3694900i32;
                } else if (__value__ == (3694900i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("(?(%v) ) reference to undefined group" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capnum_3694636)) };
                    _gotoNext = 3694965i32;
                } else if (__value__ == (3694965i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("(?(%v) ) malformed" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capnum_3694636)) };
                    _gotoNext = 3695297i32;
                } else if (__value__ == (3695047i32)) {
                    _capname_3695054 = @:check2r _p._scanCapname()?.__copy__();
                    if (((@:check2r _p._isCaptureName(_capname_3695054?.__copy__()) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == (41 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3695168i32;
                    } else {
                        _gotoNext = 3695297i32;
                    };
                } else if (__value__ == (3695168i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, @:check2r _p._captureSlotFromName(_capname_3695054?.__copy__())), _1 : (null : stdgo.Error) };
                    _gotoNext = 3695297i32;
                } else if (__value__ == (3695297i32)) {
                    _nt_3690606 = (34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    @:check2r _p._textto((_parenPos_3694464 - (1 : stdgo.GoInt) : stdgo.GoInt));
                    (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = true;
                    _charsRight_3695467 = @:check2r _p._charsRight();
                    if (((_charsRight_3695467 >= (3 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((1 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3695543i32;
                    } else {
                        _gotoNext = 3697422i32;
                    };
                } else if (__value__ == (3695543i32)) {
                    _rightchar2_3695549 = @:check2r _p._rightChar((2 : stdgo.GoInt));
                    if (_rightchar2_3695549 == ((35 : stdgo.GoInt32))) {
                        _gotoNext = 3695645i32;
                    } else {
                        _gotoNext = 3695778i32;
                    };
                } else if (__value__ == (3695645i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("alternation conditions cannot be comments" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3695778i32;
                } else if (__value__ == (3695778i32)) {
                    if (_rightchar2_3695549 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 3695800i32;
                    } else {
                        _gotoNext = 3695866i32;
                    };
                } else if (__value__ == (3695800i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("alternation conditions do not capture and cannot be named" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3695866i32;
                } else if (__value__ == (3695866i32)) {
                    if (((_charsRight_3695467 >= (4 : stdgo.GoInt) : Bool) && (((_rightchar2_3695549 == ((60 : stdgo.GoInt32)) && @:check2r _p._rightChar((3 : stdgo.GoInt)) != ((33 : stdgo.GoInt32)) : Bool) && (@:check2r _p._rightChar((3 : stdgo.GoInt)) != (61 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 3695958i32;
                    } else {
                        _gotoNext = 3697422i32;
                    };
                } else if (__value__ == (3695958i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("alternation conditions do not capture and cannot be named" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3697422i32;
                } else if (__value__ == (3696027i32)) {
                    if (@:check2r _p._useRE2()) {
                        _gotoNext = 3696054i32;
                    } else {
                        _gotoNext = 3697064i32;
                    };
                } else if (__value__ == (3696054i32)) {
                    if ((@:check2r _p._charsRight() < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3696116i32;
                    } else {
                        _gotoNext = 3696154i32;
                    };
                } else if (__value__ == (3696116i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3696154i32)) {
                    _ch_3690593 = @:check2r _p._moveRightGetChar();
                    if (_ch_3690593 != ((60 : stdgo.GoInt32))) {
                        _gotoNext = 3696197i32;
                    } else {
                        _gotoNext = 3696235i32;
                    };
                } else if (__value__ == (3696197i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3696235i32)) {
                    _ch_3690593 = @:check2r _p._moveRightGetChar();
                    @:check2r _p._moveLeft();
                    if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_3690593)) {
                        _gotoNext = 3696301i32;
                    } else {
                        _gotoNext = 3696828i32;
                    };
                } else if (__value__ == (3696301i32)) {
                    _capnum_3696308 = (-1 : stdgo.GoInt);
                    _capname_3696326 = @:check2r _p._scanCapname()?.__copy__();
                    if (@:check2r _p._isCaptureName(_capname_3696326?.__copy__())) {
                        _gotoNext = 3696387i32;
                    } else {
                        _gotoNext = 3696504i32;
                    };
                } else if (__value__ == (3696387i32)) {
                    _capnum_3696308 = @:check2r _p._captureSlotFromName(_capname_3696326?.__copy__());
                    _gotoNext = 3696504i32;
                } else if (__value__ == (3696504i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (62 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3696551i32;
                    } else {
                        _gotoNext = 3696646i32;
                    };
                } else if (__value__ == (3696551i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3696646i32;
                } else if (__value__ == (3696646i32)) {
                    if (((_capnum_3696308 != ((-1 : stdgo.GoInt)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == (62 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3696715i32;
                    } else {
                        _gotoNext = 3696796i32;
                    };
                } else if (__value__ == (3696715i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum_3696308, (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = 3696796i32;
                } else if (__value__ == (3696796i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3696828i32)) {
                    _gotoNext = 3696828i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 3697064i32;
                } else if (__value__ == (3697064i32)) {
                    _gotoNext = 3697079i32;
                } else if (__value__ == (3697079i32)) {
                    @:check2r _p._moveLeft();
                    _nt_3690606 = (29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    if ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t != ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        _gotoNext = 3697211i32;
                    } else {
                        _gotoNext = 3697241i32;
                    };
                } else if (__value__ == (3697211i32)) {
                    @:check2r _p._scanOptions();
                    _gotoNext = 3697241i32;
                } else if (__value__ == (3697241i32)) {
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3697264i32;
                    } else {
                        _gotoNext = 3697299i32;
                    };
                } else if (__value__ == (3697264i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3697299i32)) {
                    {
                        _ch_3690593 = @:check2r _p._moveRightGetChar();
                        if (_ch_3690593 == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3697339i32;
                        } else {
                            _gotoNext = 3697370i32;
                        };
                    };
                } else if (__value__ == (3697339i32)) {
                    return { _0 : null, _1 : (null : stdgo.Error) };
                    _gotoNext = 3697370i32;
                } else if (__value__ == (3697370i32)) {
                    if (_ch_3690593 != ((58 : stdgo.GoInt32))) {
                        _gotoNext = 3697383i32;
                    } else {
                        _gotoNext = 3697422i32;
                    };
                } else if (__value__ == (3697383i32)) {
                    _gotoNext = 3697466i32;
                } else if (__value__ == (3697422i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_nt_3690606, (@:checkr _p ?? throw "null pointer dereference")._options), _1 : (null : stdgo.Error) };
                    _gotoNext = 3691127i32;
                } else if (__value__ == (3697466i32)) {
                    _gotoNext = 3697466i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("unrecognized grouping construct: (%v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface((((@:checkr _p ?? throw "null pointer dereference")._pattern.__slice__(_start_3690648, @:check2r _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString))) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _scanDollar( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
            return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, (36 : stdgo.GoInt32)), _1 : (null : stdgo.Error) };
        };
        var _ch = (@:check2r _p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
        var _angled = (false : Bool);
        var _backpos = (@:check2r _p._textpos() : stdgo.GoInt);
        var _lastEndPos = (_backpos : stdgo.GoInt);
        if (((_ch == (123 : stdgo.GoInt32)) && (@:check2r _p._charsRight() > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _angled = true;
            @:check2r _p._moveRight((1 : stdgo.GoInt));
            _ch = @:check2r _p._rightChar((0 : stdgo.GoInt));
        };
        if (((_ch >= (48 : stdgo.GoInt32) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            if ((!_angled && @:check2r _p._useOptionE() : Bool)) {
                var _capnum = (-1 : stdgo.GoInt);
                var _newcapnum = ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
                @:check2r _p._moveRight((1 : stdgo.GoInt));
                if (@:check2r _p._isCaptureSlot(_newcapnum)) {
                    _capnum = _newcapnum;
                    _lastEndPos = @:check2r _p._textpos();
                };
                while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                    _ch = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (((_ch < (48 : stdgo.GoInt32) : Bool) || (_ch > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        break;
                    };
                    var _digit = ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
                    if (((_newcapnum > (214748364 : stdgo.GoInt) : Bool) || (((_newcapnum == (214748364 : stdgo.GoInt)) && (_digit > (7 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        return { _0 : null, _1 : @:check2r _p._getErr((("capture group number out of range" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    };
                    _newcapnum = ((_newcapnum * (10 : stdgo.GoInt) : stdgo.GoInt) + _digit : stdgo.GoInt);
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (@:check2r _p._isCaptureSlot(_newcapnum)) {
                        _capnum = _newcapnum;
                        _lastEndPos = @:check2r _p._textpos();
                    };
                };
                @:check2r _p._textto(_lastEndPos);
                if ((_capnum >= (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum), _1 : (null : stdgo.Error) };
                };
            } else {
                var __tmp__ = @:check2r _p._scanDecimal(), _capnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : null, _1 : _err };
                };
                if ((!_angled || ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && @:check2r _p._moveRightGetChar() == ((125 : stdgo.GoInt32)) : Bool) : Bool)) {
                    if (@:check2r _p._isCaptureSlot(_capnum)) {
                        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum), _1 : (null : stdgo.Error) };
                    };
                };
            };
        } else if ((_angled && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) : Bool)) {
            var _capname = (@:check2r _p._scanCapname()?.__copy__() : stdgo.GoString);
            if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._moveRightGetChar() == (125 : stdgo.GoInt32)) : Bool)) {
                if (@:check2r _p._isCaptureName(_capname?.__copy__())) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, @:check2r _p._captureSlotFromName(_capname?.__copy__())), _1 : (null : stdgo.Error) };
                };
            };
        } else if (!_angled) {
            var _capnum = (1 : stdgo.GoInt);
            {
                final __value__ = _ch;
                if (__value__ == ((36 : stdgo.GoInt32))) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, (36 : stdgo.GoInt32)), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((38 : stdgo.GoInt32))) {
                    _capnum = (0 : stdgo.GoInt);
                } else if (__value__ == ((96 : stdgo.GoInt32))) {
                    _capnum = (-1 : stdgo.GoInt);
                } else if (__value__ == ((39 : stdgo.GoInt32))) {
                    _capnum = (-2 : stdgo.GoInt);
                } else if (__value__ == ((43 : stdgo.GoInt32))) {
                    _capnum = (-3 : stdgo.GoInt);
                } else if (__value__ == ((95 : stdgo.GoInt32))) {
                    _capnum = (-4 : stdgo.GoInt);
                };
            };
            if (_capnum != ((1 : stdgo.GoInt))) {
                @:check2r _p._moveRight((1 : stdgo.GoInt));
                return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum), _1 : (null : stdgo.Error) };
            };
        };
        @:check2r _p._textto(_backpos);
        return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, (36 : stdgo.GoInt32)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanReplacement( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _startpos = __1, _c = __0;
        (@:checkr _p ?? throw "null pointer dereference")._concatenation = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options);
        while (true) {
            _c = @:check2r _p._charsRight();
            if (_c == ((0 : stdgo.GoInt))) {
                break;
            };
            _startpos = @:check2r _p._textpos();
            while (((_c > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (36 : stdgo.GoInt32)) : Bool)) {
                @:check2r _p._moveRight((1 : stdgo.GoInt));
                _c--;
            };
            @:check2r _p._addToConcatenate(_startpos, (@:check2r _p._textpos() - _startpos : stdgo.GoInt), true);
            if ((_c > (0 : stdgo.GoInt) : Bool)) {
                if (@:check2r _p._moveRightGetChar() == ((36 : stdgo.GoInt32))) {
                    var __tmp__ = @:check2r _p._scanDollar(), _n:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                    @:check2r _p._addUnitNode(_n);
                };
                @:check2r _p._addConcatenate();
            };
        };
        return { _0 : (@:checkr _p ?? throw "null pointer dereference")._concatenation, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanRegex( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _err_3686952:stdgo.Error = (null : stdgo.Error);
        var _min_3686034:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3684346:stdgo.Error = (null : stdgo.Error);
        var _err_3684190:stdgo.Error = (null : stdgo.Error);
        var _cc_3684186:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _err_3685658:stdgo.Error = (null : stdgo.Error);
        var _isQuant_3682696:Bool = false;
        var _ch_3682648:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_3687363:stdgo.Error = (null : stdgo.Error);
        var _err_3686246:stdgo.Error = (null : stdgo.Error);
        var _grouper_3684337:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _cchUnquantified_3683816:stdgo.GoInt = (0 : stdgo.GoInt);
        var _endpos_3683518:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3682855:stdgo.Error = (null : stdgo.Error);
        var _wasPrevQuantifier_3682802:Bool = false;
        var _n_3684898:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _err_3684749:stdgo.Error = (null : stdgo.Error);
        var _err_3684684:stdgo.Error = (null : stdgo.Error);
        var _lazy_3686054:Bool = false;
        var _max_3686039:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3684901:stdgo.Error = (null : stdgo.Error);
        var _startpos_3682916:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _ch_3682648 = (64 : stdgo.GoInt32);
                    _isQuant_3682696 = false;
                    @:check2r _p._startGroup(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, (0 : stdgo.GoInt), (-1 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 3682775i32;
                } else if (__value__ == (3682775i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3682798i32;
                    } else {
                        _gotoNext = 3687273i32;
                    };
                } else if (__value__ == (3682798i32)) {
                    _wasPrevQuantifier_3682802 = _isQuant_3682696;
                    _isQuant_3682696 = false;
                    {
                        _err_3682855 = @:check2r _p._scanBlank();
                        if (_err_3682855 != null) {
                            _gotoNext = 3682888i32;
                        } else {
                            _gotoNext = 3682916i32;
                        };
                    };
                } else if (__value__ == (3682888i32)) {
                    return { _0 : null, _1 : _err_3682855 };
                    _gotoNext = 3682916i32;
                } else if (__value__ == (3682916i32)) {
                    _startpos_3682916 = @:check2r _p._textpos();
                    if (@:check2r _p._useOptionX()) {
                        _gotoNext = 3683144i32;
                    } else {
                        _gotoNext = 3683351i32;
                    };
                } else if (__value__ == (3683144i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3683149i32;
                } else if (__value__ == (3683149i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3683172i32;
                    } else {
                        _gotoNext = 3683518i32;
                    };
                } else if (__value__ == (3683172i32)) {
                    _ch_3682648 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (!((!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isstopperx._isStopperX(_ch_3682648) || (((_ch_3682648 == (123 : stdgo.GoInt32)) && !@:check2r _p._isTrueQuantifier() : Bool)) : Bool))) {
                        _gotoNext = 3683299i32;
                    } else {
                        _gotoNext = 3683322i32;
                    };
                } else if (__value__ == (3683299i32)) {
                    _gotoNext = 3683518i32;
                } else if (__value__ == (3683322i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 3683149i32;
                } else if (__value__ == (3683351i32)) {
                    _gotoNext = 3683351i32;
                    var __blank__ = 0i32;
                    _gotoNext = 3683356i32;
                } else if (__value__ == (3683356i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3683379i32;
                    } else {
                        _gotoNext = 3683518i32;
                    };
                } else if (__value__ == (3683379i32)) {
                    _ch_3682648 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (!((!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isspecial._isSpecial(_ch_3682648) || (_ch_3682648 == ((123 : stdgo.GoInt32)) && !@:check2r _p._isTrueQuantifier() : Bool) : Bool))) {
                        _gotoNext = 3683468i32;
                    } else {
                        _gotoNext = 3683491i32;
                    };
                } else if (__value__ == (3683468i32)) {
                    _gotoNext = 3683518i32;
                } else if (__value__ == (3683491i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 3683356i32;
                } else if (__value__ == (3683518i32)) {
                    _endpos_3683518 = @:check2r _p._textpos();
                    @:check2r _p._scanBlank();
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3683583i32;
                    } else {
                        _ch_3682648 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                        if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isspecial._isSpecial(_ch_3682648)) {
                            _gotoNext = 3683672i32;
                        } else {
                            _gotoNext = 3683731i32;
                        };
                    };
                } else if (__value__ == (3683583i32)) {
                    _ch_3682648 = (33 : stdgo.GoInt32);
                    _gotoNext = 3683790i32;
                } else if (__value__ == (3683672i32)) {
                    _isQuant_3682696 = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isquantifier._isQuantifier(_ch_3682648);
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 3683790i32;
                } else if (__value__ == (3683731i32)) {
                    _gotoNext = 3683731i32;
                    _ch_3682648 = (32 : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 3683790i32;
                } else if (__value__ == (3683790i32)) {
                    if ((_startpos_3682916 < _endpos_3683518 : Bool)) {
                        _gotoNext = 3683811i32;
                    } else {
                        _gotoNext = 3684084i32;
                    };
                } else if (__value__ == (3683811i32)) {
                    _cchUnquantified_3683816 = (_endpos_3683518 - _startpos_3682916 : stdgo.GoInt);
                    if (_isQuant_3682696) {
                        _gotoNext = 3683867i32;
                    } else {
                        _gotoNext = 3683899i32;
                    };
                } else if (__value__ == (3683867i32)) {
                    _cchUnquantified_3683816--;
                    _gotoNext = 3683899i32;
                } else if (__value__ == (3683899i32)) {
                    _wasPrevQuantifier_3682802 = false;
                    if ((_cchUnquantified_3683816 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3683952i32;
                    } else {
                        _gotoNext = 3684020i32;
                    };
                } else if (__value__ == (3683952i32)) {
                    @:check2r _p._addToConcatenate(_startpos_3682916, _cchUnquantified_3683816, false);
                    _gotoNext = 3684020i32;
                } else if (__value__ == (3684020i32)) {
                    if (_isQuant_3682696) {
                        _gotoNext = 3684031i32;
                    } else {
                        _gotoNext = 3684084i32;
                    };
                } else if (__value__ == (3684031i32)) {
                    @:check2r _p._addUnitOne(@:check2r _p._charAt((_endpos_3683518 - (1 : stdgo.GoInt) : stdgo.GoInt)));
                    _gotoNext = 3684084i32;
                } else if (__value__ == (3684084i32)) {
                    _gotoNext = 3684084i32;
                    {
                        final __value__ = _ch_3682648;
                        if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 3684098i32;
                        } else if (__value__ == ((32 : stdgo.GoInt32))) {
                            _gotoNext = 3684134i32;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 3684173i32;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 3684301i32;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 3684535i32;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3684594i32;
                        } else if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3684884i32;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 3684998i32;
                        } else if (__value__ == ((36 : stdgo.GoInt32))) {
                            _gotoNext = 3685107i32;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 3685211i32;
                        } else if (__value__ == ((123 : stdgo.GoInt32)) || __value__ == ((42 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((63 : stdgo.GoInt32))) {
                            _gotoNext = 3685382i32;
                        } else {
                            _gotoNext = 3685597i32;
                        };
                    };
                } else if (__value__ == (3684098i32)) {
                    _gotoNext = 3687273i32;
                } else if (__value__ == (3684134i32)) {
                    _gotoNext = 3687250i32;
                } else if (__value__ == (3684173i32)) {
                    {
                        var __tmp__ = @:check2r _p._scanCharSet(@:check2r _p._useOptionI(), false);
                        _cc_3684186 = @:tmpset0 __tmp__._0;
                        _err_3684190 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3684190 != null) {
                        _gotoNext = 3684251i32;
                    } else {
                        _gotoNext = 3684281i32;
                    };
                } else if (__value__ == (3684251i32)) {
                    return { _0 : null, _1 : _err_3684190 };
                    _gotoNext = 3684281i32;
                } else if (__value__ == (3684281i32)) {
                    @:check2r _p._addUnitSet(_cc_3684186);
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3684301i32)) {
                    @:check2r _p._pushOptions();
                    {
                        {
                            var __tmp__ = @:check2r _p._scanGroupOpen();
                            _grouper_3684337 = @:tmpset0 __tmp__._0;
                            _err_3684346 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3684346 != null) {
                            _gotoNext = 3684383i32;
                        } else if ((_grouper_3684337 == null || (_grouper_3684337 : Dynamic).__nil__)) {
                            _gotoNext = 3684433i32;
                        } else {
                            _gotoNext = 3684468i32;
                        };
                    };
                } else if (__value__ == (3684383i32)) {
                    return { _0 : null, _1 : _err_3684346 };
                    _gotoNext = 3684523i32;
                } else if (__value__ == (3684433i32)) {
                    @:check2r _p._popKeepOptions();
                    _gotoNext = 3684523i32;
                } else if (__value__ == (3684468i32)) {
                    _gotoNext = 3684468i32;
                    @:check2r _p._pushGroup();
                    @:check2r _p._startGroup(_grouper_3684337);
                    var __blank__ = 0i32;
                    _gotoNext = 3684523i32;
                } else if (__value__ == (3684523i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3682775i32;
                } else if (__value__ == (3684535i32)) {
                    @:check2r _p._addAlternate();
                    _gotoNext = 3687250i32;
                } else if (__value__ == (3684594i32)) {
                    if (@:check2r _p._emptyStack()) {
                        _gotoNext = 3684625i32;
                    } else {
                        _gotoNext = 3684681i32;
                    };
                } else if (__value__ == (3684625i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("unexpected )" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3684681i32;
                } else if (__value__ == (3684681i32)) {
                    {
                        _err_3684684 = @:check2r _p._addGroup();
                        if (_err_3684684 != null) {
                            _gotoNext = 3684716i32;
                        } else {
                            _gotoNext = 3684746i32;
                        };
                    };
                } else if (__value__ == (3684716i32)) {
                    return { _0 : null, _1 : _err_3684684 };
                    _gotoNext = 3684746i32;
                } else if (__value__ == (3684746i32)) {
                    {
                        _err_3684749 = @:check2r _p._popGroup();
                        if (_err_3684749 != null) {
                            _gotoNext = 3684781i32;
                        } else {
                            _gotoNext = 3684811i32;
                        };
                    };
                } else if (__value__ == (3684781i32)) {
                    return { _0 : null, _1 : _err_3684749 };
                    _gotoNext = 3684811i32;
                } else if (__value__ == (3684811i32)) {
                    @:check2r _p._popOptions();
                    if (((@:checkr _p ?? throw "null pointer dereference")._unit == null || ((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__)) {
                        _gotoNext = 3684847i32;
                    } else {
                        _gotoNext = 3685655i32;
                    };
                } else if (__value__ == (3684847i32)) {
                    _gotoNext = 3687250i32;
                } else if (__value__ == (3684884i32)) {
                    {
                        var __tmp__ = @:check2r _p._scanBackslash(false);
                        _n_3684898 = @:tmpset0 __tmp__._0;
                        _err_3684901 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3684901 != null) {
                        _gotoNext = 3684948i32;
                    } else {
                        _gotoNext = 3684978i32;
                    };
                } else if (__value__ == (3684948i32)) {
                    return { _0 : null, _1 : _err_3684901 };
                    _gotoNext = 3684978i32;
                } else if (__value__ == (3684978i32)) {
                    @:check2r _p._addUnitNode(_n_3684898);
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3684998i32)) {
                    if (@:check2r _p._useOptionM()) {
                        _gotoNext = 3685029i32;
                    } else {
                        _gotoNext = 3685066i32;
                    };
                } else if (__value__ == (3685029i32)) {
                    @:check2r _p._addUnitType((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685066i32)) {
                    _gotoNext = 3685066i32;
                    @:check2r _p._addUnitType((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    var __blank__ = 0i32;
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685107i32)) {
                    if (@:check2r _p._useOptionM()) {
                        _gotoNext = 3685138i32;
                    } else {
                        _gotoNext = 3685175i32;
                    };
                } else if (__value__ == (3685138i32)) {
                    @:check2r _p._addUnitType((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685175i32)) {
                    _gotoNext = 3685175i32;
                    @:check2r _p._addUnitType((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    var __blank__ = 0i32;
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685211i32)) {
                    if (@:check2r _p._useOptionS()) {
                        _gotoNext = 3685242i32;
                    } else if (@:check2r _p._useOptionE()) {
                        _gotoNext = 3685301i32;
                    } else {
                        _gotoNext = 3685346i32;
                    };
                } else if (__value__ == (3685242i32)) {
                    @:check2r _p._addUnitSet(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anyclass.anyClass());
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685301i32)) {
                    @:check2r _p._addUnitSet(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ecmaanyclass.eCMAAnyClass());
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685346i32)) {
                    _gotoNext = 3685346i32;
                    @:check2r _p._addUnitNotone((10 : stdgo.GoInt32));
                    var __blank__ = 0i32;
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685382i32)) {
                    if (((@:checkr _p ?? throw "null pointer dereference")._unit == null || ((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__)) {
                        _gotoNext = 3685427i32;
                    } else {
                        _gotoNext = 3685581i32;
                    };
                } else if (__value__ == (3685427i32)) {
                    if (_wasPrevQuantifier_3682802) {
                        _gotoNext = 3685454i32;
                    } else {
                        _gotoNext = 3685513i32;
                    };
                } else if (__value__ == (3685454i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid nested repetition operator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3685581i32;
                } else if (__value__ == (3685513i32)) {
                    _gotoNext = 3685513i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("missing argument to repetition operator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 3685581i32;
                } else if (__value__ == (3685581i32)) {
                    @:check2r _p._moveLeft();
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685597i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("regexp/syntax: internal error" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3685655i32;
                } else if (__value__ == (3685655i32)) {
                    {
                        _err_3685658 = @:check2r _p._scanBlank();
                        if (_err_3685658 != null) {
                            _gotoNext = 3685691i32;
                        } else {
                            _gotoNext = 3685719i32;
                        };
                    };
                } else if (__value__ == (3685691i32)) {
                    return { _0 : null, _1 : _err_3685658 };
                    _gotoNext = 3685719i32;
                } else if (__value__ == (3685719i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3685741i32;
                    } else {
                        _gotoNext = 3685783i32;
                    };
                } else if (__value__ == (3685741i32)) {
                    _isQuant_3682696 = @:check2r _p._isTrueQuantifier();
                    _gotoNext = 3685783i32;
                } else if (__value__ == (3685783i32)) {
                    if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || !_isQuant_3682696 : Bool)) {
                        _gotoNext = 3685818i32;
                    } else {
                        _gotoNext = 3685954i32;
                    };
                } else if (__value__ == (3685818i32)) {
                    @:check2r _p._addConcatenate();
                    _gotoNext = 3687250i32;
                } else if (__value__ == (3685954i32)) {
                    _ch_3682648 = @:check2r _p._moveRightGetChar();
                    var __blank__ = 0i32;
                    _gotoNext = 3686007i32;
                } else if (__value__ == (3686007i32)) {
                    if (((@:checkr _p ?? throw "null pointer dereference")._unit != null && (((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__ == null || !((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__))) {
                        _gotoNext = 3686025i32;
                    } else {
                        _gotoNext = 3687250i32;
                    };
                } else if (__value__ == (3686025i32)) {
                    _gotoNext = 3686068i32;
                } else if (__value__ == (3686068i32)) {
                    {
                        final __value__ = _ch_3682648;
                        if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 3686083i32;
                        } else if (__value__ == ((63 : stdgo.GoInt32))) {
                            _gotoNext = 3686133i32;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 3686171i32;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 3686221i32;
                        } else {
                            _gotoNext = 3686888i32;
                        };
                    };
                } else if (__value__ == (3686083i32)) {
                    _min_3686034 = (0 : stdgo.GoInt);
                    _max_3686039 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 3686949i32;
                } else if (__value__ == (3686133i32)) {
                    _min_3686034 = (0 : stdgo.GoInt);
                    _max_3686039 = (1 : stdgo.GoInt);
                    _gotoNext = 3686949i32;
                } else if (__value__ == (3686171i32)) {
                    _min_3686034 = (1 : stdgo.GoInt);
                    _max_3686039 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 3686949i32;
                } else if (__value__ == (3686221i32)) {
                    {
                        _gotoNext = 3686235i32;
                    };
                } else if (__value__ == (3686235i32)) {
                    _startpos_3682916 = @:check2r _p._textpos();
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _min_3686034 = @:tmpset0 __tmp__._0;
                            _err_3686246 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3686246 != null) {
                            _gotoNext = 3686331i32;
                        } else {
                            _gotoNext = 3686367i32;
                        };
                    };
                } else if (__value__ == (3686331i32)) {
                    return { _0 : null, _1 : _err_3686246 };
                    _gotoNext = 3686367i32;
                } else if (__value__ == (3686367i32)) {
                    _max_3686039 = _min_3686034;
                    if ((_startpos_3682916 < @:check2r _p._textpos() : Bool)) {
                        _gotoNext = 3686408i32;
                    } else {
                        _gotoNext = 3686705i32;
                    };
                } else if (__value__ == (3686408i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (44 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3686463i32;
                    } else {
                        _gotoNext = 3686705i32;
                    };
                } else if (__value__ == (3686463i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (125 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3686542i32;
                    } else {
                        _gotoNext = 3686586i32;
                    };
                } else if (__value__ == (3686542i32)) {
                    _max_3686039 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 3686705i32;
                } else if (__value__ == (3686586i32)) {
                    _gotoNext = 3686586i32;
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _max_3686039 = @:tmpset0 __tmp__._0;
                            _err_3686246 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_3686246 != null) {
                            _gotoNext = 3686638i32;
                        } else {
                            _gotoNext = 3686705i32;
                        };
                    };
                } else if (__value__ == (3686638i32)) {
                    return { _0 : null, _1 : _err_3686246 };
                    _gotoNext = 3686705i32;
                } else if (__value__ == (3686705i32)) {
                    if (((_startpos_3682916 == (@:check2r _p._textpos()) || @:check2r _p._charsRight() == ((0 : stdgo.GoInt)) : Bool) || (@:check2r _p._moveRightGetChar() != (125 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3686786i32;
                    } else {
                        _gotoNext = 3686949i32;
                    };
                } else if (__value__ == (3686786i32)) {
                    @:check2r _p._addConcatenate();
                    @:check2r _p._textto((_startpos_3682916 - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 3687250i32;
                } else if (__value__ == (3686888i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("regexp/syntax: internal error" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3686949i32;
                } else if (__value__ == (3686949i32)) {
                    {
                        _err_3686952 = @:check2r _p._scanBlank();
                        if (_err_3686952 != null) {
                            _gotoNext = 3686985i32;
                        } else {
                            _gotoNext = 3687016i32;
                        };
                    };
                } else if (__value__ == (3686985i32)) {
                    return { _0 : null, _1 : _err_3686952 };
                    _gotoNext = 3687016i32;
                } else if (__value__ == (3687016i32)) {
                    if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (63 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 3687064i32;
                    } else {
                        _gotoNext = 3687093i32;
                    };
                } else if (__value__ == (3687064i32)) {
                    _lazy_3686054 = false;
                    _gotoNext = 3687139i32;
                } else if (__value__ == (3687093i32)) {
                    _gotoNext = 3687093i32;
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _lazy_3686054 = true;
                    var __blank__ = 0i32;
                    _gotoNext = 3687139i32;
                } else if (__value__ == (3687139i32)) {
                    if ((_min_3686034 > _max_3686039 : Bool)) {
                        _gotoNext = 3687152i32;
                    } else {
                        _gotoNext = 3687210i32;
                    };
                } else if (__value__ == (3687152i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid repeat count" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3687210i32;
                } else if (__value__ == (3687210i32)) {
                    @:check2r _p._addConcatenate3(_lazy_3686054, _min_3686034, _max_3686039);
                    _gotoNext = 3686007i32;
                } else if (__value__ == (3687250i32)) {
                    _gotoNext = 3687250i32;
                    {};
                    _gotoNext = 3682775i32;
                } else if (__value__ == (3687273i32)) {
                    _gotoNext = 3687273i32;
                    {};
                    if (!@:check2r _p._emptyStack()) {
                        _gotoNext = 3687313i32;
                    } else {
                        _gotoNext = 3687360i32;
                    };
                } else if (__value__ == (3687313i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("missing closing )" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 3687360i32;
                } else if (__value__ == (3687360i32)) {
                    {
                        _err_3687363 = @:check2r _p._addGroup();
                        if (_err_3687363 != null) {
                            _gotoNext = 3687395i32;
                        } else {
                            _gotoNext = 3687420i32;
                        };
                    };
                } else if (__value__ == (3687395i32)) {
                    return { _0 : null, _1 : _err_3687363 };
                    _gotoNext = 3687420i32;
                } else if (__value__ == (3687420i32)) {
                    return { _0 : (@:checkr _p ?? throw "null pointer dereference")._unit, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _reset( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _topopts:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._currentPos = (0 : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._autocap = (1 : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = false;
        if ((((@:checkr _p ?? throw "null pointer dereference")._optionsStack.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._optionsStack = ((@:checkr _p ?? throw "null pointer dereference")._optionsStack.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
        };
        (@:checkr _p ?? throw "null pointer dereference")._options = _topopts;
        (@:checkr _p ?? throw "null pointer dereference")._stack = null;
    }
    @:keep
    @:tdfield
    static public function _countCaptures( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _ch:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        @:check2r _p._noteCaptureSlot((0 : stdgo.GoInt), (0 : stdgo.GoInt));
        (@:checkr _p ?? throw "null pointer dereference")._autocap = (1 : stdgo.GoInt);
        while ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            var _pos = (@:check2r _p._textpos() : stdgo.GoInt);
            _ch = @:check2r _p._moveRightGetChar();
            {
                final __value__ = _ch;
                if (__value__ == ((92 : stdgo.GoInt32))) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        @:check2r _p._scanBackslash(true);
                    };
                } else if (__value__ == ((35 : stdgo.GoInt32))) {
                    if (@:check2r _p._useOptionX()) {
                        @:check2r _p._moveLeft();
                        @:check2r _p._scanBlank();
                    };
                } else if (__value__ == ((91 : stdgo.GoInt32))) {
                    @:check2r _p._scanCharSet(false, true);
                } else if (__value__ == ((41 : stdgo.GoInt32))) {
                    if (!@:check2r _p._emptyOptionsStack()) {
                        @:check2r _p._popOptions();
                    };
                } else if (__value__ == ((40 : stdgo.GoInt32))) {
                    if ((((@:check2r _p._charsRight() >= (2 : stdgo.GoInt) : Bool) && @:check2r _p._rightChar((1 : stdgo.GoInt)) == ((35 : stdgo.GoInt32)) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                        @:check2r _p._moveLeft();
                        @:check2r _p._scanBlank();
                    } else {
                        @:check2r _p._pushOptions();
                        if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                            @:check2r _p._moveRight((1 : stdgo.GoInt));
                            if (((@:check2r _p._charsRight() > (1 : stdgo.GoInt) : Bool) && (((@:check2r _p._rightChar((0 : stdgo.GoInt)) == (60 : stdgo.GoInt32)) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (39 : stdgo.GoInt32)) : Bool)) : Bool)) {
                                @:check2r _p._moveRight((1 : stdgo.GoInt));
                                _ch = @:check2r _p._rightChar((0 : stdgo.GoInt));
                                if (((_ch != (48 : stdgo.GoInt32)) && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) : Bool)) {
                                    if (((_ch >= (49 : stdgo.GoInt32) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                                        var __tmp__ = @:check2r _p._scanDecimal(), _dec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        if (_err != null) {
                                            return _err;
                                        };
                                        @:check2r _p._noteCaptureSlot(_dec, _pos);
                                    } else {
                                        @:check2r _p._noteCaptureName(@:check2r _p._scanCapname()?.__copy__(), _pos);
                                    };
                                };
                            } else if (((@:check2r _p._useRE2() && (@:check2r _p._charsRight() > (2 : stdgo.GoInt) : Bool) : Bool) && (((@:check2r _p._rightChar((0 : stdgo.GoInt)) == (80 : stdgo.GoInt32)) && (@:check2r _p._rightChar((1 : stdgo.GoInt)) == (60 : stdgo.GoInt32)) : Bool)) : Bool)) {
                                @:check2r _p._moveRight((2 : stdgo.GoInt));
                                _ch = @:check2r _p._rightChar((0 : stdgo.GoInt));
                                if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch)) {
                                    @:check2r _p._noteCaptureName(@:check2r _p._scanCapname()?.__copy__(), _pos);
                                };
                            } else {
                                @:check2r _p._scanOptions();
                                if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                                    if (@:check2r _p._rightChar((0 : stdgo.GoInt)) == ((41 : stdgo.GoInt32))) {
                                        @:check2r _p._moveRight((1 : stdgo.GoInt));
                                        @:check2r _p._popKeepOptions();
                                    } else if (@:check2r _p._rightChar((0 : stdgo.GoInt)) == ((40 : stdgo.GoInt32))) {
                                        (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = true;
                                        continue;
                                    };
                                };
                            };
                        } else {
                            if ((!@:check2r _p._useOptionN() && !(@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen : Bool)) {
                                @:check2r _p._noteCaptureSlot(@:check2r _p._consumeAutocap(), _pos);
                            };
                        };
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = false;
                };
            };
        };
        @:check2r _p._assignNameSlots();
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _consumeAutocap( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = ((@:checkr _p ?? throw "null pointer dereference")._autocap : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._autocap++;
        return _r;
    }
    @:keep
    @:tdfield
    static public function _assignNameSlots( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._capnames != null) {
            for (__0 => _name in (@:checkr _p ?? throw "null pointer dereference")._capnamelist) {
                while (@:check2r _p._isCaptureSlot((@:checkr _p ?? throw "null pointer dereference")._autocap)) {
                    (@:checkr _p ?? throw "null pointer dereference")._autocap++;
                };
                var _pos = ((@:checkr _p ?? throw "null pointer dereference")._capnames[_name] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                (@:checkr _p ?? throw "null pointer dereference")._capnames[_name] = (@:checkr _p ?? throw "null pointer dereference")._autocap;
                @:check2r _p._noteCaptureSlot((@:checkr _p ?? throw "null pointer dereference")._autocap, _pos);
                (@:checkr _p ?? throw "null pointer dereference")._autocap++;
            };
        };
        if (((@:checkr _p ?? throw "null pointer dereference")._capcount < (@:checkr _p ?? throw "null pointer dereference")._captop : Bool)) {
            (@:checkr _p ?? throw "null pointer dereference")._capnumlist = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _p ?? throw "null pointer dereference")._capcount : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i = (0 : stdgo.GoInt);
            for (_k => _ in (@:checkr _p ?? throw "null pointer dereference")._caps) {
                (@:checkr _p ?? throw "null pointer dereference")._capnumlist[(_i : stdgo.GoInt)] = _k;
                _i++;
            };
            stdgo._internal.sort.Sort_ints.ints((@:checkr _p ?? throw "null pointer dereference")._capnumlist);
        };
        if ((((@:checkr _p ?? throw "null pointer dereference")._capnames != null) || ((@:checkr _p ?? throw "null pointer dereference")._capnumlist != null) : Bool)) {
            var _oldcapnamelist:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _next:stdgo.GoInt = (0 : stdgo.GoInt);
            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((@:checkr _p ?? throw "null pointer dereference")._capnames == null) {
                _oldcapnamelist = (null : stdgo.Slice<stdgo.GoString>);
                (@:checkr _p ?? throw "null pointer dereference")._capnames = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
                (@:checkr _p ?? throw "null pointer dereference")._capnamelist = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                _next = (-1 : stdgo.GoInt);
            } else {
                _oldcapnamelist = (@:checkr _p ?? throw "null pointer dereference")._capnamelist;
                (@:checkr _p ?? throw "null pointer dereference")._capnamelist = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                _next = ((@:checkr _p ?? throw "null pointer dereference")._capnames[_oldcapnamelist[(0 : stdgo.GoInt)]] ?? (0 : stdgo.GoInt));
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _p ?? throw "null pointer dereference")._capcount : Bool)) {
                    var _j = (_i : stdgo.GoInt);
if ((@:checkr _p ?? throw "null pointer dereference")._capnumlist != null) {
                        _j = (@:checkr _p ?? throw "null pointer dereference")._capnumlist[(_i : stdgo.GoInt)];
                    };
if (_next == (_j)) {
                        (@:checkr _p ?? throw "null pointer dereference")._capnamelist = ((@:checkr _p ?? throw "null pointer dereference")._capnamelist.__append__(_oldcapnamelist[(_k : stdgo.GoInt)].__copy__()));
                        _k++;
                        if (_k == ((_oldcapnamelist.length))) {
                            _next = (-1 : stdgo.GoInt);
                        } else {
                            _next = ((@:checkr _p ?? throw "null pointer dereference")._capnames[_oldcapnamelist[(_k : stdgo.GoInt)]] ?? (0 : stdgo.GoInt));
                        };
                    } else {
                        var _str = (stdgo._internal.strconv.Strconv_itoa.itoa(_j).__copy__() : stdgo.GoString);
                        (@:checkr _p ?? throw "null pointer dereference")._capnamelist = ((@:checkr _p ?? throw "null pointer dereference")._capnamelist.__append__(_str.__copy__()));
                        (@:checkr _p ?? throw "null pointer dereference")._capnames[_str] = _j;
                    };
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _noteCaptureName( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _name:stdgo.GoString, _pos:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference")._capnames == null) {
            (@:checkr _p ?? throw "null pointer dereference")._capnames = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        };
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._capnames != null && (@:checkr _p ?? throw "null pointer dereference")._capnames.exists(_name?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._capnames[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                (@:checkr _p ?? throw "null pointer dereference")._capnames[_name] = _pos;
                (@:checkr _p ?? throw "null pointer dereference")._capnamelist = ((@:checkr _p ?? throw "null pointer dereference")._capnamelist.__append__(_name?.__copy__()));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _noteCaptureSlot( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt, _pos:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._caps != null && (@:checkr _p ?? throw "null pointer dereference")._caps.exists(_i) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._caps[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                (@:checkr _p ?? throw "null pointer dereference")._caps[_i] = _pos;
                (@:checkr _p ?? throw "null pointer dereference")._capcount++;
                if (((@:checkr _p ?? throw "null pointer dereference")._captop <= _i : Bool)) {
                    if (_i == ((2147483647 : stdgo.GoInt))) {
                        (@:checkr _p ?? throw "null pointer dereference")._captop = _i;
                    } else {
                        (@:checkr _p ?? throw "null pointer dereference")._captop = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getErr( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _code:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ code : _code, expr : (@:checkr _p ?? throw "null pointer dereference")._patternRaw?.__copy__(), args : _args } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_error.Error)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_error.Error>));
    }
    @:keep
    @:tdfield
    static public function _setPattern( _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _pattern:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._patternRaw = _pattern?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference")._pattern = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (_pattern.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (__0 => _r in _pattern) {
            (@:checkr _p ?? throw "null pointer dereference")._pattern = ((@:checkr _p ?? throw "null pointer dereference")._pattern.__append__(_r));
        };
    }
}
