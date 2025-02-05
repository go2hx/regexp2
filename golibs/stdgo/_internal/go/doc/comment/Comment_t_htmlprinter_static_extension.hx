package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_htmlPrinter_asInterface) class T_htmlPrinter_static_extension {
    @:keep
    @:tdfield
    static public function _escape( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter> = _p;
        var _start = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    final __value__ = _s[(_i : stdgo.GoInt)];
                    if (__value__ == ((60 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeString(("&lt;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((38 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeString(("&amp;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeString(("&quot;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeString(("&apos;" : stdgo.GoString));
                        _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else if (__value__ == ((62 : stdgo.GoUInt8))) {
                        @:check2r _out.writeString((_s.__slice__(_start, _i) : stdgo.GoString).__copy__());
                        @:check2r _out.writeString(("&gt;" : stdgo.GoString));
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
    static public function _text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter> = _p;
        for (__1 => _t in _x) {
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_plain.Plain))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_plain.Plain = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__().value;
                    @:check2r _p._escape(_out, (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_italic.Italic))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_italic.Italic = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__().value;
                    @:check2r _out.writeString(("<i>" : stdgo.GoString));
                    @:check2r _p._escape(_out, (_t : stdgo.GoString)?.__copy__());
                    @:check2r _out.writeString(("</i>" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__().value;
                    @:check2r _out.writeString(("<a href=\"" : stdgo.GoString));
                    @:check2r _p._escape(_out, (@:checkr _t ?? throw "null pointer dereference").uRL?.__copy__());
                    @:check2r _out.writeString(("\">" : stdgo.GoString));
                    @:check2r _p._text(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                    @:check2r _out.writeString(("</a>" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__().value;
                    var _url = (@:check2r _p._docLinkURL(_t)?.__copy__() : stdgo.GoString);
                    if (_url != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString(("<a href=\"" : stdgo.GoString));
                        @:check2r _p._escape(_out, _url?.__copy__());
                        @:check2r _out.writeString(("\">" : stdgo.GoString));
                    };
                    @:check2r _p._text(_out, (@:checkr _t ?? throw "null pointer dereference").text);
                    if (_url != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString(("</a>" : stdgo.GoString));
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter> = _p;
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value;
                if (!(@:checkr _p ?? throw "null pointer dereference")._tight) {
                    @:check2r _out.writeString(("<p>" : stdgo.GoString));
                };
                @:check2r _p._text(_out, (@:checkr _x ?? throw "null pointer dereference").text);
                @:check2r _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__().value;
                @:check2r _out.writeString(("<h" : stdgo.GoString));
                var _h = (stdgo._internal.strconv.Strconv_itoa.itoa(@:check2r _p._headingLevel())?.__copy__() : stdgo.GoString);
                @:check2r _out.writeString(_h?.__copy__());
                {
                    var _id = (@:check2r _p._headingID(_x)?.__copy__() : stdgo.GoString);
                    if (_id != ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString((" id=\"" : stdgo.GoString));
                        @:check2r _p._escape(_out, _id?.__copy__());
                        @:check2r _out.writeString(("\"" : stdgo.GoString));
                    };
                };
                @:check2r _out.writeString((">" : stdgo.GoString));
                @:check2r _p._text(_out, (@:checkr _x ?? throw "null pointer dereference").text);
                @:check2r _out.writeString(("</h" : stdgo.GoString));
                @:check2r _out.writeString(_h?.__copy__());
                @:check2r _out.writeString((">\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_code.Code>) : __type__.__underlying__().value;
                @:check2r _out.writeString(("<pre>" : stdgo.GoString));
                @:check2r _p._escape(_out, (@:checkr _x ?? throw "null pointer dereference").text?.__copy__());
                @:check2r _out.writeString(("</pre>\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__().value;
                var _kind = (("ol>\n" : stdgo.GoString) : stdgo.GoString);
                if ((@:checkr (@:checkr _x ?? throw "null pointer dereference").items[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").number == ((stdgo.Go.str() : stdgo.GoString))) {
                    _kind = ("ul>\n" : stdgo.GoString);
                };
                @:check2r _out.writeString(("<" : stdgo.GoString));
                @:check2r _out.writeString(_kind?.__copy__());
                var _next = (("1" : stdgo.GoString) : stdgo.GoString);
                for (__1 => _item in (@:checkr _x ?? throw "null pointer dereference").items) {
                    @:check2r _out.writeString(("<li" : stdgo.GoString));
                    {
                        var _n = ((@:checkr _item ?? throw "null pointer dereference").number?.__copy__() : stdgo.GoString);
                        if (_n != ((stdgo.Go.str() : stdgo.GoString))) {
                            if (_n != (_next)) {
                                @:check2r _out.writeString((" value=\"" : stdgo.GoString));
                                @:check2r _out.writeString(_n?.__copy__());
                                @:check2r _out.writeString(("\"" : stdgo.GoString));
                                _next = _n?.__copy__();
                            };
                            _next = stdgo._internal.go.doc.comment.Comment__inc._inc(_next?.__copy__())?.__copy__();
                        };
                    };
                    @:check2r _out.writeString((">" : stdgo.GoString));
                    (@:checkr _p ?? throw "null pointer dereference")._tight = !@:check2r _x.blankBetween();
                    for (__2 => _blk in (@:checkr _item ?? throw "null pointer dereference").content) {
                        @:check2r _p._block(_out, _blk);
                    };
                    (@:checkr _p ?? throw "null pointer dereference")._tight = false;
                };
                @:check2r _out.writeString(("</" : stdgo.GoString));
                @:check2r _out.writeString(_kind?.__copy__());
            } else {
                var _x:stdgo._internal.go.doc.comment.Comment_block.Block = __type__ == null ? (null : stdgo._internal.go.doc.comment.Comment_block.Block) : cast __type__;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_out), ("?%T" : stdgo.GoString), stdgo.Go.toInterface(_x));
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _headingLevel( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter):stdgo.GoInt return @:_5 __self__._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public static function _headingID( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_5 __self__._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _docLinkURL( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_5 __self__._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function text( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function markdown( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function hTML( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function comment( __self__:stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.comment(_0);
}
