package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_mdPrinter_asInterface) class T_mdPrinter_static_extension {
    @:keep
    @:tdfield
    static public function _escape( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter> = _p;
        var _start = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((10 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeByte((32 : stdgo.GoUInt8));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        {
                            _i++;
                            continue;
                        };
                    } else if (__value__ == ((96 : stdgo.GoUInt8)) || __value__ == ((95 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8)) || __value__ == ((60 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeByte((92 : stdgo.GoUInt8));
                        @:check2r _out.writeByte(_s[(_i : stdgo.GoInt)]);
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
                _i++;
            };
        };
        @:check2r _out.writeString((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _rawText( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter> = _p;
        for (__1 => _t in _x) {
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_plain.Plain))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_plain.Plain = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__().value;
                    @:check2r _p._escape(_out, (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_italic.Italic))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_italic.Italic = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__().value;
                    @:check2r _out.writeString(("*" : stdgo.GoString));
                    @:check2r _p._escape(_out, (_t : stdgo.GoString)?.__copy__());
                    @:check2r _out.writeString(("*" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__().value;
                    @:check2r _out.writeString(("[" : stdgo.GoString));
                    @:check2r _p._rawText(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                    @:check2r _out.writeString(("](" : stdgo.GoString));
                    @:check2r _out.writeString((@:checkr _t ?? throw "null pointer dereference").uRL?.__copy__());
                    @:check2r _out.writeString((")" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__().value;
                    var _url = (@:check2r _p._docLinkURL(_t)?.__copy__() : stdgo.GoString);
                    if (_url != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString(("[" : stdgo.GoString));
                    };
                    @:check2r _p._rawText(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                    if (_url != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString(("](" : stdgo.GoString));
                        _url = stdgo._internal.strings.Strings_replaceall.replaceAll(_url?.__copy__(), ("(" : stdgo.GoString), ("%28" : stdgo.GoString))?.__copy__();
                        _url = stdgo._internal.strings.Strings_replaceall.replaceAll(_url?.__copy__(), (")" : stdgo.GoString), ("%29" : stdgo.GoString))?.__copy__();
                        @:check2r _out.writeString(_url?.__copy__());
                        @:check2r _out.writeString((")" : stdgo.GoString));
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter> = _p;
        @:check2 (@:checkr _p ?? throw "null pointer dereference")._raw.reset();
        @:check2r _p._rawText((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference")._raw) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        var _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(@:check2 (@:checkr _p ?? throw "null pointer dereference")._raw.bytes());
        if ((_line.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        {
            final __value__ = _line[(0 : stdgo.GoInt)];
            if (__value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((45 : stdgo.GoUInt8)) || __value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((35 : stdgo.GoUInt8))) {
                @:check2r _out.writeByte((92 : stdgo.GoUInt8));
            } else if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8)) || __value__ == ((56 : stdgo.GoUInt8)) || __value__ == ((57 : stdgo.GoUInt8))) {
                var _i = (1 : stdgo.GoInt);
                while ((((_i < (_line.length) : Bool) && ((48 : stdgo.GoUInt8) <= _line[(_i : stdgo.GoInt)] : Bool) : Bool) && (_line[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _i++;
                };
                if (((_i < (_line.length) : Bool) && (((_line[(_i : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) || (_line[(_i : stdgo.GoInt)] == (41 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    @:check2r _out.write((_line.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                    @:check2r _out.writeByte((92 : stdgo.GoUInt8));
                    _line = (_line.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
                };
            };
        };
        @:check2r _out.write(_line);
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter> = _p;
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value;
                @:check2r _p._text(_out, (@:checkr _x ?? throw "null pointer dereference").text);
                @:check2r _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__().value;
                @:check2r _out.writeString((@:checkr _p ?? throw "null pointer dereference")._headingPrefix?.__copy__());
                @:check2r _p._text(_out, (@:checkr _x ?? throw "null pointer dereference").text);
                {
                    var _id = (@:check2r _p._headingID(_x)?.__copy__() : stdgo.GoString);
                    if (_id != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString((" {#" : stdgo.GoString));
                        @:check2r _out.writeString(_id?.__copy__());
                        @:check2r _out.writeString(("}" : stdgo.GoString));
                    };
                };
                @:check2r _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__().value;
                var _md = ((@:checkr _x ?? throw "null pointer dereference").text?.__copy__() : stdgo.GoString);
                while (_md != ((stdgo.Go.str() : stdgo.GoString))) {
                    var _line:stdgo.GoString = ("" : stdgo.GoString);
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_md?.__copy__(), ("\n" : stdgo.GoString));
                        _line = @:tmpset0 __tmp__._0?.__copy__();
                        _md = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    if (_line != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString(("\t" : stdgo.GoString));
                        @:check2r _out.writeString(_line?.__copy__());
                    };
                    @:check2r _out.writeString(("\n" : stdgo.GoString));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__().value;
                var _loose = (@:check2r _x.blankBetween() : Bool);
                for (_i => _item in (@:checkr _x ?? throw "null pointer dereference").items) {
                    if (((_i > (0 : stdgo.GoInt) : Bool) && _loose : Bool)) {
                        @:check2r _out.writeString(("\n" : stdgo.GoString));
                    };
                    {
                        var _n = ((@:checkr _item ?? throw "null pointer dereference").number?.__copy__() : stdgo.GoString);
                        if (_n != ((stdgo.Go.str() : stdgo.GoString))) {
                            @:check2r _out.writeString((" " : stdgo.GoString));
                            @:check2r _out.writeString(_n?.__copy__());
                            @:check2r _out.writeString((". " : stdgo.GoString));
                        } else {
                            @:check2r _out.writeString(("  - " : stdgo.GoString));
                        };
                    };
                    for (_i => _blk in (@:checkr _item ?? throw "null pointer dereference").content) {
                        {};
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2r _out.writeString(("\n    " : stdgo.GoString));
                        };
                        @:check2r _p._text(_out, (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_blk) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) ?? throw "null pointer dereference").text);
                        @:check2r _out.writeString(("\n" : stdgo.GoString));
                    };
                };
            } else {
                var _x:stdgo._internal.go.doc.comment.Comment_block.Block = __type__ == null ? (null : stdgo._internal.go.doc.comment.Comment_block.Block) : cast __type__;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_out), ("?%T" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _headingLevel( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter):stdgo.GoInt return @:_5 __self__._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public static function _headingID( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_5 __self__._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _docLinkURL( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_5 __self__._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function text( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function markdown( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function hTML( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function comment( __self__:stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.comment(_0);
}
