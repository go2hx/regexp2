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
function _compileRawPattern(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _pattern:stdgo.GoString):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _index = (stdgo._internal.strings.Strings_lastindexany.lastIndexAny(_pattern?.__copy__(), ("/\"" : stdgo.GoString)) : stdgo.GoInt);
            var _opts:_internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
            if (((_index + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                var _textOptions = ((_pattern.__slice__((_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                _pattern = (_pattern.__slice__(0, (_index + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                for (__0 => _textOpt in stdgo._internal.strings.Strings_split.split(_textOptions?.__copy__(), ("," : stdgo.GoString))) {
                    {
                        final __value__ = _textOpt;
                        if (__value__ == (("dupnames" : stdgo.GoString))) {} else {
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("i" : stdgo.GoString))) {
                                _opts = (_opts | ((1 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("s" : stdgo.GoString))) {
                                _opts = (_opts | ((16 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("m" : stdgo.GoString))) {
                                _opts = (_opts | ((2 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                            if (stdgo._internal.strings.Strings_contains.contains(_textOpt?.__copy__(), ("x" : stdgo.GoString))) {
                                _opts = (_opts | ((32 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
                            };
                        };
                    };
                };
            };
            _pattern = (_pattern.__slice__((1 : stdgo.GoInt), ((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        {
                            var _rec = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_rec != null) {
                                _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("PANIC in compiling \"%v\": %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), _rec);
                            };
                        };
                    };
                    a();
                }) });
            };
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_pattern?.__copy__(), _opts), _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _internal.github_dot_com.dlclark.regexp2.Regexp2__problem._problem(_t, ("Error parsing \"%v\": %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_err));
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _re;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
            };
        };
    }
