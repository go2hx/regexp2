package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function setTimeoutCheckPeriod(_d:stdgo._internal.time.Time_Duration.Duration):Void {
        _internal.github_dot_com.dlclark.regexp2.Regexp2__clockPeriod._clockPeriod = _d;
    }
