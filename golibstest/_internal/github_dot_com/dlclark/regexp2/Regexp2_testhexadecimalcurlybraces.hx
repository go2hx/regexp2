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
function testHexadecimalCurlyBraces(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x20" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString((" " : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{C4}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("Ä" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{0C5}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("Å" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{00C6}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("Æ" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{1FF}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("ǿ" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{02FF}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("˿" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{1392}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString(("᎒" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("\\x{0010ffff}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _re.matchString((((1114111 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected err: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            } else if (!_m) {
                @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x2R" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __0:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x0" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __1:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __2:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __3:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{2" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __4:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{2R" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __5:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{2R}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __6:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __7:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatalf(("Expected error" : stdgo.GoString));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{10000" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __8:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{1234" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __9:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
        {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(("\\x{123456789}" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __10:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error" : stdgo.GoString)));
            };
        };
    }
