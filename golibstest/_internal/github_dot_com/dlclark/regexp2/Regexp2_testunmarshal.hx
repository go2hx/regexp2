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
function testUnMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultunmarshaloptions.defaultUnmarshalOptions = (1 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions);
        var _bytes = ((("\"^[abc]\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_bytes, stdgo.Go.toInterface((stdgo.Go.setRef(_re) : stdgo.Ref<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((@:checkr _re ?? throw "null pointer dereference")._options != ((1 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions))) {
            @:check2r _t.fatalf(("Expected options ignore case" : stdgo.GoString));
        };
        if ((@:check2r _re.string() : stdgo.GoString) != (("^[abc]" : stdgo.GoString))) {
            @:check2r _t.fatalf(("Expected \"^[abc]\"" : stdgo.GoString));
        };
        var __tmp__ = @:check2r _re.matchString(("A" : stdgo.GoString)), _ok:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("Unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!_ok) {
            @:check2r _t.fatalf(("Expected match" : stdgo.GoString));
        };
    }
