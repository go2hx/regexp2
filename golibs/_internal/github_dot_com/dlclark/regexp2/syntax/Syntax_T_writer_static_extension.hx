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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_writer_asInterface) class T_writer_static_extension {
    @:keep
    @:tdfield
    static public function _emit2( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp, _opd1:stdgo.GoInt, _opd2:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._counting) {
            (@:checkr _w ?? throw "null pointer dereference")._count = ((@:checkr _w ?? throw "null pointer dereference")._count + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__opcodeBacktracks._opcodeBacktracks(_op)) {
                (@:checkr _w ?? throw "null pointer dereference")._trackcount++;
            };
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._emitted[((@:checkr _w ?? throw "null pointer dereference")._curpos : stdgo.GoInt)] = (_op : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference")._curpos++;
        (@:checkr _w ?? throw "null pointer dereference")._emitted[((@:checkr _w ?? throw "null pointer dereference")._curpos : stdgo.GoInt)] = _opd1;
        (@:checkr _w ?? throw "null pointer dereference")._curpos++;
        (@:checkr _w ?? throw "null pointer dereference")._emitted[((@:checkr _w ?? throw "null pointer dereference")._curpos : stdgo.GoInt)] = _opd2;
        (@:checkr _w ?? throw "null pointer dereference")._curpos++;
    }
    @:keep
    @:tdfield
    static public function _emit1( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp, _opd1:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._counting) {
            (@:checkr _w ?? throw "null pointer dereference")._count = ((@:checkr _w ?? throw "null pointer dereference")._count + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__opcodeBacktracks._opcodeBacktracks(_op)) {
                (@:checkr _w ?? throw "null pointer dereference")._trackcount++;
            };
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._emitted[((@:checkr _w ?? throw "null pointer dereference")._curpos : stdgo.GoInt)] = (_op : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference")._curpos++;
        (@:checkr _w ?? throw "null pointer dereference")._emitted[((@:checkr _w ?? throw "null pointer dereference")._curpos : stdgo.GoInt)] = _opd1;
        (@:checkr _w ?? throw "null pointer dereference")._curpos++;
    }
    @:keep
    @:tdfield
    static public function _emit( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp):Void {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._counting) {
            (@:checkr _w ?? throw "null pointer dereference")._count++;
            if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__opcodeBacktracks._opcodeBacktracks(_op)) {
                (@:checkr _w ?? throw "null pointer dereference")._trackcount++;
            };
            return;
        };
        (@:checkr _w ?? throw "null pointer dereference")._emitted[((@:checkr _w ?? throw "null pointer dereference")._curpos : stdgo.GoInt)] = (_op : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference")._curpos++;
    }
    @:keep
    @:tdfield
    static public function _mapCapnum( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _capnum:stdgo.GoInt):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        if (_capnum == ((-1 : stdgo.GoInt))) {
            return (-1 : stdgo.GoInt);
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._caps != null) {
            return ((@:checkr _w ?? throw "null pointer dereference")._caps[_capnum] ?? (0 : stdgo.GoInt));
        };
        return _capnum;
    }
    @:keep
    @:tdfield
    static public function _stringCode( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _str:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._counting) {
            return (0 : stdgo.GoInt);
        };
        var _hash = ((_str : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._stringhash != null && (@:checkr _w ?? throw "null pointer dereference")._stringhash.exists(_hash?.__copy__()) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._stringhash[_hash?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _i = ((@:checkr _w ?? throw "null pointer dereference")._stringhash.length);
            (@:checkr _w ?? throw "null pointer dereference")._stringhash[_hash] = _i;
            (@:checkr _w ?? throw "null pointer dereference")._stringtable = ((@:checkr _w ?? throw "null pointer dereference")._stringtable.__append__(_str));
        };
        return _i;
    }
    @:keep
    @:tdfield
    static public function _setCode( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _set:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._counting) {
            return (0 : stdgo.GoInt);
        };
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        (@:checkr _set ?? throw "null pointer dereference")._mapHashFill(_buf);
        var _hash = ((@:check2r _buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = ((@:checkr _w ?? throw "null pointer dereference")._sethash != null && (@:checkr _w ?? throw "null pointer dereference")._sethash.exists(_hash?.__copy__()) ? { _0 : (@:checkr _w ?? throw "null pointer dereference")._sethash[_hash?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _i = ((@:checkr _w ?? throw "null pointer dereference")._sethash.length);
            (@:checkr _w ?? throw "null pointer dereference")._sethash[_hash] = _i;
            (@:checkr _w ?? throw "null pointer dereference")._settable = ((@:checkr _w ?? throw "null pointer dereference")._settable.__append__(_set));
        };
        return _i;
    }
    @:keep
    @:tdfield
    static public function _patchJump( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _offset:stdgo.GoInt, _jumpDest:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._emitted[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] = _jumpDest;
    }
    @:keep
    @:tdfield
    static public function _curPos( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        return (@:checkr _w ?? throw "null pointer dereference")._curpos;
    }
    @:keep
    @:tdfield
    static public function _popInt( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>):stdgo.GoInt {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        var _idx = (((@:checkr _w ?? throw "null pointer dereference")._intStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _i = ((@:checkr _w ?? throw "null pointer dereference")._intStack[(_idx : stdgo.GoInt)] : stdgo.GoInt);
        (@:checkr _w ?? throw "null pointer dereference")._intStack = ((@:checkr _w ?? throw "null pointer dereference")._intStack.__slice__(0, _idx) : stdgo.Slice<stdgo.GoInt>);
        return _i;
    }
    @:keep
    @:tdfield
    static public function _emptyStack( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>):Bool {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        return ((@:checkr _w ?? throw "null pointer dereference")._intStack.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _pushInt( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _i:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._intStack = ((@:checkr _w ?? throw "null pointer dereference")._intStack.__append__(_i));
    }
    @:keep
    @:tdfield
    static public function _emitFragment( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _nodetype:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType, _node:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode>, _curIndex:stdgo.GoInt):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        var _bits = ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp);
        if ((_nodetype <= (13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : Bool)) {
            if ((((@:checkr _node ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions))) {
                _bits = (_bits | ((64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp);
            };
            if ((((@:checkr _node ?? throw "null pointer dereference")._options & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions))) {
                _bits = (_bits | ((512 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp);
            };
        };
        var _ntBits = (_bits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType);
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _nodetype;
                    if (__value__ == ((89 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((153 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        break;
                        break;
                    } else if (__value__ == ((88 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if ((_curIndex < (((@:checkr _node ?? throw "null pointer dereference")._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                        };
                        break;
                    } else if (__value__ == ((152 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if ((_curIndex < (((@:checkr _node ?? throw "null pointer dereference")._children.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            var _lbPos = (@:check2r _w._popInt() : stdgo.GoInt);
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                            @:check2r _w._patchJump(_lbPos, @:check2r _w._curPos());
                        } else {
                            {
                                var _i = (0 : stdgo.GoInt);
                                while ((_i < _curIndex : Bool)) {
                                    @:check2r _w._patchJump(@:check2r _w._popInt(), @:check2r _w._curPos());
                                    _i++;
                                };
                            };
                        };
                        break;
                        break;
                    } else if (__value__ == ((97 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            @:check2r _w._emit((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                            @:check2r _w._emit1((37 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._mapCapnum((@:checkr _node ?? throw "null pointer dereference")._m));
                            @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        };
                        break;
                    } else if (__value__ == ((161 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            var _branchpos = (@:check2r _w._popInt() : stdgo.GoInt);
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                            @:check2r _w._patchJump(_branchpos, @:check2r _w._curPos());
                            @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            if ((((@:checkr _node ?? throw "null pointer dereference")._children.length) <= (1 : stdgo.GoInt) : Bool)) {
                                @:check2r _w._patchJump(@:check2r _w._popInt(), @:check2r _w._curPos());
                            };
                        } else if (_curIndex == ((1 : stdgo.GoInt))) {
                            @:check2r _w._patchJump(@:check2r _w._popInt(), @:check2r _w._curPos());
                        };
                        break;
                    } else if (__value__ == ((98 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            @:check2r _w._emit((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            @:check2r _w._emit((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                        };
                        break;
                    } else if (__value__ == ((162 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if (_curIndex == ((0 : stdgo.GoInt))) {
                            @:check2r _w._emit((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        } else if (_curIndex == ((1 : stdgo.GoInt))) {
                            var branchpos = (@:check2r _w._popInt() : stdgo.GoInt);
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                            @:check2r _w._patchJump(branchpos, @:check2r _w._curPos());
                            @:check2r _w._emit((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                            if ((((@:checkr _node ?? throw "null pointer dereference")._children.length) <= (2 : stdgo.GoInt) : Bool)) {
                                @:check2r _w._patchJump(@:check2r _w._popInt(), @:check2r _w._curPos());
                            };
                        } else if (_curIndex == ((2 : stdgo.GoInt))) {
                            @:check2r _w._patchJump(@:check2r _w._popInt(), @:check2r _w._curPos());
                        };
                        break;
                    } else if (__value__ == ((90 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((91 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if ((((@:checkr _node ?? throw "null pointer dereference")._n < (2147483647 : stdgo.GoInt) : Bool) || ((@:checkr _node ?? throw "null pointer dereference")._m > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            if ((@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt))) {
                                @:check2r _w._emit1((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                            } else {
                                @:check2r _w._emit1((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), ((1 : stdgo.GoInt) - (@:checkr _node ?? throw "null pointer dereference")._m : stdgo.GoInt));
                            };
                        } else if ((@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt))) {
                            @:check2r _w._emit((30 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        } else {
                            @:check2r _w._emit((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        };
                        if ((@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt))) {
                            @:check2r _w._pushInt(@:check2r _w._curPos());
                            @:check2r _w._emit1((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                        };
                        @:check2r _w._pushInt(@:check2r _w._curPos());
                        break;
                    } else if (__value__ == ((154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((155 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        var _startJumpPos = (@:check2r _w._curPos() : stdgo.GoInt);
                        var _lazy = ((_nodetype - (154 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType);
                        if ((((@:checkr _node ?? throw "null pointer dereference")._n < (2147483647 : stdgo.GoInt) : Bool) || ((@:checkr _node ?? throw "null pointer dereference")._m > (1 : stdgo.GoInt) : Bool) : Bool)) {
                            if ((@:checkr _node ?? throw "null pointer dereference")._n == ((2147483647 : stdgo.GoInt))) {
                                @:check2r _w._emit2((((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) + _lazy : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._popInt(), (2147483647 : stdgo.GoInt));
                            } else {
                                @:check2r _w._emit2((((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) + _lazy : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._popInt(), ((@:checkr _node ?? throw "null pointer dereference")._n - (@:checkr _node ?? throw "null pointer dereference")._m : stdgo.GoInt));
                            };
                        } else {
                            @:check2r _w._emit1((((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) + _lazy : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._popInt());
                        };
                        if ((@:checkr _node ?? throw "null pointer dereference")._m == ((0 : stdgo.GoInt))) {
                            @:check2r _w._patchJump(@:check2r _w._popInt(), _startJumpPos);
                        };
                        break;
                    } else if (__value__ == ((93 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((157 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        break;
                    } else if (__value__ == ((92 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else if (__value__ == ((156 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit2((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._mapCapnum((@:checkr _node ?? throw "null pointer dereference")._m), @:check2r _w._mapCapnum((@:checkr _node ?? throw "null pointer dereference")._n));
                        break;
                    } else if (__value__ == ((94 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        @:check2r _w._emit((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else if (__value__ == ((158 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else if (__value__ == ((95 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        @:check2r _w._pushInt(@:check2r _w._curPos());
                        @:check2r _w._emit1((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
                        break;
                    } else if (__value__ == ((159 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((35 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        @:check2r _w._patchJump(@:check2r _w._popInt(), @:check2r _w._curPos());
                        @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else if (__value__ == ((96 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else if (__value__ == ((160 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit1((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), ((@:checkr _node ?? throw "null pointer dereference")._ch : stdgo.GoInt));
                        break;
                    } else if (__value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if (((@:checkr _node ?? throw "null pointer dereference")._m > (0 : stdgo.GoInt) : Bool)) {
                            if ((((@:checkr _node ?? throw "null pointer dereference")._t == (3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || ((@:checkr _node ?? throw "null pointer dereference")._t == (6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) : Bool)) {
                                @:check2r _w._emit2(((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) | _bits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), ((@:checkr _node ?? throw "null pointer dereference")._ch : stdgo.GoInt), (@:checkr _node ?? throw "null pointer dereference")._m);
                            } else {
                                @:check2r _w._emit2(((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) | _bits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), ((@:checkr _node ?? throw "null pointer dereference")._ch : stdgo.GoInt), (@:checkr _node ?? throw "null pointer dereference")._m);
                            };
                        };
                        if (((@:checkr _node ?? throw "null pointer dereference")._n > (@:checkr _node ?? throw "null pointer dereference")._m : Bool)) {
                            if ((@:checkr _node ?? throw "null pointer dereference")._n == ((2147483647 : stdgo.GoInt))) {
                                @:check2r _w._emit2((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), ((@:checkr _node ?? throw "null pointer dereference")._ch : stdgo.GoInt), (2147483647 : stdgo.GoInt));
                            } else {
                                @:check2r _w._emit2((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), ((@:checkr _node ?? throw "null pointer dereference")._ch : stdgo.GoInt), ((@:checkr _node ?? throw "null pointer dereference")._n - (@:checkr _node ?? throw "null pointer dereference")._m : stdgo.GoInt));
                            };
                        };
                        break;
                    } else if (__value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        if (((@:checkr _node ?? throw "null pointer dereference")._m > (0 : stdgo.GoInt) : Bool)) {
                            @:check2r _w._emit2(((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) | _bits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._setCode((@:checkr _node ?? throw "null pointer dereference")._set), (@:checkr _node ?? throw "null pointer dereference")._m);
                        };
                        if (((@:checkr _node ?? throw "null pointer dereference")._n > (@:checkr _node ?? throw "null pointer dereference")._m : Bool)) {
                            if ((@:checkr _node ?? throw "null pointer dereference")._n == ((2147483647 : stdgo.GoInt))) {
                                @:check2r _w._emit2((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._setCode((@:checkr _node ?? throw "null pointer dereference")._set), (2147483647 : stdgo.GoInt));
                            } else {
                                @:check2r _w._emit2((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._setCode((@:checkr _node ?? throw "null pointer dereference")._set), ((@:checkr _node ?? throw "null pointer dereference")._n - (@:checkr _node ?? throw "null pointer dereference")._m : stdgo.GoInt));
                            };
                        };
                        break;
                    } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit1((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._stringCode((@:checkr _node ?? throw "null pointer dereference")._str));
                        break;
                    } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit1((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._setCode((@:checkr _node ?? throw "null pointer dereference")._set));
                        break;
                    } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit1((((@:checkr _node ?? throw "null pointer dereference")._t | _ntBits : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), @:check2r _w._mapCapnum((@:checkr _node ?? throw "null pointer dereference")._m));
                        break;
                    } else if (__value__ == ((22 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((14 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((15 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((17 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((41 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((42 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((18 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((19 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((20 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType)) || __value__ == ((21 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                        @:check2r _w._emit(((@:checkr _node ?? throw "null pointer dereference")._t : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
                        break;
                    } else {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected opcode in regular expression generation: %v" : stdgo.GoString), stdgo.Go.toInterface(_nodetype));
                    };
                };
                break;
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _codeFromTree( _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer>, _tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexTree.RegexTree>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Code.Code>; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_writer.T_writer> = _w;
        var __0:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode>), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _capsize = __2, _curChild = __1, _curNode = __0;
        if ((((@:checkr _tree ?? throw "null pointer dereference")._capnumlist == null) || ((@:checkr _tree ?? throw "null pointer dereference")._captop == ((@:checkr _tree ?? throw "null pointer dereference")._capnumlist.length)) : Bool)) {
            _capsize = (@:checkr _tree ?? throw "null pointer dereference")._captop;
            (@:checkr _w ?? throw "null pointer dereference")._caps = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        } else {
            _capsize = ((@:checkr _tree ?? throw "null pointer dereference")._capnumlist.length);
            (@:checkr _w ?? throw "null pointer dereference")._caps = (@:checkr _tree ?? throw "null pointer dereference")._caps;
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _tree ?? throw "null pointer dereference")._capnumlist.length) : Bool)) {
                    (@:checkr _w ?? throw "null pointer dereference")._caps[(@:checkr _tree ?? throw "null pointer dereference")._capnumlist[(_i : stdgo.GoInt)]] = _i;
                    _i++;
                };
            };
        };
        (@:checkr _w ?? throw "null pointer dereference")._counting = true;
        while (true) {
            if (!(@:checkr _w ?? throw "null pointer dereference")._counting) {
                (@:checkr _w ?? throw "null pointer dereference")._emitted = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _w ?? throw "null pointer dereference")._count : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            };
            _curNode = (@:checkr _tree ?? throw "null pointer dereference")._root;
            _curChild = (0 : stdgo.GoInt);
            @:check2r _w._emit1((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp), (0 : stdgo.GoInt));
            while (true) {
                if (((@:checkr _curNode ?? throw "null pointer dereference")._children.length) == ((0 : stdgo.GoInt))) {
                    @:check2r _w._emitFragment((@:checkr _curNode ?? throw "null pointer dereference")._t, _curNode, (0 : stdgo.GoInt));
                } else if ((_curChild < ((@:checkr _curNode ?? throw "null pointer dereference")._children.length) : Bool)) {
                    @:check2r _w._emitFragment(((@:checkr _curNode ?? throw "null pointer dereference")._t | (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType), _curNode, _curChild);
                    _curNode = (@:checkr _curNode ?? throw "null pointer dereference")._children[(_curChild : stdgo.GoInt)];
                    @:check2r _w._pushInt(_curChild);
                    _curChild = (0 : stdgo.GoInt);
                    continue;
                };
                if (@:check2r _w._emptyStack()) {
                    break;
                };
                _curChild = @:check2r _w._popInt();
                _curNode = (@:checkr _curNode ?? throw "null pointer dereference")._next;
                @:check2r _w._emitFragment(((@:checkr _curNode ?? throw "null pointer dereference")._t | (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType), _curNode, _curChild);
                _curChild++;
            };
            @:check2r _w._patchJump((0 : stdgo.GoInt), @:check2r _w._curPos());
            @:check2r _w._emit((40 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp));
            if (!(@:checkr _w ?? throw "null pointer dereference")._counting) {
                break;
            };
            (@:checkr _w ?? throw "null pointer dereference")._counting = false;
        };
        var _fcPrefix = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__getFirstCharsPrefix._getFirstCharsPrefix(_tree);
        var _prefix = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__getPrefix._getPrefix(_tree);
        var _rtl = ((((@:checkr _tree ?? throw "null pointer dereference")._options & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)) : Bool);
        var _bmPrefix:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_BmPrefix.BmPrefix>);
        if ((((_prefix != null && ((_prefix : Dynamic).__nil__ == null || !(_prefix : Dynamic).__nil__)) && (((@:checkr _prefix ?? throw "null pointer dereference").prefixStr.length) > (0 : stdgo.GoInt) : Bool) : Bool) && true : Bool)) {
            if ((((@:checkr _prefix ?? throw "null pointer dereference").prefixStr.length) > (50 : stdgo.GoInt) : Bool)) {
                (@:checkr _prefix ?? throw "null pointer dereference").prefixStr = ((@:checkr _prefix ?? throw "null pointer dereference").prefixStr.__slice__(0, (50 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            };
            _bmPrefix = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__newBmPrefix._newBmPrefix((@:checkr _prefix ?? throw "null pointer dereference").prefixStr, (@:checkr _prefix ?? throw "null pointer dereference").caseInsensitive, _rtl);
        } else {
            _bmPrefix = null;
        };
        return { _0 : (stdgo.Go.setRef(({ codes : (@:checkr _w ?? throw "null pointer dereference")._emitted, strings : (@:checkr _w ?? throw "null pointer dereference")._stringtable, sets : (@:checkr _w ?? throw "null pointer dereference")._settable, trackCount : (@:checkr _w ?? throw "null pointer dereference")._trackcount, caps : (@:checkr _w ?? throw "null pointer dereference")._caps, capsize : _capsize, fcPrefix : _fcPrefix, bmPrefix : _bmPrefix, anchors : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__getAnchors._getAnchors(_tree), rightToLeft : _rtl } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Code.Code)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Code.Code>), _1 : (null : stdgo.Error) };
    }
}
