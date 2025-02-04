package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _durationToTicks(_d:stdgo._internal.time.Time_Duration.Duration):_internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime {
        return ((_d : _internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime) >> (20i64 : stdgo.GoUInt64) : _internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime);
    }
