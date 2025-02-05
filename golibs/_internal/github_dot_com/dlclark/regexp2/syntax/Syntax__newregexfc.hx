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
function _newRegexFc(_ch:stdgo.GoInt32, _not:Bool, _nullable:Bool, _caseInsensitive:Bool):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc {
        var _r = ({ _caseInsensitive : _caseInsensitive, _nullable : _nullable } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc);
        if (_not) {
            if ((_ch > (0 : stdgo.GoInt32) : Bool)) {
                @:check2 _r._cc._addRange((0 : stdgo.GoInt32), (_ch - (1 : stdgo.GoInt32) : stdgo.GoInt32));
            };
            if ((_ch < (65535 : stdgo.GoInt32) : Bool)) {
                @:check2 _r._cc._addRange((_ch + (1 : stdgo.GoInt32) : stdgo.GoInt32), (1114111 : stdgo.GoInt32));
            };
        } else {
            @:check2 _r._cc._addRange(_ch, _ch);
        };
        return _r?.__copy__();
    }
