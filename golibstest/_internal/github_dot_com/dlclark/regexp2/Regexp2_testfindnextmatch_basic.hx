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
function testFindNextMatch_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(T|E)(?=h|E|S|$)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        var __tmp__ = @:check2r _re.findStringMatch(("This is a TEST" : stdgo.GoString)), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected err 0: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected match 0" : stdgo.GoString));
        };
        {
            var __0 = (0 : stdgo.GoInt), __1 = ((@:checkr _m ?? throw "null pointer dereference").group.capture.index : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected match 0 to start at %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __tmp__ = @:check2r _re.findNextMatch(_m);
            _m = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected err 1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected match 1" : stdgo.GoString));
        };
        {
            var __0 = (10 : stdgo.GoInt), __1 = ((@:checkr _m ?? throw "null pointer dereference").group.capture.index : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected match 1 to start at %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __tmp__ = @:check2r _re.findNextMatch(_m);
            _m = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected err 2: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected match 2" : stdgo.GoString));
        };
        {
            var __0 = (11 : stdgo.GoInt), __1 = ((@:checkr _m ?? throw "null pointer dereference").group.capture.index : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected match 2 to start at %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __tmp__ = @:check2r _re.findNextMatch(_m);
            _m = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected err 3: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected match 3" : stdgo.GoString));
        };
        {
            var __0 = (13 : stdgo.GoInt), __1 = ((@:checkr _m ?? throw "null pointer dereference").group.capture.index : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("expected match 3 to start at %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
