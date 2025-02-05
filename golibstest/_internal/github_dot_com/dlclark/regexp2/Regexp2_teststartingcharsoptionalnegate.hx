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
function testStartingCharsOptionalNegate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(^(\\S{2} )?\\S{2}(\\d+|/) *\\S{3}\\S{3} ?\\d{2,4}[A-Z] ?\\d{2}[A-Z]{3}|(\\S{2} )?\\d{2,4})" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        if (((@:checkr (@:checkr _re ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix != null && (((@:checkr (@:checkr _re ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix : Dynamic).__nil__ == null || !((@:checkr (@:checkr _re ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix : Dynamic).__nil__))) {
            @:check2r _t.fatalf(("FcPrefix wanted nil, got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr (@:checkr _re ?? throw "null pointer dereference")._code ?? throw "null pointer dereference").fcPrefix)));
        };
    }
