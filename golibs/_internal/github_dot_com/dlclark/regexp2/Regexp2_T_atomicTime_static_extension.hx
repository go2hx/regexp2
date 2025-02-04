package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.T_atomicTime_asInterface) class T_atomicTime_static_extension {
    @:keep
    @:tdfield
    static public function _write( _t:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_atomicTime.T_atomicTime>, _v:_internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime):Void {
        @:recv var _t:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_atomicTime.T_atomicTime> = _t;
        stdgo._internal.sync.atomic_.Atomic__storeInt64.storeInt64(stdgo.Go.pointer((@:checkr _t ?? throw "null pointer dereference")._v), (_v : stdgo.GoInt64));
    }
    @:keep
    @:tdfield
    static public function _read( _t:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_atomicTime.T_atomicTime>):_internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime {
        @:recv var _t:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_T_atomicTime.T_atomicTime> = _t;
        return (stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64(stdgo.Go.pointer((@:checkr _t ?? throw "null pointer dereference")._v)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_T_fasttime.T_fasttime);
    }
}
