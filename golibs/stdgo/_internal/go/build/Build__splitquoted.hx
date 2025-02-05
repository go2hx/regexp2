package stdgo._internal.go.build;
function _splitQuoted(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _r = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
        var _args:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _arg = (new stdgo.Slice<stdgo.GoInt32>((_s.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _escaped = (false : Bool);
        var _quoted = (false : Bool);
        var _quote = (0 : stdgo.GoInt32);
        var _i = (0 : stdgo.GoInt);
        for (__0 => _rune in _s) {
            if (_escaped) {
                _escaped = false;
            } else if (_rune == ((92 : stdgo.GoInt32))) {
                _escaped = true;
                continue;
            } else if (_quote != ((0 : stdgo.GoInt32))) {
                if (_rune == (_quote)) {
                    _quote = (0 : stdgo.GoInt32);
                    continue;
                };
            } else if (((_rune == (34 : stdgo.GoInt32)) || (_rune == (39 : stdgo.GoInt32)) : Bool)) {
                _quoted = true;
                _quote = _rune;
                continue;
            } else if (stdgo._internal.unicode.Unicode_isspace.isSpace(_rune)) {
                if ((_quoted || (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _quoted = false;
                    _args = (_args.__append__(((_arg.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__()));
                    _i = (0 : stdgo.GoInt);
                };
                continue;
            };
            _arg[(_i : stdgo.GoInt)] = _rune;
            _i++;
        };
        if ((_quoted || (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _args = (_args.__append__(((_arg.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__()));
        };
        if (_quote != ((0 : stdgo.GoInt32))) {
            _err = stdgo._internal.errors.Errors_new_.new_(("unclosed quote" : stdgo.GoString));
        } else if (_escaped) {
            _err = stdgo._internal.errors.Errors_new_.new_(("unfinished escaping" : stdgo.GoString));
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _args, _1 : _err };
            _r = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
