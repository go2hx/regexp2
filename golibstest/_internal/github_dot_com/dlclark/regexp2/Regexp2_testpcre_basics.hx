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
function testPcre_Basics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if ((_internal.github_dot_com.dlclark.regexp2.Regexp2__failcount._failCount > (0 : stdgo.GoInt) : Bool)) {
                            @:check2r _t.logf(("%v of %v patterns failed" : stdgo.GoString), stdgo.Go.toInterface(_internal.github_dot_com.dlclark.regexp2.Regexp2__failcount._failCount), stdgo.Go.toInterface(_internal.github_dot_com.dlclark.regexp2.Regexp2__totalcount._totalCount));
                        };
                    };
                    a();
                }) });
            };
            var __tmp__ = stdgo._internal.os.Os_open.open(("testoutput1" : stdgo.GoString)), _file:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
            {
                final __f__ = @:check2r _file.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _scanner = stdgo._internal.bufio.Bufio_newscanner.newScanner(stdgo.Go.asInterface(_file));
            while (@:check2r _scanner.scan()) {
                var _line = (@:check2r _scanner.text()?.__copy__() : stdgo.GoString);
                {
                    var _trim = (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__() : stdgo.GoString);
                    if (((_trim == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_trim?.__copy__(), ("#" : stdgo.GoString)) : Bool)) {
                        continue;
                    };
                };
                var _patternStart = (_line[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                if (((_patternStart != (47 : stdgo.GoUInt8)) && (_patternStart != (34 : stdgo.GoUInt8)) : Bool)) {
                    @:check2r _t.fatalf(("Unknown file format, expected line to start with \'/\' or \'\"\', line in: %v" : stdgo.GoString), stdgo.Go.toInterface(_line));
                };
                var _pattern = (_line?.__copy__() : stdgo.GoString);
                _internal.github_dot_com.dlclark.regexp2.Regexp2__totalcount._totalCount++;
                var _allowFirst = (false : Bool);
                while (!_internal.github_dot_com.dlclark.regexp2.Regexp2__containsender._containsEnder(_line?.__copy__(), _patternStart, _allowFirst)) {
                    if (!@:check2r _scanner.scan()) {
                        @:check2r _t.fatalf(("Unknown file format, expected more pattern text, but got EOF, pattern so far: %v" : stdgo.GoString), stdgo.Go.toInterface(_pattern));
                    };
                    _line = @:check2r _scanner.text()?.__copy__();
                    _pattern = (_pattern + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("\n%s" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_line)))?.__copy__() : stdgo.GoString);
                    _allowFirst = true;
                };
                var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2__compilerawpattern._compileRawPattern(_t, _pattern?.__copy__());
                var __0:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), __1:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>), __2:stdgo.GoString = ("" : stdgo.GoString);
var _toMatch = __2, _m = __1, _capsIdx = __0;
                while (@:check2r _scanner.scan()) {
                    _line = @:check2r _scanner.text()?.__copy__();
                    if (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__()) == ((stdgo.Go.str() : stdgo.GoString))) {
                        break;
                    };
                    if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("\\= Expect" : stdgo.GoString))) {
                        continue;
                    } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("    " : stdgo.GoString))) {
                        _toMatch = (_line.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _toMatch = stdgo._internal.strings.Strings_trimright.trimRight(_toMatch?.__copy__(), (" " : stdgo.GoString))?.__copy__();
                        _m = _internal.github_dot_com.dlclark.regexp2.Regexp2__matchstring._matchString(_t, _re, _toMatch?.__copy__());
                        _capsIdx = (({
                            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                        continue;
                    } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("No match" : stdgo.GoString))) {
                        _internal.github_dot_com.dlclark.regexp2.Regexp2__validatenomatch._validateNoMatch(_t, _re, _m);
                        continue;
                    } else {
                        var _subs = @:check2r _internal.github_dot_com.dlclark.regexp2.Regexp2__matchgroup._matchGroup.findStringSubmatch(_line?.__copy__());
                        if ((_subs.length) == ((3 : stdgo.GoInt))) {
                            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_subs[(1 : stdgo.GoInt)]?.__copy__()), _gIdx:stdgo.GoInt = __tmp__._0, __0:stdgo.Error = __tmp__._1;
                            {
                                var __tmp__ = (_capsIdx != null && _capsIdx.exists(_gIdx) ? { _0 : _capsIdx[_gIdx], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    _capsIdx[_gIdx] = (0 : stdgo.GoInt);
                                };
                            };
                            _internal.github_dot_com.dlclark.regexp2.Regexp2__validatematch._validateMatch(_t, _re, _m, _toMatch?.__copy__(), _subs[(2 : stdgo.GoInt)]?.__copy__(), _gIdx, (_capsIdx[_gIdx] ?? (0 : stdgo.GoInt)));
                            (_capsIdx[_gIdx] != null ? _capsIdx[_gIdx]++ : (0 : stdgo.GoInt));
                            continue;
                        } else {
                            @:check2r _t.fatalf(("Unknown file format, expected match or match group but got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_line));
                        };
                    };
                };
            };
            {
                var _err = (@:check2r _scanner.err() : stdgo.Error);
                if (_err != null) {
                    stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
                };
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
                return;
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
                return;
            };
        };
    }
