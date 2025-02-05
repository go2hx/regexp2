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
function testParserFuzzCrashes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _crashes = (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("(?\'-" : stdgo.GoString), ("(\\c0)" : stdgo.GoString), ("(\\00(?())" : stdgo.GoString), ("[\\p{0}" : stdgo.GoString), (stdgo.Go.str("(", 0, "?.*.()?(()?)?)*.x", 203, "?&(\\s", 128, ")") : stdgo.GoString)?.__copy__(), ("\\p{0}" : stdgo.GoString), ("[0-[\\p{0}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _c in _crashes) {
            @:check2r _t.log(stdgo.Go.toInterface(_c));
            _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_c?.__copy__(), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        };
    }
