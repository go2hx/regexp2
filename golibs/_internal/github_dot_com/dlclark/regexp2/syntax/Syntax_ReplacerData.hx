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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ReplacerData_static_extension.ReplacerData_static_extension) class ReplacerData {
    public var rep : stdgo.GoString = "";
    public var strings : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var rules : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?rep:stdgo.GoString, ?strings:stdgo.Slice<stdgo.GoString>, ?rules:stdgo.Slice<stdgo.GoInt>) {
        if (rep != null) this.rep = rep;
        if (strings != null) this.strings = strings;
        if (rules != null) this.rules = rules;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReplacerData(rep, strings, rules);
    }
}
