package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function _matchString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _toMatch:stdgo.GoString):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> {
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return null;
        };
        (@:checkr _re ?? throw "null pointer dereference").matchTimeout = (1000000000i64 : stdgo._internal.time.Time_duration.Duration);
        var _escp = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_toMatch != (("\\" : stdgo.GoString))) {
            _escp = _internal.github_dot_com.dlclark.regexp2.Regexp2__unescapetomatch._unEscapeToMatch(_toMatch?.__copy__())?.__copy__();
        };
        var __tmp__ = @:check2r _re.findStringMatch(_escp?.__copy__()), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Error matching \"%v\" in pattern \"%v\": %v" : stdgo.GoString), stdgo.Go.toInterface(_toMatch), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface(_err));
        };
        return _m;
    }
