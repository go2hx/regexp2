package stdgo._internal.go.doc;
function _splitExampleName(_s:stdgo.GoString, _i:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _prefix = ("" : stdgo.GoString), _suffix = ("" : stdgo.GoString), _ok = false;
        if (_i == ((_s.length))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _s?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : true };
                _prefix = __tmp__._0;
                _suffix = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        if (_i == (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _prefix = __tmp__._0;
                _suffix = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        {
            final __tmp__0 = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            final __tmp__1 = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _prefix = __tmp__0;
            _suffix = __tmp__1;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _prefix?.__copy__(), _1 : _suffix?.__copy__(), _2 : stdgo._internal.go.doc.Doc__isexamplesuffix._isExampleSuffix(_suffix?.__copy__()) };
            _prefix = __tmp__._0;
            _suffix = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
