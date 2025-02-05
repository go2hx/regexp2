package stdgo._internal.go.build;
function _findImportComment(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        var _s = ("" : stdgo.GoString), _line = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.build.Build__parseword._parseWord(_data), _word:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        if ((_word : stdgo.GoString) != (("package" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt) };
                _s = __tmp__._0;
                _line = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = stdgo._internal.go.build.Build__parseword._parseWord(_data);
            _data = @:tmpset0 __tmp__._1;
        };
        while ((((_data.length) > (0 : stdgo.GoInt) : Bool) && (((_data[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8)) || _data[(0 : stdgo.GoInt)] == ((9 : stdgo.GoUInt8)) : Bool) || (_data[(0 : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _data = (_data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _comment:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut((_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.build.Build__newline._newline);
                _comment = @:tmpset0 __tmp__._0;
            };
        } else if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.go.build.Build__slashstar._slashStar)) {
            var _ok:Bool = false;
            {
                var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut((_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.build.Build__starslash._starSlash);
                _comment = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._2;
            };
            if (!_ok) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt) };
                    _s = __tmp__._0;
                    _line = __tmp__._1;
                    __tmp__;
                };
            };
            if (stdgo._internal.bytes.Bytes_contains.contains(_comment, stdgo._internal.go.build.Build__newline._newline)) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt) };
                    _s = __tmp__._0;
                    _line = __tmp__._1;
                    __tmp__;
                };
            };
        };
        _comment = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_comment);
        var __tmp__ = stdgo._internal.go.build.Build__parseword._parseWord(_comment), _word:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _arg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
        if ((_word : stdgo.GoString) != (("import" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt) };
                _s = __tmp__._0;
                _line = __tmp__._1;
                __tmp__;
            };
        };
        _line = ((1 : stdgo.GoInt) + stdgo._internal.bytes.Bytes_count.count((_data.__slice__(0, (_data.capacity - _arg.capacity : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.build.Build__newline._newline) : stdgo.GoInt);
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } = { _0 : stdgo._internal.strings.Strings_trimspace.trimSpace((_arg : stdgo.GoString)?.__copy__())?.__copy__(), _1 : _line };
            _s = __tmp__._0;
            _line = __tmp__._1;
            __tmp__;
        };
    }
