package stdgo._internal.go.printer;
function _stripCommonPrefix(_lines:stdgo.Slice<stdgo.GoString>):Void {
        if (((_lines.length) <= (1 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _prefix = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _prefixSet = (false : Bool);
        if (((_lines.length) > (2 : stdgo.GoInt) : Bool)) {
            for (_i => _line in (_lines.__slice__((1 : stdgo.GoInt), ((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                if (stdgo._internal.go.printer.Printer__isblank._isBlank(_line?.__copy__())) {
                    _lines[((1 : stdgo.GoInt) + _i : stdgo.GoInt)] = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                } else {
                    if (!_prefixSet) {
                        _prefix = _line?.__copy__();
                        _prefixSet = true;
                    };
                    _prefix = stdgo._internal.go.printer.Printer__commonprefix._commonPrefix(_prefix?.__copy__(), _line?.__copy__())?.__copy__();
                };
            };
        };
        if (!_prefixSet) {
            var _line = (_lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            _prefix = stdgo._internal.go.printer.Printer__commonprefix._commonPrefix(_line?.__copy__(), _line?.__copy__())?.__copy__();
        };
        var _lineOfStars = (false : Bool);
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_prefix?.__copy__(), ("*" : stdgo.GoString)), _p:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (_ok) {
                _prefix = stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_p?.__copy__(), (" " : stdgo.GoString))?.__copy__();
                _lineOfStars = true;
            } else {
                var _first = (_lines[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                if (stdgo._internal.go.printer.Printer__isblank._isBlank((_first.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                    var _i = (_prefix.length : stdgo.GoInt);
                    {
                        var _n = (0 : stdgo.GoInt);
                        while ((((_n < (3 : stdgo.GoInt) : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) && (_prefix[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) : Bool)) {
                            _i--;
                            _n++;
                        };
                    };
                    if (((_i == ((_prefix.length)) && (_i > (0 : stdgo.GoInt) : Bool) : Bool) && (_prefix[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) {
                        _i--;
                    };
                    _prefix = (_prefix.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
                } else {
                    var _suffix = (new stdgo.Slice<stdgo.GoUInt8>((_first.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    var _n = (2 : stdgo.GoInt);
                    while (((_n < (_first.length) : Bool) && (_first[(_n : stdgo.GoInt)] <= (32 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _suffix[(_n : stdgo.GoInt)] = _first[(_n : stdgo.GoInt)];
                        _n++;
                    };
                    if (((_n > (2 : stdgo.GoInt) : Bool) && (_suffix[(2 : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) {
                        _suffix = (_suffix.__slice__((2 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        {
                            final __tmp__0 = (32 : stdgo.GoUInt8);
                            final __tmp__1 = (32 : stdgo.GoUInt8);
                            final __tmp__2 = _suffix;
                            final __tmp__3 = (0 : stdgo.GoInt);
                            final __tmp__4 = _suffix;
                            final __tmp__5 = (1 : stdgo.GoInt);
                            __tmp__2[__tmp__3] = __tmp__0;
                            __tmp__4[__tmp__5] = __tmp__1;
                        };
                        _suffix = (_suffix.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _prefix = stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_prefix?.__copy__(), (_suffix : stdgo.GoString)?.__copy__())?.__copy__();
                };
            };
        };
        var _last = (_lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        var _closing = (("*/" : stdgo.GoString) : stdgo.GoString);
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_last?.__copy__(), _closing?.__copy__()), _before:stdgo.GoString = __tmp__._0, __1:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
        if (stdgo._internal.go.printer.Printer__isblank._isBlank(_before?.__copy__())) {
            if (_lineOfStars) {
                _closing = (" */" : stdgo.GoString);
            };
            _lines[((_lines.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_prefix + _closing?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _prefix = stdgo._internal.go.printer.Printer__commonprefix._commonPrefix(_prefix?.__copy__(), _last?.__copy__())?.__copy__();
        };
        for (_i => _line in _lines) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && (_line != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                _lines[(_i : stdgo.GoInt)] = (_line.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
            };
        };
    }
