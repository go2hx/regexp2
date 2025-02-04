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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Prefix_static_extension.Prefix_static_extension) class Prefix {
    public var prefixStr : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var prefixSet : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet = ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet);
    public var caseInsensitive : Bool = false;
    public function new(?prefixStr:stdgo.Slice<stdgo.GoInt32>, ?prefixSet:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet, ?caseInsensitive:Bool) {
        if (prefixStr != null) this.prefixStr = prefixStr;
        if (prefixSet != null) this.prefixSet = prefixSet;
        if (caseInsensitive != null) this.caseInsensitive = caseInsensitive;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Prefix(prefixStr, prefixSet, caseInsensitive);
    }
}
