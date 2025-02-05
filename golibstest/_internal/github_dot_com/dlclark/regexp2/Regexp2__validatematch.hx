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
function _validateMatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>, _toMatch:stdgo.GoString, _value:stdgo.GoString, _idx:stdgo.GoInt, _capIdx:stdgo.GoInt):Void {
        if ((_re == null || (_re : Dynamic).__nil__)) {
            return;
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected match for pattern \'%v\' with input \'%v\', but got no match" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface(_toMatch));
            return;
        };
        var _g = @:check2r _m.groups();
        if (((_g.length) <= _idx : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected group %v does not exist in pattern \'%v\' with input \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface(_toMatch));
            return;
        };
        if (_value == (("<unset>" : stdgo.GoString))) {
            if (((_g[(_idx : stdgo.GoInt)].captures.length) > (0 : stdgo.GoInt) : Bool)) {
                _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected no cap %v in group %v in pattern \'%v\' with input \'%v\'" : stdgo.GoString), stdgo.Go.toInterface((@:check2 _g[(_idx : stdgo.GoInt)].captures[(_capIdx : stdgo.GoInt)].string() : stdgo.GoString)), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface(_toMatch));
            };
            return;
        };
        if (((_g[(_idx : stdgo.GoInt)].captures.length) <= _capIdx : Bool)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected cap %v does not exist in group %v in pattern \'%v\' with input \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_capIdx), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface(_toMatch));
            return;
        };
        var _escp = (_internal.github_dot_com.dlclark.regexp2.Regexp2__unescapegroup._unEscapeGroup((@:check2 _g[(_idx : stdgo.GoInt)].string() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        if (_escp != (_value)) {
            _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Expected \'%v\' but got \'%v\' for cap %v, group %v for pattern \'%v\' with input \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_value), stdgo.Go.toInterface(_escp), stdgo.Go.toInterface(_capIdx), stdgo.Go.toInterface(_idx), stdgo.Go.toInterface((@:checkr _re ?? throw "null pointer dereference")._pattern), stdgo.Go.toInterface(_toMatch));
            return;
        };
    }
