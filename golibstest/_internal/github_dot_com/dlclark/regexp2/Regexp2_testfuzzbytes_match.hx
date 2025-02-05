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
function testFuzzBytes_Match(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_3.T__struct_3>(2, 2, ...[({ _r : (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(48 : stdgo.GoUInt8), (191 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (42 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _s : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(240 : stdgo.GoUInt8), (176 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (145 : stdgo.GoUInt8), (247 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_3.T__struct_3), ({ _r : (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(48 : stdgo.GoUInt8), (175 : stdgo.GoUInt8), (243 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (42 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _s : (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(243 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (135 : stdgo.GoUInt8), (128 : stdgo.GoUInt8), (137 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_3.T__struct_3)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _r : (null : stdgo.Slice<stdgo.GoUInt8>), _s : (null : stdgo.Slice<stdgo.GoUInt8>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_3.T__struct_3)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_3.T__struct_3>);
        for (__0 => _c in _testCases) {
            var _r = ((_c._r : stdgo.GoString)?.__copy__() : stdgo.GoString);
            @:check2r _t.run(_r?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_r?.__copy__(), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(("should compile, but didn\'t" : stdgo.GoString)));
                };
                @:check2r _re.matchString((_c._s : stdgo.GoString)?.__copy__());
            });
        };
    }
