package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function escape(_input:stdgo.GoString):stdgo.GoString {
        return _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_escape.escape(_input?.__copy__())?.__copy__();
    }
