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
function _validateNoMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):Void {
        if (((_re == null || (_re : Dynamic).__nil__) || (_m == null || (_m : Dynamic).__nil__) : Bool)) {
            return;
        };
        _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected no match for pattern \'%v\', but got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface((@:check2r _m.string() : stdgo.GoString)));
    }
