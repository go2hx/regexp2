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
        var _rightchar2_4190483:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _uncapname_4188576:stdgo.GoString = ("" : stdgo.GoString);
        var _ch_4185527:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _charsRight_4190401:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capname_4189988:stdgo.GoString = ("" : stdgo.GoString);
        var _capnum_4189570:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parenPos_4189398:stdgo.GoInt = (0 : stdgo.GoInt);
        var _close_4185568:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nt_4185540:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        var _capname_4191260:stdgo.GoString = ("" : stdgo.GoString);
        var _proceed_4186788:Bool = false;
        var _capnum_4186752:stdgo.GoInt = (0 : stdgo.GoInt);
        var _start_4185582:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4185557:stdgo.Error = (null : stdgo.Error);
        var _capnum_4191242:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capname_4187316:stdgo.GoString = ("" : stdgo.GoString);
        var _uncapnum_4186769:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _close_4185568 = (62 : stdgo.GoInt32);
                    _start_4185582 = @:check2r _p._textpos();
                    if (((@:check2r _p._charsRight() == ((0 : stdgo.GoInt)) || @:check2r _p._rightChar((0 : stdgo.GoInt)) != ((63 : stdgo.GoInt32)) : Bool) || (((@:check2r _p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) && (((@:check2r _p._charsRight() > (1 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((1 : stdgo.GoInt)) == (41 : stdgo.GoInt32)) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 4185838i32;
                    } else {
                        _gotoNext = 4186044i32;
                    };
                } else if (__value__ == (4185838i32)) {
                    if ((@:check2r _p._useOptionN() || (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen : Bool)) {
                        _gotoNext = 4185881i32;
                    } else {
                        _gotoNext = 4185966i32;
                    };
                } else if (__value__ == (4185881i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = false;
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options), _1 : (null : stdgo.Error) };
                    _gotoNext = 4185966i32;
                } else if (__value__ == (4185966i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, @:check2r _p._consumeAutocap(), (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4186044i32;
                } else if (__value__ == (4186044i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    var __blank__ = 0i32;
                    _gotoNext = 4186061i32;
                } else if (__value__ == (4186061i32)) {
                    if (true) {
                        _gotoNext = 4186065i32;
                    } else {
                        _gotoNext = 4192400i32;
                    };
                } else if (__value__ == (4186065i32)) {
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4186092i32;
                    } else {
                        _gotoNext = 4186110i32;
                    };
                } else if (__value__ == (4186092i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4186110i32)) {
                    _gotoNext = 4186110i32;
                    {
                        _ch_4185527 = @:check2r _p._moveRightGetChar();
                        {
                            final __value__ = _ch_4185527;
                            if (__value__ == ((58 : stdgo.GoInt32))) {
                                _gotoNext = 4186151i32;
                            } else if (__value__ == ((61 : stdgo.GoInt32))) {
                                _gotoNext = 4186180i32;
                            } else if (__value__ == ((33 : stdgo.GoInt32))) {
                                _gotoNext = 4186240i32;
                            } else if (__value__ == ((62 : stdgo.GoInt32))) {
                                _gotoNext = 4186300i32;
                            } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                _gotoNext = 4186330i32;
                            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                                _gotoNext = 4186375i32;
                            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                                _gotoNext = 4189344i32;
                            } else if (__value__ == ((80 : stdgo.GoInt32))) {
                                _gotoNext = 4190961i32;
                            } else {
                                _gotoNext = 4192013i32;
                            };
                        };
                    };
                } else if (__value__ == (4186151i32)) {
                    _nt_4185540 = (29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4186180i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options & ((-65 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_4185540 = (30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4186240i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options & ((-65 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_4185540 = (31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4186300i32)) {
                    _nt_4185540 = (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4186330i32)) {
                    _close_4185568 = (39 : stdgo.GoInt32);
                    _gotoNext = 4186375i32;
                } else if (__value__ == (4186375i32)) {
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4186411i32;
                    } else {
                        _gotoNext = 4186446i32;
                    };
                } else if (__value__ == (4186411i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4186446i32)) {
                    _gotoNext = 4186446i32;
                    {
                        _ch_4185527 = @:check2r _p._moveRightGetChar();
                        {
                            final __value__ = _ch_4185527;
                            if (__value__ == ((61 : stdgo.GoInt32))) {
                                _gotoNext = 4186488i32;
                            } else if (__value__ == ((33 : stdgo.GoInt32))) {
                                _gotoNext = 4186605i32;
                            } else {
                                _gotoNext = 4186722i32;
                            };
                        };
                    };
                } else if (__value__ == (4186488i32)) {
                    if (_close_4185568 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 4186519i32;
                    } else {
                        _gotoNext = 4186557i32;
                    };
                } else if (__value__ == (4186519i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4186557i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options | ((64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_4185540 = (30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4186605i32)) {
                    if (_close_4185568 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 4186636i32;
                    } else {
                        _gotoNext = 4186674i32;
                    };
                } else if (__value__ == (4186636i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4186674i32)) {
                    (@:checkr _p ?? throw "null pointer dereference")._options = ((@:checkr _p ?? throw "null pointer dereference")._options | ((64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_4185540 = (31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4186722i32)) {
                    @:check2r _p._moveLeft();
                    _capnum_4186752 = (-1 : stdgo.GoInt);
                    _uncapnum_4186769 = (-1 : stdgo.GoInt);
                    _proceed_4186788 = false;
                    if (((_ch_4185527 >= (48 : stdgo.GoInt32) : Bool) && (_ch_4185527 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4186863i32;
                    } else if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_4185527)) {
                        _gotoNext = 4187309i32;
                    } else if (_ch_4185527 == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 4187652i32;
                    } else {
                        _gotoNext = 4187685i32;
                    };
                } else if (__value__ == (4186863i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _capnum_4186752 = @:tmpset0 __tmp__._0;
                            _err_4185557 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4185557 != null) {
                            _gotoNext = 4186915i32;
                        } else {
                            _gotoNext = 4186952i32;
                        };
                    };
                } else if (__value__ == (4186915i32)) {
                    return { _0 : null, _1 : _err_4185557 };
                    _gotoNext = 4186952i32;
                } else if (__value__ == (4186952i32)) {
                    if (!@:check2r _p._isCaptureSlot(_capnum_4186752)) {
                        _gotoNext = 4186980i32;
                    } else {
                        _gotoNext = 4187072i32;
                    };
                } else if (__value__ == (4186980i32)) {
                    _capnum_4186752 = (-1 : stdgo.GoInt);
                    _gotoNext = 4187072i32;
                } else if (__value__ == (4187072i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && !(((@:check2r _p._rightChar((0 : stdgo.GoInt)) == _close_4185568) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 4187149i32;
                    } else {
                        _gotoNext = 4187211i32;
                    };
                } else if (__value__ == (4187149i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4187211i32;
                } else if (__value__ == (4187211i32)) {
                    if (_capnum_4186752 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4187226i32;
                    } else {
                        _gotoNext = 4187872i32;
                    };
                } else if (__value__ == (4187226i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("capture number cannot be zero" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4187872i32;
                } else if (__value__ == (4187309i32)) {
                    _capname_4187316 = @:check2r _p._scanCapname()?.__copy__();
                    if (@:check2r _p._isCaptureName(_capname_4187316?.__copy__())) {
                        _gotoNext = 4187377i32;
                    } else {
                        _gotoNext = 4187494i32;
                    };
                } else if (__value__ == (4187377i32)) {
                    _capnum_4186752 = @:check2r _p._captureSlotFromName(_capname_4187316?.__copy__());
                    _gotoNext = 4187494i32;
                } else if (__value__ == (4187494i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && !(((@:check2r _p._rightChar((0 : stdgo.GoInt)) == _close_4185568) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 4187571i32;
                    } else {
                        _gotoNext = 4187872i32;
                    };
                } else if (__value__ == (4187571i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4187872i32;
                } else if (__value__ == (4187652i32)) {
                    _proceed_4186788 = true;
                    _gotoNext = 4187872i32;
                } else if (__value__ == (4187685i32)) {
                    _gotoNext = 4187685i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 4187872i32;
                } else if (__value__ == (4187872i32)) {
                    if ((((((_capnum_4186752 != (-1 : stdgo.GoInt)) || (_proceed_4186788 == true) : Bool)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4187956i32;
                    } else {
                        _gotoNext = 4189141i32;
                    };
                } else if (__value__ == (4187956i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4188055i32;
                    } else {
                        _gotoNext = 4188118i32;
                    };
                } else if (__value__ == (4188055i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4188118i32;
                } else if (__value__ == (4188118i32)) {
                    _ch_4185527 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (((_ch_4185527 >= (48 : stdgo.GoInt32) : Bool) && (_ch_4185527 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4188169i32;
                    } else if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_4185527)) {
                        _gotoNext = 4188568i32;
                    } else {
                        _gotoNext = 4188947i32;
                    };
                } else if (__value__ == (4188169i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _uncapnum_4186769 = @:tmpset0 __tmp__._0;
                            _err_4185557 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4185557 != null) {
                            _gotoNext = 4188224i32;
                        } else {
                            _gotoNext = 4188264i32;
                        };
                    };
                } else if (__value__ == (4188224i32)) {
                    return { _0 : null, _1 : _err_4185557 };
                    _gotoNext = 4188264i32;
                } else if (__value__ == (4188264i32)) {
                    if (!@:check2r _p._isCaptureSlot(_uncapnum_4186769)) {
                        _gotoNext = 4188294i32;
                    } else {
                        _gotoNext = 4188430i32;
                    };
                } else if (__value__ == (4188294i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_uncapnum_4186769)) };
                    _gotoNext = 4188430i32;
                } else if (__value__ == (4188430i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != _close_4185568) : Bool)) {
                        _gotoNext = 4188479i32;
                    } else {
                        _gotoNext = 4189141i32;
                    };
                } else if (__value__ == (4188479i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4189141i32;
                } else if (__value__ == (4188568i32)) {
                    _uncapname_4188576 = @:check2r _p._scanCapname()?.__copy__();
                    if (!@:check2r _p._isCaptureName(_uncapname_4188576?.__copy__())) {
                        _gotoNext = 4188643i32;
                    } else {
                        _gotoNext = 4188719i32;
                    };
                } else if (__value__ == (4188643i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("reference to undefined group name %v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_uncapname_4188576)) };
                    _gotoNext = 4188719i32;
                } else if (__value__ == (4188719i32)) {
                    _uncapnum_4186769 = @:check2r _p._captureSlotFromName(_uncapname_4188576?.__copy__());
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != _close_4185568) : Bool)) {
                        _gotoNext = 4188876i32;
                    } else {
                        _gotoNext = 4189141i32;
                    };
                } else if (__value__ == (4188876i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4189141i32;
                } else if (__value__ == (4188947i32)) {
                    _gotoNext = 4188947i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 4189141i32;
                } else if (__value__ == (4189141i32)) {
                    if ((((((_capnum_4186752 != (-1 : stdgo.GoInt)) || (_uncapnum_4186769 != (-1 : stdgo.GoInt)) : Bool)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == _close_4185568) : Bool)) {
                        _gotoNext = 4189232i32;
                    } else {
                        _gotoNext = 4189316i32;
                    };
                } else if (__value__ == (4189232i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum_4186752, _uncapnum_4186769), _1 : (null : stdgo.Error) };
                    _gotoNext = 4189316i32;
                } else if (__value__ == (4189316i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4189344i32)) {
                    _parenPos_4189398 = @:check2r _p._textpos();
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4189447i32;
                    } else {
                        _gotoNext = 4190231i32;
                    };
                } else if (__value__ == (4189447i32)) {
                    _ch_4185527 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (((_ch_4185527 >= (48 : stdgo.GoInt32) : Bool) && (_ch_4185527 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4189559i32;
                    } else if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_4185527)) {
                        _gotoNext = 4189981i32;
                    } else {
                        _gotoNext = 4190231i32;
                    };
                } else if (__value__ == (4189559i32)) {
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _capnum_4189570 = @:tmpset0 __tmp__._0;
                            _err_4185557 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4185557 != null) {
                            _gotoNext = 4189631i32;
                        } else {
                            _gotoNext = 4189667i32;
                        };
                    };
                } else if (__value__ == (4189631i32)) {
                    return { _0 : null, _1 : _err_4185557 };
                    _gotoNext = 4189667i32;
                } else if (__value__ == (4189667i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._moveRightGetChar() == (41 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4189720i32;
                    } else {
                        _gotoNext = 4189899i32;
                    };
                } else if (__value__ == (4189720i32)) {
                    if (@:check2r _p._isCaptureSlot(_capnum_4189570)) {
                        _gotoNext = 4189755i32;
                    } else {
                        _gotoNext = 4189834i32;
                    };
                } else if (__value__ == (4189755i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum_4189570), _1 : (null : stdgo.Error) };
                    _gotoNext = 4189834i32;
                } else if (__value__ == (4189834i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("(?(%v) ) reference to undefined group" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capnum_4189570)) };
                    _gotoNext = 4189899i32;
                } else if (__value__ == (4189899i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("(?(%v) ) malformed" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface(_capnum_4189570)) };
                    _gotoNext = 4190231i32;
                } else if (__value__ == (4189981i32)) {
                    _capname_4189988 = @:check2r _p._scanCapname()?.__copy__();
                    if (((@:check2r _p._isCaptureName(_capname_4189988?.__copy__()) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == (41 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4190102i32;
                    } else {
                        _gotoNext = 4190231i32;
                    };
                } else if (__value__ == (4190102i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, @:check2r _p._captureSlotFromName(_capname_4189988?.__copy__())), _1 : (null : stdgo.Error) };
                    _gotoNext = 4190231i32;
                } else if (__value__ == (4190231i32)) {
                    _nt_4185540 = (34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    @:check2r _p._textto((_parenPos_4189398 - (1 : stdgo.GoInt) : stdgo.GoInt));
                    (@:checkr _p ?? throw "null pointer dereference")._ignoreNextParen = true;
                    _charsRight_4190401 = @:check2r _p._charsRight();
                    if (((_charsRight_4190401 >= (3 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((1 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4190477i32;
                    } else {
                        _gotoNext = 4192356i32;
                    };
                } else if (__value__ == (4190477i32)) {
                    _rightchar2_4190483 = @:check2r _p._rightChar((2 : stdgo.GoInt));
                    if (_rightchar2_4190483 == ((35 : stdgo.GoInt32))) {
                        _gotoNext = 4190579i32;
                    } else {
                        _gotoNext = 4190712i32;
                    };
                } else if (__value__ == (4190579i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("alternation conditions cannot be comments" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4190712i32;
                } else if (__value__ == (4190712i32)) {
                    if (_rightchar2_4190483 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 4190734i32;
                    } else {
                        _gotoNext = 4190800i32;
                    };
                } else if (__value__ == (4190734i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("alternation conditions do not capture and cannot be named" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4190800i32;
                } else if (__value__ == (4190800i32)) {
                    if (((_charsRight_4190401 >= (4 : stdgo.GoInt) : Bool) && (((_rightchar2_4190483 == ((60 : stdgo.GoInt32)) && @:check2r _p._rightChar((3 : stdgo.GoInt)) != ((33 : stdgo.GoInt32)) : Bool) && (@:check2r _p._rightChar((3 : stdgo.GoInt)) != (61 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 4190892i32;
                    } else {
                        _gotoNext = 4192356i32;
                    };
                } else if (__value__ == (4190892i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("alternation conditions do not capture and cannot be named" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4192356i32;
                } else if (__value__ == (4190961i32)) {
                    if (@:check2r _p._useRE2()) {
                        _gotoNext = 4190988i32;
                    } else {
                        _gotoNext = 4191998i32;
                    };
                } else if (__value__ == (4190988i32)) {
                    if ((@:check2r _p._charsRight() < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4191050i32;
                    } else {
                        _gotoNext = 4191088i32;
                    };
                } else if (__value__ == (4191050i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4191088i32)) {
                    _ch_4185527 = @:check2r _p._moveRightGetChar();
                    if (_ch_4185527 != ((60 : stdgo.GoInt32))) {
                        _gotoNext = 4191131i32;
                    } else {
                        _gotoNext = 4191169i32;
                    };
                } else if (__value__ == (4191131i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4191169i32)) {
                    _ch_4185527 = @:check2r _p._moveRightGetChar();
                    @:check2r _p._moveLeft();
                    if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_4185527)) {
                        _gotoNext = 4191235i32;
                    } else {
                        _gotoNext = 4191762i32;
                    };
                } else if (__value__ == (4191235i32)) {
                    _capnum_4191242 = (-1 : stdgo.GoInt);
                    _capname_4191260 = @:check2r _p._scanCapname()?.__copy__();
                    if (@:check2r _p._isCaptureName(_capname_4191260?.__copy__())) {
                        _gotoNext = 4191321i32;
                    } else {
                        _gotoNext = 4191438i32;
                    };
                } else if (__value__ == (4191321i32)) {
                    _capnum_4191242 = @:check2r _p._captureSlotFromName(_capname_4191260?.__copy__());
                    _gotoNext = 4191438i32;
                } else if (__value__ == (4191438i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (62 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4191485i32;
                    } else {
                        _gotoNext = 4191580i32;
                    };
                } else if (__value__ == (4191485i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4191580i32;
                } else if (__value__ == (4191580i32)) {
                    if (((_capnum_4191242 != ((-1 : stdgo.GoInt)) && (@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (@:check2r _p._moveRightGetChar() == (62 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4191649i32;
                    } else {
                        _gotoNext = 4191730i32;
                    };
                } else if (__value__ == (4191649i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, _capnum_4191242, (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4191730i32;
                } else if (__value__ == (4191730i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4191762i32)) {
                    _gotoNext = 4191762i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 4191998i32;
                } else if (__value__ == (4191998i32)) {
                    _gotoNext = 4192013i32;
                } else if (__value__ == (4192013i32)) {
                    @:check2r _p._moveLeft();
                    _nt_4185540 = (29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    if ((@:checkr (@:checkr _p ?? throw "null pointer dereference")._group ?? throw "null pointer dereference")._t != ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        _gotoNext = 4192145i32;
                    } else {
                        _gotoNext = 4192175i32;
                    };
                } else if (__value__ == (4192145i32)) {
                    @:check2r _p._scanOptions();
                    _gotoNext = 4192175i32;
                } else if (__value__ == (4192175i32)) {
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4192198i32;
                    } else {
                        _gotoNext = 4192233i32;
                    };
                } else if (__value__ == (4192198i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4192233i32)) {
                    {
                        _ch_4185527 = @:check2r _p._moveRightGetChar();
                        if (_ch_4185527 == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4192273i32;
                        } else {
                            _gotoNext = 4192304i32;
                        };
                    };
                } else if (__value__ == (4192273i32)) {
                    return { _0 : null, _1 : (null : stdgo.Error) };
                    _gotoNext = 4192304i32;
                } else if (__value__ == (4192304i32)) {
                    if (_ch_4185527 != ((58 : stdgo.GoInt32))) {
                        _gotoNext = 4192317i32;
                    } else {
                        _gotoNext = 4192356i32;
                    };
                } else if (__value__ == (4192317i32)) {
                    _gotoNext = 4192400i32;
                } else if (__value__ == (4192356i32)) {
                    return { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_nt_4185540, (@:checkr _p ?? throw "null pointer dereference")._options), _1 : (null : stdgo.Error) };
                    _gotoNext = 4186061i32;
                } else if (__value__ == (4192400i32)) {
                    _gotoNext = 4192400i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("unrecognized grouping construct: (%v" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), stdgo.Go.toInterface((((@:checkr _p ?? throw "null pointer dereference")._pattern.__slice__(_start_4185582, @:check2r _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString))) };
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
        var _cc_4179120:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _endpos_4178452:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_4177582:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_4182297:stdgo.Error = (null : stdgo.Error);
        var _lazy_4180988:Bool = false;
        var _max_4180973:stdgo.GoInt = (0 : stdgo.GoInt);
        var _grouper_4179271:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _err_4179618:stdgo.Error = (null : stdgo.Error);
        var _err_4179124:stdgo.Error = (null : stdgo.Error);
        var _startpos_4177850:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4181886:stdgo.Error = (null : stdgo.Error);
        var _n_4179832:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _cchUnquantified_4178750:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4177789:stdgo.Error = (null : stdgo.Error);
        var _wasPrevQuantifier_4177736:Bool = false;
        var _min_4180968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_4180592:stdgo.Error = (null : stdgo.Error);
        var _err_4179835:stdgo.Error = (null : stdgo.Error);
        var _err_4179280:stdgo.Error = (null : stdgo.Error);
        var _err_4181180:stdgo.Error = (null : stdgo.Error);
        var _err_4179683:stdgo.Error = (null : stdgo.Error);
        var _isQuant_4177630:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _ch_4177582 = (64 : stdgo.GoInt32);
                    _isQuant_4177630 = false;
                    @:check2r _p._startGroup(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw "null pointer dereference")._options, (0 : stdgo.GoInt), (-1 : stdgo.GoInt)));
                    var __blank__ = 0i32;
                    _gotoNext = 4177709i32;
                } else if (__value__ == (4177709i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4177732i32;
                    } else {
                        _gotoNext = 4182207i32;
                    };
                } else if (__value__ == (4177732i32)) {
                    _wasPrevQuantifier_4177736 = _isQuant_4177630;
                    _isQuant_4177630 = false;
                    {
                        _err_4177789 = @:check2r _p._scanBlank();
                        if (_err_4177789 != null) {
                            _gotoNext = 4177822i32;
                        } else {
                            _gotoNext = 4177850i32;
                        };
                    };
                } else if (__value__ == (4177822i32)) {
                    return { _0 : null, _1 : _err_4177789 };
                    _gotoNext = 4177850i32;
                } else if (__value__ == (4177850i32)) {
                    _startpos_4177850 = @:check2r _p._textpos();
                    if (@:check2r _p._useOptionX()) {
                        _gotoNext = 4178078i32;
                    } else {
                        _gotoNext = 4178285i32;
                    };
                } else if (__value__ == (4178078i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4178083i32;
                } else if (__value__ == (4178083i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4178106i32;
                    } else {
                        _gotoNext = 4178452i32;
                    };
                } else if (__value__ == (4178106i32)) {
                    _ch_4177582 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (!((!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isstopperx._isStopperX(_ch_4177582) || (((_ch_4177582 == (123 : stdgo.GoInt32)) && !@:check2r _p._isTrueQuantifier() : Bool)) : Bool))) {
                        _gotoNext = 4178233i32;
                    } else {
                        _gotoNext = 4178256i32;
                    };
                } else if (__value__ == (4178233i32)) {
                    _gotoNext = 4178452i32;
                } else if (__value__ == (4178256i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 4178083i32;
                } else if (__value__ == (4178285i32)) {
                    _gotoNext = 4178285i32;
                    var __blank__ = 0i32;
                    _gotoNext = 4178290i32;
                } else if (__value__ == (4178290i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4178313i32;
                    } else {
                        _gotoNext = 4178452i32;
                    };
                } else if (__value__ == (4178313i32)) {
                    _ch_4177582 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                    if (!((!_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isspecial._isSpecial(_ch_4177582) || (_ch_4177582 == ((123 : stdgo.GoInt32)) && !@:check2r _p._isTrueQuantifier() : Bool) : Bool))) {
                        _gotoNext = 4178402i32;
                    } else {
                        _gotoNext = 4178425i32;
                    };
                } else if (__value__ == (4178402i32)) {
                    _gotoNext = 4178452i32;
                } else if (__value__ == (4178425i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 4178290i32;
                } else if (__value__ == (4178452i32)) {
                    _endpos_4178452 = @:check2r _p._textpos();
                    @:check2r _p._scanBlank();
                    if (@:check2r _p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4178517i32;
                    } else {
                        _ch_4177582 = @:check2r _p._rightChar((0 : stdgo.GoInt));
                        if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isspecial._isSpecial(_ch_4177582)) {
                            _gotoNext = 4178606i32;
                        } else {
                            _gotoNext = 4178665i32;
                        };
                    };
                } else if (__value__ == (4178517i32)) {
                    _ch_4177582 = (33 : stdgo.GoInt32);
                    _gotoNext = 4178724i32;
                } else if (__value__ == (4178606i32)) {
                    _isQuant_4177630 = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__isquantifier._isQuantifier(_ch_4177582);
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 4178724i32;
                } else if (__value__ == (4178665i32)) {
                    _gotoNext = 4178665i32;
                    _ch_4177582 = (32 : stdgo.GoInt32);
                    var __blank__ = 0i32;
                    _gotoNext = 4178724i32;
                } else if (__value__ == (4178724i32)) {
                    if ((_startpos_4177850 < _endpos_4178452 : Bool)) {
                        _gotoNext = 4178745i32;
                    } else {
                        _gotoNext = 4179018i32;
                    };
                } else if (__value__ == (4178745i32)) {
                    _cchUnquantified_4178750 = (_endpos_4178452 - _startpos_4177850 : stdgo.GoInt);
                    if (_isQuant_4177630) {
                        _gotoNext = 4178801i32;
                    } else {
                        _gotoNext = 4178833i32;
                    };
                } else if (__value__ == (4178801i32)) {
                    _cchUnquantified_4178750--;
                    _gotoNext = 4178833i32;
                } else if (__value__ == (4178833i32)) {
                    _wasPrevQuantifier_4177736 = false;
                    if ((_cchUnquantified_4178750 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4178886i32;
                    } else {
                        _gotoNext = 4178954i32;
                    };
                } else if (__value__ == (4178886i32)) {
                    @:check2r _p._addToConcatenate(_startpos_4177850, _cchUnquantified_4178750, false);
                    _gotoNext = 4178954i32;
                } else if (__value__ == (4178954i32)) {
                    if (_isQuant_4177630) {
                        _gotoNext = 4178965i32;
                    } else {
                        _gotoNext = 4179018i32;
                    };
                } else if (__value__ == (4178965i32)) {
                    @:check2r _p._addUnitOne(@:check2r _p._charAt((_endpos_4178452 - (1 : stdgo.GoInt) : stdgo.GoInt)));
                    _gotoNext = 4179018i32;
                } else if (__value__ == (4179018i32)) {
                    _gotoNext = 4179018i32;
                    {
                        final __value__ = _ch_4177582;
                        if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 4179032i32;
                        } else if (__value__ == ((32 : stdgo.GoInt32))) {
                            _gotoNext = 4179068i32;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 4179107i32;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 4179235i32;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 4179469i32;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4179528i32;
                        } else if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 4179818i32;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 4179932i32;
                        } else if (__value__ == ((36 : stdgo.GoInt32))) {
                            _gotoNext = 4180041i32;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 4180145i32;
                        } else if (__value__ == ((123 : stdgo.GoInt32)) || __value__ == ((42 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((63 : stdgo.GoInt32))) {
                            _gotoNext = 4180316i32;
                        } else {
                            _gotoNext = 4180531i32;
                        };
                    };
                } else if (__value__ == (4179032i32)) {
                    _gotoNext = 4182207i32;
                } else if (__value__ == (4179068i32)) {
                    _gotoNext = 4182184i32;
                } else if (__value__ == (4179107i32)) {
                    {
                        var __tmp__ = @:check2r _p._scanCharSet(@:check2r _p._useOptionI(), false);
                        _cc_4179120 = @:tmpset0 __tmp__._0;
                        _err_4179124 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4179124 != null) {
                        _gotoNext = 4179185i32;
                    } else {
                        _gotoNext = 4179215i32;
                    };
                } else if (__value__ == (4179185i32)) {
                    return { _0 : null, _1 : _err_4179124 };
                    _gotoNext = 4179215i32;
                } else if (__value__ == (4179215i32)) {
                    @:check2r _p._addUnitSet(_cc_4179120);
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4179235i32)) {
                    @:check2r _p._pushOptions();
                    {
                        {
                            var __tmp__ = @:check2r _p._scanGroupOpen();
                            _grouper_4179271 = @:tmpset0 __tmp__._0;
                            _err_4179280 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4179280 != null) {
                            _gotoNext = 4179317i32;
                        } else if ((_grouper_4179271 == null || (_grouper_4179271 : Dynamic).__nil__)) {
                            _gotoNext = 4179367i32;
                        } else {
                            _gotoNext = 4179402i32;
                        };
                    };
                } else if (__value__ == (4179317i32)) {
                    return { _0 : null, _1 : _err_4179280 };
                    _gotoNext = 4179457i32;
                } else if (__value__ == (4179367i32)) {
                    @:check2r _p._popKeepOptions();
                    _gotoNext = 4179457i32;
                } else if (__value__ == (4179402i32)) {
                    _gotoNext = 4179402i32;
                    @:check2r _p._pushGroup();
                    @:check2r _p._startGroup(_grouper_4179271);
                    var __blank__ = 0i32;
                    _gotoNext = 4179457i32;
                } else if (__value__ == (4179457i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 4177709i32;
                } else if (__value__ == (4179469i32)) {
                    @:check2r _p._addAlternate();
                    _gotoNext = 4182184i32;
                } else if (__value__ == (4179528i32)) {
                    if (@:check2r _p._emptyStack()) {
                        _gotoNext = 4179559i32;
                    } else {
                        _gotoNext = 4179615i32;
                    };
                } else if (__value__ == (4179559i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("unexpected )" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4179615i32;
                } else if (__value__ == (4179615i32)) {
                    {
                        _err_4179618 = @:check2r _p._addGroup();
                        if (_err_4179618 != null) {
                            _gotoNext = 4179650i32;
                        } else {
                            _gotoNext = 4179680i32;
                        };
                    };
                } else if (__value__ == (4179650i32)) {
                    return { _0 : null, _1 : _err_4179618 };
                    _gotoNext = 4179680i32;
                } else if (__value__ == (4179680i32)) {
                    {
                        _err_4179683 = @:check2r _p._popGroup();
                        if (_err_4179683 != null) {
                            _gotoNext = 4179715i32;
                        } else {
                            _gotoNext = 4179745i32;
                        };
                    };
                } else if (__value__ == (4179715i32)) {
                    return { _0 : null, _1 : _err_4179683 };
                    _gotoNext = 4179745i32;
                } else if (__value__ == (4179745i32)) {
                    @:check2r _p._popOptions();
                    if (((@:checkr _p ?? throw "null pointer dereference")._unit == null || ((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__)) {
                        _gotoNext = 4179781i32;
                    } else {
                        _gotoNext = 4180589i32;
                    };
                } else if (__value__ == (4179781i32)) {
                    _gotoNext = 4182184i32;
                } else if (__value__ == (4179818i32)) {
                    {
                        var __tmp__ = @:check2r _p._scanBackslash(false);
                        _n_4179832 = @:tmpset0 __tmp__._0;
                        _err_4179835 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_4179835 != null) {
                        _gotoNext = 4179882i32;
                    } else {
                        _gotoNext = 4179912i32;
                    };
                } else if (__value__ == (4179882i32)) {
                    return { _0 : null, _1 : _err_4179835 };
                    _gotoNext = 4179912i32;
                } else if (__value__ == (4179912i32)) {
                    @:check2r _p._addUnitNode(_n_4179832);
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4179932i32)) {
                    if (@:check2r _p._useOptionM()) {
                        _gotoNext = 4179963i32;
                    } else {
                        _gotoNext = 4180000i32;
                    };
                } else if (__value__ == (4179963i32)) {
                    @:check2r _p._addUnitType((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180000i32)) {
                    _gotoNext = 4180000i32;
                    @:check2r _p._addUnitType((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    var __blank__ = 0i32;
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180041i32)) {
                    if (@:check2r _p._useOptionM()) {
                        _gotoNext = 4180072i32;
                    } else {
                        _gotoNext = 4180109i32;
                    };
                } else if (__value__ == (4180072i32)) {
                    @:check2r _p._addUnitType((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180109i32)) {
                    _gotoNext = 4180109i32;
                    @:check2r _p._addUnitType((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    var __blank__ = 0i32;
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180145i32)) {
                    if (@:check2r _p._useOptionS()) {
                        _gotoNext = 4180176i32;
                    } else if (@:check2r _p._useOptionE()) {
                        _gotoNext = 4180235i32;
                    } else {
                        _gotoNext = 4180280i32;
                    };
                } else if (__value__ == (4180176i32)) {
                    @:check2r _p._addUnitSet(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anyclass.anyClass());
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180235i32)) {
                    @:check2r _p._addUnitSet(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ecmaanyclass.eCMAAnyClass());
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180280i32)) {
                    _gotoNext = 4180280i32;
                    @:check2r _p._addUnitNotone((10 : stdgo.GoInt32));
                    var __blank__ = 0i32;
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180316i32)) {
                    if (((@:checkr _p ?? throw "null pointer dereference")._unit == null || ((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__)) {
                        _gotoNext = 4180361i32;
                    } else {
                        _gotoNext = 4180515i32;
                    };
                } else if (__value__ == (4180361i32)) {
                    if (_wasPrevQuantifier_4177736) {
                        _gotoNext = 4180388i32;
                    } else {
                        _gotoNext = 4180447i32;
                    };
                } else if (__value__ == (4180388i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid nested repetition operator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4180515i32;
                } else if (__value__ == (4180447i32)) {
                    _gotoNext = 4180447i32;
                    return { _0 : null, _1 : @:check2r _p._getErr((("missing argument to repetition operator" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    var __blank__ = 0i32;
                    _gotoNext = 4180515i32;
                } else if (__value__ == (4180515i32)) {
                    @:check2r _p._moveLeft();
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180531i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("regexp/syntax: internal error" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4180589i32;
                } else if (__value__ == (4180589i32)) {
                    {
                        _err_4180592 = @:check2r _p._scanBlank();
                        if (_err_4180592 != null) {
                            _gotoNext = 4180625i32;
                        } else {
                            _gotoNext = 4180653i32;
                        };
                    };
                } else if (__value__ == (4180625i32)) {
                    return { _0 : null, _1 : _err_4180592 };
                    _gotoNext = 4180653i32;
                } else if (__value__ == (4180653i32)) {
                    if ((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4180675i32;
                    } else {
                        _gotoNext = 4180717i32;
                    };
                } else if (__value__ == (4180675i32)) {
                    _isQuant_4177630 = @:check2r _p._isTrueQuantifier();
                    _gotoNext = 4180717i32;
                } else if (__value__ == (4180717i32)) {
                    if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || !_isQuant_4177630 : Bool)) {
                        _gotoNext = 4180752i32;
                    } else {
                        _gotoNext = 4180888i32;
                    };
                } else if (__value__ == (4180752i32)) {
                    @:check2r _p._addConcatenate();
                    _gotoNext = 4182184i32;
                } else if (__value__ == (4180888i32)) {
                    _ch_4177582 = @:check2r _p._moveRightGetChar();
                    var __blank__ = 0i32;
                    _gotoNext = 4180941i32;
                } else if (__value__ == (4180941i32)) {
                    if (((@:checkr _p ?? throw "null pointer dereference")._unit != null && (((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__ == null || !((@:checkr _p ?? throw "null pointer dereference")._unit : Dynamic).__nil__))) {
                        _gotoNext = 4180959i32;
                    } else {
                        _gotoNext = 4182184i32;
                    };
                } else if (__value__ == (4180959i32)) {
                    _gotoNext = 4181002i32;
                } else if (__value__ == (4181002i32)) {
                    {
                        final __value__ = _ch_4177582;
                        if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 4181017i32;
                        } else if (__value__ == ((63 : stdgo.GoInt32))) {
                            _gotoNext = 4181067i32;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 4181105i32;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 4181155i32;
                        } else {
                            _gotoNext = 4181822i32;
                        };
                    };
                } else if (__value__ == (4181017i32)) {
                    _min_4180968 = (0 : stdgo.GoInt);
                    _max_4180973 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 4181883i32;
                } else if (__value__ == (4181067i32)) {
                    _min_4180968 = (0 : stdgo.GoInt);
                    _max_4180973 = (1 : stdgo.GoInt);
                    _gotoNext = 4181883i32;
                } else if (__value__ == (4181105i32)) {
                    _min_4180968 = (1 : stdgo.GoInt);
                    _max_4180973 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 4181883i32;
                } else if (__value__ == (4181155i32)) {
                    {
                        _gotoNext = 4181169i32;
                    };
                } else if (__value__ == (4181169i32)) {
                    _startpos_4177850 = @:check2r _p._textpos();
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _min_4180968 = @:tmpset0 __tmp__._0;
                            _err_4181180 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4181180 != null) {
                            _gotoNext = 4181265i32;
                        } else {
                            _gotoNext = 4181301i32;
                        };
                    };
                } else if (__value__ == (4181265i32)) {
                    return { _0 : null, _1 : _err_4181180 };
                    _gotoNext = 4181301i32;
                } else if (__value__ == (4181301i32)) {
                    _max_4180973 = _min_4180968;
                    if ((_startpos_4177850 < @:check2r _p._textpos() : Bool)) {
                        _gotoNext = 4181342i32;
                    } else {
                        _gotoNext = 4181639i32;
                    };
                } else if (__value__ == (4181342i32)) {
                    if (((@:check2r _p._charsRight() > (0 : stdgo.GoInt) : Bool) && (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (44 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4181397i32;
                    } else {
                        _gotoNext = 4181639i32;
                    };
                } else if (__value__ == (4181397i32)) {
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) == (125 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4181476i32;
                    } else {
                        _gotoNext = 4181520i32;
                    };
                } else if (__value__ == (4181476i32)) {
                    _max_4180973 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 4181639i32;
                } else if (__value__ == (4181520i32)) {
                    _gotoNext = 4181520i32;
                    {
                        {
                            var __tmp__ = @:check2r _p._scanDecimal();
                            _max_4180973 = @:tmpset0 __tmp__._0;
                            _err_4181180 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_4181180 != null) {
                            _gotoNext = 4181572i32;
                        } else {
                            _gotoNext = 4181639i32;
                        };
                    };
                } else if (__value__ == (4181572i32)) {
                    return { _0 : null, _1 : _err_4181180 };
                    _gotoNext = 4181639i32;
                } else if (__value__ == (4181639i32)) {
                    if (((_startpos_4177850 == (@:check2r _p._textpos()) || @:check2r _p._charsRight() == ((0 : stdgo.GoInt)) : Bool) || (@:check2r _p._moveRightGetChar() != (125 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4181720i32;
                    } else {
                        _gotoNext = 4181883i32;
                    };
                } else if (__value__ == (4181720i32)) {
                    @:check2r _p._addConcatenate();
                    @:check2r _p._textto((_startpos_4177850 - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4182184i32;
                } else if (__value__ == (4181822i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("regexp/syntax: internal error" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4181883i32;
                } else if (__value__ == (4181883i32)) {
                    {
                        _err_4181886 = @:check2r _p._scanBlank();
                        if (_err_4181886 != null) {
                            _gotoNext = 4181919i32;
                        } else {
                            _gotoNext = 4181950i32;
                        };
                    };
                } else if (__value__ == (4181919i32)) {
                    return { _0 : null, _1 : _err_4181886 };
                    _gotoNext = 4181950i32;
                } else if (__value__ == (4181950i32)) {
                    if (((@:check2r _p._charsRight() == (0 : stdgo.GoInt)) || (@:check2r _p._rightChar((0 : stdgo.GoInt)) != (63 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4181998i32;
                    } else {
                        _gotoNext = 4182027i32;
                    };
                } else if (__value__ == (4181998i32)) {
                    _lazy_4180988 = false;
                    _gotoNext = 4182073i32;
                } else if (__value__ == (4182027i32)) {
                    _gotoNext = 4182027i32;
                    @:check2r _p._moveRight((1 : stdgo.GoInt));
                    _lazy_4180988 = true;
                    var __blank__ = 0i32;
                    _gotoNext = 4182073i32;
                } else if (__value__ == (4182073i32)) {
                    if ((_min_4180968 > _max_4180973 : Bool)) {
                        _gotoNext = 4182086i32;
                    } else {
                        _gotoNext = 4182144i32;
                    };
                } else if (__value__ == (4182086i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("invalid repeat count" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4182144i32;
                } else if (__value__ == (4182144i32)) {
                    @:check2r _p._addConcatenate3(_lazy_4180988, _min_4180968, _max_4180973);
                    _gotoNext = 4180941i32;
                } else if (__value__ == (4182184i32)) {
                    _gotoNext = 4182184i32;
                    {};
                    _gotoNext = 4177709i32;
                } else if (__value__ == (4182207i32)) {
                    _gotoNext = 4182207i32;
                    {};
                    if (!@:check2r _p._emptyStack()) {
                        _gotoNext = 4182247i32;
                    } else {
                        _gotoNext = 4182294i32;
                    };
                } else if (__value__ == (4182247i32)) {
                    return { _0 : null, _1 : @:check2r _p._getErr((("missing closing )" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4182294i32;
                } else if (__value__ == (4182294i32)) {
                    {
                        _err_4182297 = @:check2r _p._addGroup();
                        if (_err_4182297 != null) {
                            _gotoNext = 4182329i32;
                        } else {
                            _gotoNext = 4182354i32;
                        };
                    };
                } else if (__value__ == (4182329i32)) {
                    return { _0 : null, _1 : _err_4182297 };
                    _gotoNext = 4182354i32;
                } else if (__value__ == (4182354i32)) {
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
