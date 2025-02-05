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
function testErr_GroupName(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("foo(?<0>bar)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("zero group, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = (("error parsing regexp: capture number cannot be zero in `foo(?<0>bar)`" : stdgo.GoString) : stdgo.GoString), __1 = (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("foo(?\'0\'bar)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __1:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("zero group, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = (("error parsing regexp: capture number cannot be zero in `foo(?\'0\'bar)`" : stdgo.GoString) : stdgo.GoString), __1 = (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("foo(?<1bar>)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __2:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?<1bar>)`" : stdgo.GoString) : stdgo.GoString), __1 = (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("foo(?\'1bar\')" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __3:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?\'1bar\')`" : stdgo.GoString) : stdgo.GoString), __1 = (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("foo(?<bar)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __4:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?<bar)`" : stdgo.GoString) : stdgo.GoString), __1 = (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("foo(?\'bar)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __5:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("invalid group name, expected error during compile" : stdgo.GoString));
            } else {
                var __0 = (("error parsing regexp: invalid group name: group names must begin with a word character and have a matching terminator in `foo(?\'bar)`" : stdgo.GoString) : stdgo.GoString), __1 = (_err.error()?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("invalid error text, want \'%v\', got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
        };
    }
