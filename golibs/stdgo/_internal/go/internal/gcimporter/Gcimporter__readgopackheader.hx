package stdgo._internal.go.internal.gcimporter;
function _readGopackHeader(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _name = ("" : stdgo.GoString), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _hdr = (new stdgo.Slice<stdgo.GoUInt8>((60 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface(_r), _hdr);
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : _name, _1 : _size, _2 : _err };
        };
        if (false) {
            stdgo._internal.fmt.Fmt_printf.printf(("header: %s" : stdgo.GoString), stdgo.Go.toInterface(_hdr));
        };
        var _s = (stdgo._internal.strings.Strings_trimspace.trimSpace((((_hdr.__slice__((48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__());
            _size = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (((_err != null || _hdr[((_hdr.length) - (2 : stdgo.GoInt) : stdgo.GoInt)] != ((96 : stdgo.GoUInt8)) : Bool) || (_hdr[((_hdr.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid archive header" : stdgo.GoString));
            return { _0 : _name, _1 : _size, _2 : _err };
        };
        _name = stdgo._internal.strings.Strings_trimspace.trimSpace(((_hdr.__slice__(0, (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__();
        return { _0 : _name, _1 : _size, _2 : _err };
    }
