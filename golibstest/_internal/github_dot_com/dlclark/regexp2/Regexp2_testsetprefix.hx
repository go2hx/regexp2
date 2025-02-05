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
function testSetPrefix(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("^\\s*-TEST" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        if (((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix == null || ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix : Dynamic).__nil__)) {
            @:check2r _t.fatalf(("Expected prefix set [-\\s] but was nil" : stdgo.GoString));
        };
        if (((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix ?? throw "null pointer dereference").prefixSet.string() : stdgo.GoString) != (("[-\\s]" : stdgo.GoString))) {
            @:check2r _t.fatalf(("Expected prefix set [\\s-] but was %v" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix ?? throw "null pointer dereference").prefixSet.string() : stdgo.GoString)));
        };
    }
