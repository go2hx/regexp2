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
function testRE2CompatCapture_Invalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _bogus = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("(?P<name>a" : stdgo.GoString), ("(?P<name>" : stdgo.GoString), ("(?P<name" : stdgo.GoString), ("(?P<x y>a)" : stdgo.GoString), ("(?P<>a)" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _inp in _bogus) {
            @:check2r _t.run(_inp?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_inp?.__copy__(), (512 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(("Expected failure to parse" : stdgo.GoString)));
                };
                if ((_r != null && ((_r : Dynamic).__nil__ == null || !(_r : Dynamic).__nil__))) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(("expected regexp to be nil" : stdgo.GoString)));
                };
            });
        };
    }
