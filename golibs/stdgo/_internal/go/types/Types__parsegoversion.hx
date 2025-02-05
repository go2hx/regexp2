package stdgo._internal.go.types;
function _parseGoVersion(_s:stdgo.GoString):{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } {
        var _v = ({} : stdgo._internal.go.types.Types_t_version.T_version), _err = (null : stdgo.Error);
        var _bad = (function():{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } {
            return { _0 : (new stdgo._internal.go.types.Types_t_version.T_version() : stdgo._internal.go.types.Types_t_version.T_version), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid Go version syntax %q" : stdgo.GoString), stdgo.Go.toInterface(_s)) };
        } : () -> { var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; });
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : _v, _1 : _err };
        };
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), ("go" : stdgo.GoString))) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } = _bad();
                _v = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _s = (_s.__slice__(((("go" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
        var _i = (0 : stdgo.GoInt);
        while ((((_i < (_s.length) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            if (((_i >= (10 : stdgo.GoInt) : Bool) || (_i == ((0 : stdgo.GoInt)) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } = _bad();
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
_v._major = ((((10 : stdgo.GoInt) * _v._major : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
            _i++;
        };
        if (((_i > (0 : stdgo.GoInt) : Bool) && (_i == (_s.length)) : Bool)) {
            return { _0 : _v, _1 : _err };
        };
        if (((_i == (0 : stdgo.GoInt)) || (_s[(_i : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } = _bad();
                _v = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _s = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        if (_s == (("0" : stdgo.GoString))) {
            return { _0 : _v, _1 : _err };
        };
        _i = (0 : stdgo.GoInt);
        while ((((_i < (_s.length) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            if (((_i >= (10 : stdgo.GoInt) : Bool) || (_i == ((0 : stdgo.GoInt)) && _s[(_i : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.go.types.Types_t_version.T_version; var _1 : stdgo.Error; } = _bad();
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
_v._minor = ((((10 : stdgo.GoInt) * _v._minor : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
            _i++;
        };
        return { _0 : _v, _1 : _err };
    }
