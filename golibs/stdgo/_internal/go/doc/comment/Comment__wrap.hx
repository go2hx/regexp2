package stdgo._internal.go.doc.comment;
function _wrap(_words:stdgo.Slice<stdgo.GoString>, _max:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _seq = (null : stdgo.Slice<stdgo.GoInt>);
        {};
        var _add = (function(_s:stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194, _t:stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194):stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194 {
            return (new stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194((_s._hi + _t._hi : stdgo.GoInt64), (_s._lo + _t._lo : stdgo.GoInt64)) : stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
        } : (stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194, stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194) -> stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
        var _cmp = (function(_s:stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194, _t:stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194):stdgo.GoInt {
            if ((_s._hi < _t._hi : Bool)) {
                return (-1 : stdgo.GoInt);
            } else if ((_s._hi > _t._hi : Bool)) {
                return (1 : stdgo.GoInt);
            } else if ((_s._lo < _t._lo : Bool)) {
                return (-1 : stdgo.GoInt);
            } else if ((_s._lo > _t._lo : Bool)) {
                return (1 : stdgo.GoInt);
            };
            return (0 : stdgo.GoInt);
        } : (stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194, stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194) -> stdgo.GoInt);
        var _total = (new stdgo.Slice<stdgo.GoInt>(((_words.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _total[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
        for (_i => _s in _words) {
            _total[((1 : stdgo.GoInt) + _i : stdgo.GoInt)] = ((_total[(_i : stdgo.GoInt)] + stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _weight = (function(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194 {
            var _n = ((_total[(_j : stdgo.GoInt)] - (1 : stdgo.GoInt) : stdgo.GoInt) - _total[(_i : stdgo.GoInt)] : stdgo.GoInt);
            if (((_j == (_words.length)) && (_n <= _max : Bool) : Bool)) {
                return (new stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)) : stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
            };
            var _p = (stdgo._internal.go.doc.comment.Comment__wrappenalty._wrapPenalty(_words[(_j - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : stdgo.GoInt64);
            var _v = (((_max - _n : stdgo.GoInt) : stdgo.GoInt64) * ((_max - _n : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
            if ((_n > _max : Bool)) {
                return (new stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194(_v, _p) : stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
            };
            return (new stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194((0i64 : stdgo.GoInt64), (_v + _p : stdgo.GoInt64)) : stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
        } : (stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
        var _f = (new stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194>(1, 1, ...[(new stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)) : stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194)])) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194>);
        var _g = (function(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194 {
            return _add(_f[(_i : stdgo.GoInt)], _weight(_i, _j)?.__copy__())?.__copy__();
        } : (stdgo.GoInt, stdgo.GoInt) -> stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194.T__wrap___localname___score_6194);
        var _bridge = (function(_a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt):Bool {
            var _k = (_c + stdgo._internal.sort.Sort_search.search((((_words.length) + (1 : stdgo.GoInt) : stdgo.GoInt) - _c : stdgo.GoInt), function(_k:stdgo.GoInt):Bool {
                _k = (_k + (_c) : stdgo.GoInt);
                return (_cmp(_g(_a, _k)?.__copy__(), _g(_b, _k)?.__copy__()) > (0 : stdgo.GoInt) : Bool);
            }) : stdgo.GoInt);
            if ((_k > (_words.length) : Bool)) {
                return true;
            };
            return (_cmp(_g(_c, _k)?.__copy__(), _g(_b, _k)?.__copy__()) <= (0 : stdgo.GoInt) : Bool);
        } : (stdgo.GoInt, stdgo.GoInt, stdgo.GoInt) -> Bool);
        var _d = (new stdgo.Slice<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), (_words.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _d[(0 : stdgo.GoInt)] = (0 : stdgo.GoInt);
        var _bestleft = (new stdgo.Slice<stdgo.GoInt>((1 : stdgo.GoInt).toBasic(), (_words.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _bestleft[(0 : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        {
            var _m = (1 : stdgo.GoInt);
            while ((_m < (_words.length) : Bool)) {
                _f = (_f.__append__(_g(_d[(0 : stdgo.GoInt)], _m).__copy__()));
_bestleft = (_bestleft.__append__(_d[(0 : stdgo.GoInt)]));
while ((((_d.length) > (1 : stdgo.GoInt) : Bool) && (_cmp(_g(_d[(1 : stdgo.GoInt)], (_m + (1 : stdgo.GoInt) : stdgo.GoInt))?.__copy__(), _g(_d[(0 : stdgo.GoInt)], (_m + (1 : stdgo.GoInt) : stdgo.GoInt))?.__copy__()) <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _d = (_d.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                };
while ((((_d.length) > (1 : stdgo.GoInt) : Bool) && _bridge(_d[((_d.length) - (2 : stdgo.GoInt) : stdgo.GoInt)], _d[((_d.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], _m) : Bool)) {
                    _d = (_d.__slice__(0, ((_d.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                };
if ((_cmp(_g(_m, (_words.length)).__copy__(), _g(_d[((_d.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], (_words.length)).__copy__()) < (0 : stdgo.GoInt) : Bool)) {
                    _d = (_d.__append__(_m));
                    if (((_d.length == (2 : stdgo.GoInt)) && (_cmp(_g(_d[(1 : stdgo.GoInt)], (_m + (1 : stdgo.GoInt) : stdgo.GoInt)).__copy__(), _g(_d[(0 : stdgo.GoInt)], (_m + (1 : stdgo.GoInt) : stdgo.GoInt)).__copy__()) <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _d = (_d.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                    };
                };
                _m++;
            };
        };
        _bestleft = (_bestleft.__append__(_d[(0 : stdgo.GoInt)]));
        var _n = (1 : stdgo.GoInt);
        {
            var _m = (_words.length : stdgo.GoInt);
            while ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n++;
                _m = _bestleft[(_m : stdgo.GoInt)];
            };
        };
        _seq = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _m = (_words.length : stdgo.GoInt);
            while ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n--;
_seq[(_n : stdgo.GoInt)] = _m;
                _m = _bestleft[(_m : stdgo.GoInt)];
            };
        };
        return _seq;
    }
