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
function testSetInCode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(?<body>\\s*(?<name>.+))" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        @:check2r _t.logf(("code dump: %v" : stdgo.GoString), stdgo.Go.toInterface(@:check2r (@:checkr _r ?? throw "null pointer dereference")._code.dump()));
        {
            var __0 = (1 : stdgo.GoInt), __1 = ((@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets.length : stdgo.GoInt);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("r.code.Sets wanted %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
        {
            var __0 = (("[\\s]" : stdgo.GoString) : stdgo.GoString), __1 = (((@:checkr (@:checkr (@:checkr _r ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").sets[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
            if (_want != (_got)) {
                @:check2r _t.fatalf(("first set wanted %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
            };
        };
    }
