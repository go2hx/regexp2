package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.T_commentPrinter_asInterface) class T_commentPrinter_static_extension {
    @:keep
    @:tdfield
    static public function _indent( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _indent:stdgo.GoString, _s:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter> = _p;
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_s?.__copy__(), ("\n" : stdgo.GoString)), _line:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            @:check2r _out.writeString(_line?.__copy__());
            if (_ok) {
                @:check2r _out.writeString(("\n" : stdgo.GoString));
                @:check2r _out.writeString(_indent?.__copy__());
            };
            _s = _rest?.__copy__();
        };
    }
    @:keep
    @:tdfield
    static public function _text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _indent:stdgo.GoString, _x:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_text.Text>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter> = _p;
        for (__1 => _t in _x) {
            {
                final __type__ = _t;
                if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_plain.Plain))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_plain.Plain = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : __type__.__underlying__().value;
                    @:check2r _p._indent(_out, _indent?.__copy__(), (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.doc.comment.Comment_italic.Italic))) {
                    var _t:stdgo._internal.go.doc.comment.Comment_italic.Italic = __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__() == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__ == null ? (("" : stdgo.GoString) : stdgo._internal.go.doc.comment.Comment_italic.Italic) : __type__.__underlying__().value;
                    @:check2r _p._indent(_out, _indent?.__copy__(), (_t : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_link.Link>) : __type__.__underlying__().value;
                    if ((@:checkr _t ?? throw "null pointer dereference").auto) {
                        @:check2r _p._text(_out, _indent?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").text);
                    } else {
                        @:check2r _out.writeString(("[" : stdgo.GoString));
                        @:check2r _p._text(_out, _indent?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").text);
                        @:check2r _out.writeString(("]" : stdgo.GoString));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>))) {
                    var _t:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>) : __type__.__underlying__().value;
                    @:check2r _out.writeString(("[" : stdgo.GoString));
                    @:check2r _p._text(_out, _indent?.__copy__(), (@:checkr _t ?? throw "null pointer dereference").text);
                    @:check2r _out.writeString(("]" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _block( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>, _out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _x:stdgo._internal.go.doc.comment.Comment_block.Block):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter> = _p;
        {
            final __type__ = _x;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value;
                @:check2r _p._text(_out, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (@:checkr _x ?? throw "null pointer dereference").text);
                @:check2r _out.writeString(("\n" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>))) {
                var _x:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>) : __type__.__underlying__().value;
                @:check2r _out.writeString(("# " : stdgo.GoString));
                @:check2r _p._text(_out, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (@:checkr _x ?? throw "null pointer dereference").text);
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
                    @:check2r _out.writeString((" " : stdgo.GoString));
                    if ((@:checkr _item ?? throw "null pointer dereference").number == ((stdgo.Go.str() : stdgo.GoString))) {
                        @:check2r _out.writeString((" - " : stdgo.GoString));
                    } else {
                        @:check2r _out.writeString((@:checkr _item ?? throw "null pointer dereference").number?.__copy__());
                        @:check2r _out.writeString((". " : stdgo.GoString));
                    };
                    for (_i => _blk in (@:checkr _item ?? throw "null pointer dereference").content) {
                        {};
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            @:check2r _out.writeString(("\n    " : stdgo.GoString));
                        };
                        @:check2r _p._text(_out, ("    " : stdgo.GoString), (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_blk) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) ?? throw "null pointer dereference").text);
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
    public static function _headingLevel( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter):stdgo.GoInt return @:_5 __self__._headingLevel();
    @:embedded
    @:embeddededffieldsffun
    public static function _headingID( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString return @:_5 __self__._headingID(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _docLinkURL( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString return @:_5 __self__._docLinkURL(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function text( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.text(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function markdown( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.markdown(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function hTML( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.hTML(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function comment( __self__:stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter, _0:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.comment(_0);
}
