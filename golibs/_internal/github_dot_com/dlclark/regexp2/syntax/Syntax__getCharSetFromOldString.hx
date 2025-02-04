package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
function _getCharSetFromOldString(_setText:stdgo.Slice<stdgo.GoInt32>, _negate:Bool):() -> stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> {
        var _c = (new _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
        if (((_setText.length) > (0 : stdgo.GoInt) : Bool)) {
            var _fillFirst = (false : Bool);
            var _l = (_setText.length : stdgo.GoInt);
            if (_negate) {
                if (_setText[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32))) {
                    _setText = (_setText.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
                } else {
                    _l++;
                    _fillFirst = true;
                };
            };
            if ((_l % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                _c._ranges = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>((_l / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_l / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_l / (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            } else {
                _c._ranges = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>(((_l / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_l / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_l / (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
            };
            var _first = (true : Bool);
            if (_fillFirst) {
                _c._ranges[(0 : stdgo.GoInt)] = ({ _first : (0 : stdgo.GoInt32) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange);
                _first = false;
            };
            var _i = (0 : stdgo.GoInt);
            for (__0 => _r in _setText) {
                if (_first) {
                    _c._ranges[(_i : stdgo.GoInt)] = ({ _first : _r } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange);
                    _first = false;
                } else {
                    _c._ranges[(_i : stdgo.GoInt)]._last = (_r - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _i++;
                    _first = true;
                };
            };
            if (!_first) {
                _c._ranges[(_i : stdgo.GoInt)]._last = (1114111 : stdgo.GoInt32);
            };
        };
        return function():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> {
            var _local = (_c?.__copy__() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
            return (stdgo.Go.setRef(_local) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>);
        };
    }
