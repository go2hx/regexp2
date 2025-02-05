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
function testAlternationNamedOptions_Errors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoString>(22, 22, ...[
("(?(?e))" : stdgo.GoString),
("(?(?a)" : stdgo.GoString),
("(?(?" : stdgo.GoString),
("(?(" : stdgo.GoString),
("?(a:b)" : stdgo.GoString),
("?(a)" : stdgo.GoString),
("?(a|b)" : stdgo.GoString),
("?((a)" : stdgo.GoString),
("?((a)a" : stdgo.GoString),
("?((a)a|" : stdgo.GoString),
("?((a)a|b" : stdgo.GoString),
("(?(?i))" : stdgo.GoString),
("(?(?I))" : stdgo.GoString),
("(?(?m))" : stdgo.GoString),
("(?(?M))" : stdgo.GoString),
("(?(?s))" : stdgo.GoString),
("(?(?S))" : stdgo.GoString),
("(?(?x))" : stdgo.GoString),
("(?(?X))" : stdgo.GoString),
("(?(?n))" : stdgo.GoString),
("(?(?N))" : stdgo.GoString),
(" (?(?n))" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in _data) {
            var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_p?.__copy__(), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions)), _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected error, got nil" : stdgo.GoString)));
            };
            if ((_re != null && ((_re : Dynamic).__nil__ == null || !(_re : Dynamic).__nil__))) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Expected unparsed regexp, got non-nil" : stdgo.GoString)));
            };
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_err.error()?.__copy__(), ("error parsing regexp: " : stdgo.GoString))) {
                @:check2r _t.fatalf(("Wanted parse error, got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
