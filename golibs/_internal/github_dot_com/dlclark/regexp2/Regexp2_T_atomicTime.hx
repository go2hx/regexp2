package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.Regexp2_T_atomicTime_static_extension.T_atomicTime_static_extension) class T_atomicTime {
    public var _v : stdgo.GoInt64 = 0;
    public function new(?_v:stdgo.GoInt64) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atomicTime(_v);
    }
}
