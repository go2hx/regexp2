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
function _makeDeadline(_d:stdgo._internal.time.Time_duration.Duration):_internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime {
        var _end = (@:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._current._read() + _internal.github_dot_com.dlclark.regexp2.Regexp2__durationtoticks._durationToTicks((_d + _internal.github_dot_com.dlclark.regexp2.Regexp2__clockperiod._clockPeriod : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime);
        if ((_end > @:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._clockEnd._read() : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__extendclock._extendClock(_end);
        };
        return _end;
    }
