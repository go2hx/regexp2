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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.AnchorLoc_asInterface) class AnchorLoc_static_extension {
    @:keep
    @:tdfield
    static public function string( _anchors:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc):stdgo.GoString {
        @:recv var _anchors:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc = _anchors;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", Beginning" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", Start" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", Bol" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", Boundary" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", ECMABoundary" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", Eol" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", End" : stdgo.GoString));
        };
        if ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) != ((_anchors & (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc))) {
            @:check2r _buf.writeString((", EndZ" : stdgo.GoString));
        };
        if ((@:check2r _buf.len() >= (2 : stdgo.GoInt) : Bool)) {
            return ((@:check2r _buf.string() : stdgo.GoString).__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return ("None" : stdgo.GoString);
    }
}
