package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_error.Error> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference").args.length) == ((0 : stdgo.GoInt))) {
            return ((((("error parsing regexp: " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").code.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" in `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return ((((("error parsing regexp: " : stdgo.GoString) + stdgo._internal.fmt.Fmt_sprintf.sprintf(((@:checkr _e ?? throw "null pointer dereference").code.string() : stdgo.GoString)?.__copy__(), ...((@:checkr _e ?? throw "null pointer dereference").args : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString) + (" in `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
