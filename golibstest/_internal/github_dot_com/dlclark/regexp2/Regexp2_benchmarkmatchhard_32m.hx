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
function benchmarkMatchHard_32M(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        _internal.github_dot_com.dlclark.regexp2.Regexp2__benchmark._benchmark(_b, ("[ -~]*ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString), (33554432 : stdgo.GoInt));
    }
