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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Error_static_extension.Error_static_extension) class Error {
    public var code : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ErrorCode.ErrorCode = (("" : stdgo.GoString) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ErrorCode.ErrorCode);
    public var expr : stdgo.GoString = "";
    public var args : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?code:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ErrorCode.ErrorCode, ?expr:stdgo.GoString, ?args:stdgo.Slice<stdgo.AnyInterface>) {
        if (code != null) this.code = code;
        if (expr != null) this.expr = expr;
        if (args != null) this.args = args;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Error(code, expr, args);
    }
}
