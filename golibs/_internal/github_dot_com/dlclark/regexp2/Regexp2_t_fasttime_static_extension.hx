package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.T_fasttime_asInterface) class T_fasttime_static_extension {
    @:keep
    @:tdfield
    static public function _reached( _t:_internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime):Bool {
        @:recv var _t:_internal.github_dot_com.dlclark.regexp2.Regexp2_t_fasttime.T_fasttime = _t;
        return (@:check2 _internal.github_dot_com.dlclark.regexp2.Regexp2__fast._fast._current._read() >= _t : Bool);
    }
}
