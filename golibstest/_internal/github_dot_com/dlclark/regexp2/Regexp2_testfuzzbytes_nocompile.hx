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
function testFuzzBytes_NoCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2>(4, 4, ...[({ _r : (new stdgo.Slice<stdgo.GoUInt8>(10, 10, ...[(40 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (92 : stdgo.GoUInt8), (55 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (63 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(9, 9, ...[(40 : stdgo.GoUInt8), (92 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (63 : stdgo.GoUInt8), (40 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (41 : stdgo.GoUInt8), (41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(13, 13, ...[
(40 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(92 : stdgo.GoUInt8),
(49 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(48 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(12, 12, ...[
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(92 : stdgo.GoUInt8),
(55 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(63 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8),
(41 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _r : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_2.T__struct_2>);
        for (__0 => _c in _testCases) {
            var _r = ((_c._r : stdgo.GoString)?.__copy__() : stdgo.GoString);
            @:check2r _t.run(_r?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_r?.__copy__(), (386 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), __9:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(("should fail compile, but didn\'t" : stdgo.GoString)));
                };
            });
        };
    }
