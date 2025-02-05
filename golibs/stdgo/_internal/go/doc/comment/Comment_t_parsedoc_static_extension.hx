package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_parseDoc_asInterface) class T_parseDoc_static_extension {
    @:keep
    @:tdfield
    static public function _parseText( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _out:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>, _s:stdgo.GoString, _autoLink:Bool):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _w:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _wrote = (0 : stdgo.GoInt);
        var _writeUntil = (function(_i:stdgo.GoInt):Void {
            @:check2 _w.writeString((_s.__slice__(_wrote, _i) : stdgo.GoString)?.__copy__());
            _wrote = _i;
        } : stdgo.GoInt -> Void);
        var _flush = (function(_i:stdgo.GoInt):Void {
            _writeUntil(_i);
            if ((@:check2 _w.len() > (0 : stdgo.GoInt) : Bool)) {
                _out = (_out.__append__(stdgo.Go.asInterface(((@:check2 _w.string() : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain))));
                @:check2 _w.reset();
            };
        } : stdgo.GoInt -> Void);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _t = ((_s.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_autoLink) {
                    {
                        var __tmp__ = stdgo._internal.go.doc.comment.Comment__autourl._autoURL(_t?.__copy__()), _url:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _flush(_i);
                            _out = (_out.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(({ auto : true, text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((_url : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), uRL : _url?.__copy__() } : stdgo._internal.go.doc.comment.Comment_link.Link)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))));
                            _i = (_i + ((_url.length)) : stdgo.GoInt);
                            _wrote = _i;
                            continue;
                        };
                    };
                    {
                        var __tmp__ = stdgo._internal.go.doc.comment.Comment__ident._ident(_t?.__copy__()), _id:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference").parser.words != null && (@:checkr _d ?? throw "null pointer dereference").parser.words.exists(_id?.__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference").parser.words[_id?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _url:stdgo.GoString = __tmp__._0, _italics:Bool = __tmp__._1;
                            if (!_italics) {
                                _i = (_i + ((_id.length)) : stdgo.GoInt);
                                continue;
                            };
                            _flush(_i);
                            if (_url == ((stdgo.Go.str() : stdgo.GoString))) {
                                _out = (_out.__append__(stdgo.Go.asInterface((_id : stdgo._internal.go.doc.comment.Comment_italic.Italic))));
                            } else {
                                _out = (_out.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(({ auto : true, text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((_id : stdgo._internal.go.doc.comment.Comment_italic.Italic))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), uRL : _url?.__copy__() } : stdgo._internal.go.doc.comment.Comment_link.Link)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))));
                            };
                            _i = (_i + ((_id.length)) : stdgo.GoInt);
                            _wrote = _i;
                            continue;
                        };
                    };
                };
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_t?.__copy__(), ("``" : stdgo.GoString))) {
                            if ((((_t.length) >= (3 : stdgo.GoInt) : Bool) && (_t[(2 : stdgo.GoInt)] == (96 : stdgo.GoUInt8)) : Bool)) {
                                _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                                while (((_i < (_t.length) : Bool) && (_t[(_i : stdgo.GoInt)] == (96 : stdgo.GoUInt8)) : Bool)) {
                                    _i++;
                                };
                                break;
                            };
                            _writeUntil(_i);
                            @:check2 _w.writeRune((8220 : stdgo.GoInt32));
                            _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _wrote = _i;
                            break;
                        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_t?.__copy__(), ("\'\'" : stdgo.GoString))) {
                            _writeUntil(_i);
                            @:check2 _w.writeRune((8221 : stdgo.GoInt32));
                            _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _wrote = _i;
                            break;
                        } else {
                            _i++;
                        };
                        break;
                    };
                };
            };
        };
        _flush((_s.length));
        return _out;
    }
    @:keep
    @:tdfield
    static public function _docLink( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _text:stdgo.GoString, _before:stdgo.GoString, _after:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _link = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>), _ok = false;
        if (_before != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_before?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            if ((((!stdgo._internal.unicode.Unicode_ispunct.isPunct(_r) && _r != ((32 : stdgo.GoInt32)) : Bool) && _r != ((9 : stdgo.GoInt32)) : Bool) && (_r != (10 : stdgo.GoInt32)) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                    _link = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        if (_after != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_after?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            if ((((!stdgo._internal.unicode.Unicode_ispunct.isPunct(_r) && _r != ((32 : stdgo.GoInt32)) : Bool) && _r != ((9 : stdgo.GoInt32)) : Bool) && (_r != (10 : stdgo.GoInt32)) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                    _link = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _text = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_text?.__copy__(), ("*" : stdgo.GoString))?.__copy__();
        var __tmp__ = stdgo._internal.go.doc.comment.Comment__splitdocname._splitDocName(_text?.__copy__()), _pkg:stdgo.GoString = __tmp__._0, _name:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        var _recv:stdgo.GoString = ("" : stdgo.GoString);
        if (_ok) {
            {
                var __tmp__ = stdgo._internal.go.doc.comment.Comment__splitdocname._splitDocName(_pkg?.__copy__());
                _pkg = @:tmpset0 __tmp__._0?.__copy__();
                _recv = @:tmpset0 __tmp__._1?.__copy__();
            };
        };
        if (_pkg != ((stdgo.Go.str() : stdgo.GoString))) {
            {
                {
                    var __tmp__ = @:check2r _d._lookupPkg(_pkg?.__copy__());
                    _pkg = @:tmpset0 __tmp__._0?.__copy__();
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                        _link = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        } else {
            {
                _ok = (@:checkr _d ?? throw "null pointer dereference")._lookupSym(_recv?.__copy__(), _name?.__copy__());
                if (!_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : null, _1 : false };
                        _link = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        _link = (stdgo.Go.setRef(({ importPath : _pkg?.__copy__(), recv : _recv?.__copy__(), name : _name?.__copy__() } : stdgo._internal.go.doc.comment.Comment_doclink.DocLink)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>; var _1 : Bool; } = { _0 : _link, _1 : true };
            _link = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseLinkedText( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _text:stdgo.GoString):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _out:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>);
        var _wrote = (0 : stdgo.GoInt);
        var _flush = (function(_i:stdgo.GoInt):Void {
            if ((_wrote < _i : Bool)) {
                _out = @:check2r _d._parseText(_out, (_text.__slice__(_wrote, _i) : stdgo.GoString)?.__copy__(), true);
                _wrote = _i;
            };
        } : stdgo.GoInt -> Void);
        var _start = (-1 : stdgo.GoInt);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_text.length) : Bool)) {
                var _c = (_text[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_c == (10 : stdgo.GoUInt8)) || (_c == (9 : stdgo.GoUInt8)) : Bool)) {
                    _c = (32 : stdgo.GoUInt8);
                };
{
                    final __value__ = _c;
                    if (__value__ == ((91 : stdgo.GoUInt8))) {
                        _start = _i;
                    } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                            {
                                var __tmp__ = ((@:checkr _d ?? throw "null pointer dereference")._links != null && (@:checkr _d ?? throw "null pointer dereference")._links.exists((_buf : stdgo.GoString).__copy__()) ? { _0 : (@:checkr _d ?? throw "null pointer dereference")._links[(_buf : stdgo.GoString).__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>), _1 : false }), _def:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (_ok) {
                                    (@:checkr _def ?? throw "null pointer dereference").used = true;
                                    _flush(_start);
                                    _out = (_out.__append__(stdgo.Go.asInterface((stdgo.Go.setRef(({ text : @:check2r _d._parseText((null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), (_text.__slice__((_start + (1 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), false), uRL : (@:checkr _def ?? throw "null pointer dereference").uRL.__copy__() } : stdgo._internal.go.doc.comment.Comment_link.Link)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))));
                                    _wrote = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                } else {
                                    var __tmp__ = @:check2r _d._docLink((_text.__slice__((_start + (1 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), (_text.__slice__(0, _start) : stdgo.GoString).__copy__(), (_text.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__()), _link:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        _flush(_start);
                                        (@:checkr _link ?? throw "null pointer dereference").text = @:check2r _d._parseText((null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>), (_text.__slice__((_start + (1 : stdgo.GoInt) : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), false);
                                        _out = (_out.__append__(stdgo.Go.asInterface(_link)));
                                        _wrote = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                    };
                                };
                            };
                        };
                        _start = (-1 : stdgo.GoInt);
                        _buf = (_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
if (((_start >= (0 : stdgo.GoInt) : Bool) && (_i != _start) : Bool)) {
                    _buf = (_buf.__append__(_c));
                };
                _i++;
            };
        };
        _flush((_text.length));
        return _out;
    }
    @:keep
    @:tdfield
    static public function _list( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _lines:stdgo.Slice<stdgo.GoString>, _forceBlankBefore:Bool):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var __tmp__ = stdgo._internal.go.doc.comment.Comment__listmarker._listMarker(_lines[(0 : stdgo.GoInt)]?.__copy__()), _num:stdgo.GoString = __tmp__._0, __1:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
        var __0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = (stdgo.Go.setRef(({ forceBlankBefore : _forceBlankBefore } : stdgo._internal.go.doc.comment.Comment_list.List)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>), __1:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>), __2:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
var _text = __2, _item = __1, _list = __0;
        var _flush = (function():Void {
            if ((_item != null && ((_item : Dynamic).__nil__ == null || !(_item : Dynamic).__nil__))) {
                {
                    var _para = (@:check2r _d._paragraph(_text) : stdgo._internal.go.doc.comment.Comment_block.Block);
                    if (_para != null) {
                        (@:checkr _item ?? throw "null pointer dereference").content = ((@:checkr _item ?? throw "null pointer dereference").content.__append__(_para));
                    };
                };
            };
            _text = (null : stdgo.Slice<stdgo.GoString>);
        } : () -> Void);
        for (__3 => _line in _lines) {
            {
                var __tmp__ = stdgo._internal.go.doc.comment.Comment__listmarker._listMarker(_line?.__copy__()), _n:stdgo.GoString = __tmp__._0, _after:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if ((_ok && ((_n != (stdgo.Go.str() : stdgo.GoString)) == (_num != (stdgo.Go.str() : stdgo.GoString))) : Bool)) {
                    _flush();
                    _item = (stdgo.Go.setRef(({ number : _n?.__copy__() } : stdgo._internal.go.doc.comment.Comment_listitem.ListItem)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_listitem.ListItem>);
                    (@:checkr _list ?? throw "null pointer dereference").items = ((@:checkr _list ?? throw "null pointer dereference").items.__append__(_item));
                    _line = _after?.__copy__();
                };
            };
            _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
            if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _list ?? throw "null pointer dereference").forceBlankBetween = true;
                _flush();
                continue;
            };
            _text = (_text.__append__(stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__()));
        };
        _flush();
        return _list;
    }
    @:keep
    @:tdfield
    static public function _paragraph( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _lines:stdgo.Slice<stdgo.GoString>):stdgo._internal.go.doc.comment.Comment_block.Block {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _def_3648320:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
        var _i_3648327_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_3648230:Bool = false;
        var _def_3648225:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef> = (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
        var _line_3648201:stdgo.GoString = ("" : stdgo.GoString);
        var _i_3648209_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _defs_3648177:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((0i32 : stdgo.GoInt) < (_lines.length)) {
                        _gotoNext = 3648309i32;
                    } else {
                        _gotoNext = 3648313i32;
                    };
                } else if (__value__ == (3648221i32)) {
                    _line_3648201 = _lines[(_i_3648209_0 : stdgo.GoInt)]?.__copy__();
                    {
                        var __tmp__ = stdgo._internal.go.doc.comment.Comment__parselink._parseLink(_line_3648201?.__copy__());
                        _def_3648225 = @:tmpset0 __tmp__._0;
                        _ok_3648230 = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok_3648230) {
                        _gotoNext = 3648261i32;
                    } else {
                        _gotoNext = 3648284i32;
                    };
                } else if (__value__ == (3648261i32)) {
                    _gotoNext = 3648451i32;
                } else if (__value__ == (3648284i32)) {
                    _defs_3648177 = (_defs_3648177.__append__(_def_3648225));
                    _i_3648209_0++;
                    _gotoNext = 3648310i32;
                } else if (__value__ == (3648309i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _lines[(0i32 : stdgo.GoInt)]?.__copy__();
                        _i_3648209_0 = __tmp__0;
                        _line_3648201 = __tmp__1;
                    };
                    _gotoNext = 3648310i32;
                } else if (__value__ == (3648310i32)) {
                    if (_i_3648209_0 < (_lines.length)) {
                        _gotoNext = 3648221i32;
                    } else {
                        _gotoNext = 3648313i32;
                    };
                } else if (__value__ == (3648313i32)) {
                    if ((0i32 : stdgo.GoInt) < (_defs_3648177.length)) {
                        _gotoNext = 3648436i32;
                    } else {
                        _gotoNext = 3648440i32;
                    };
                } else if (__value__ == (3648317i32)) {
                    _i_3648327_0++;
                    _gotoNext = 3648437i32;
                } else if (__value__ == (3648338i32)) {
                    _def_3648320 = _defs_3648177[(_i_3648327_0 : stdgo.GoInt)];
                    (@:checkr _d ?? throw "null pointer dereference").doc.links = ((@:checkr _d ?? throw "null pointer dereference").doc.links.__append__(_def_3648320));
                    if ((((@:checkr _d ?? throw "null pointer dereference")._links[(@:checkr _def_3648320 ?? throw "null pointer dereference").text] ?? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>)) == null || ((@:checkr _d ?? throw "null pointer dereference")._links[(@:checkr _def_3648320 ?? throw "null pointer dereference").text] ?? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>) : Dynamic).__nil__)) {
                        _gotoNext = 3648403i32;
                    } else {
                        _gotoNext = 3648317i32;
                    };
                } else if (__value__ == (3648403i32)) {
                    (@:checkr _d ?? throw "null pointer dereference")._links[(@:checkr _def_3648320 ?? throw "null pointer dereference").text] = _def_3648320;
                    _gotoNext = 3648317i32;
                } else if (__value__ == (3648436i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _defs_3648177[(0i32 : stdgo.GoInt)];
                        _i_3648327_0 = __tmp__0;
                        _def_3648320 = __tmp__1;
                    };
                    _gotoNext = 3648437i32;
                } else if (__value__ == (3648437i32)) {
                    if (_i_3648327_0 < (_defs_3648177.length)) {
                        _gotoNext = 3648338i32;
                    } else {
                        _gotoNext = 3648440i32;
                    };
                } else if (__value__ == (3648440i32)) {
                    return (null : stdgo._internal.go.doc.comment.Comment_block.Block);
                    _gotoNext = 3648451i32;
                } else if (__value__ == (3648451i32)) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((stdgo._internal.strings.Strings_join.join(_lines, ("\n" : stdgo.GoString)) : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) } : stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _code( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _lines:stdgo.Slice<stdgo.GoString>):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _body = stdgo._internal.go.doc.comment.Comment__unindent._unindent(_lines);
        _body = (_body.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()));
        return (stdgo.Go.setRef(({ text : stdgo._internal.strings.Strings_join.join(_body, ("\n" : stdgo.GoString))?.__copy__() } : stdgo._internal.go.doc.comment.Comment_code.Code)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>);
    }
    @:keep
    @:tdfield
    static public function _heading( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _line:stdgo.GoString):stdgo._internal.go.doc.comment.Comment_block.Block {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((stdgo._internal.strings.Strings_trimspace.trimSpace((_line.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) } : stdgo._internal.go.doc.comment.Comment_heading.Heading)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>));
    }
    @:keep
    @:tdfield
    static public function _oldHeading( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _line:stdgo.GoString):stdgo._internal.go.doc.comment.Comment_block.Block {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ text : (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>(1, 1, ...[stdgo.Go.asInterface((stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__()) : stdgo._internal.go.doc.comment.Comment_plain.Plain))]) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>) } : stdgo._internal.go.doc.comment.Comment_heading.Heading)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>));
    }
    @:keep
    @:tdfield
    static public function _lookupPkg( _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>, _pkg:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc> = _d;
        var _importPath = ("" : stdgo.GoString), _ok = false;
        if (stdgo._internal.strings.Strings_contains.contains(_pkg?.__copy__(), ("/" : stdgo.GoString))) {
            if (stdgo._internal.go.doc.comment.Comment__validimportpath._validImportPath(_pkg?.__copy__())) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _pkg?.__copy__(), _1 : true };
                    _importPath = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _importPath = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        if ((@:checkr _d ?? throw "null pointer dereference").parser.lookupPackage != null) {
            {
                var __tmp__ = (@:checkr _d ?? throw "null pointer dereference").parser.lookupPackage(_pkg?.__copy__()), _path:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _path?.__copy__(), _1 : true };
                        _importPath = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = stdgo._internal.go.doc.comment.Comment_defaultlookuppackage.defaultLookupPackage(_pkg?.__copy__());
            _importPath = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function parse( __self__:stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> return @:_5 __self__.parse(_0);
}
