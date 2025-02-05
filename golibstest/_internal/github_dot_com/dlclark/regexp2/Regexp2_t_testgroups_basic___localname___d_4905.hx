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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905_static_extension.T_testGroups_Basic___localname___d_4905_static_extension) class T_testGroups_Basic___localname___d_4905 {
    public var _p : stdgo.GoString = "";
    public var _s : stdgo.GoString = "";
    public var _name : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _num : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _strs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_p:stdgo.GoString, ?_s:stdgo.GoString, ?_name:stdgo.Slice<stdgo.GoString>, ?_num:stdgo.Slice<stdgo.GoInt>, ?_strs:stdgo.Slice<stdgo.GoString>) {
        if (_p != null) this._p = _p;
        if (_s != null) this._s = _s;
        if (_name != null) this._name = _name;
        if (_num != null) this._num = _num;
        if (_strs != null) this._strs = _strs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testGroups_Basic___localname___d_4905(_p, _s, _name, _num, _strs);
    }
}
