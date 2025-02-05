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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code_static_extension.Code_static_extension) class Code {
    public var codes : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var strings : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
    public var sets : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>> = (null : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>>);
    public var trackCount : stdgo.GoInt = 0;
    public var caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var capsize : stdgo.GoInt = 0;
    public var fcPrefix : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_prefix.Prefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_prefix.Prefix>);
    public var bmPrefix : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>);
    public var anchors : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc = ((0 : stdgo.GoInt16) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
    public var rightToLeft : Bool = false;
    public function new(?codes:stdgo.Slice<stdgo.GoInt>, ?strings:stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>, ?sets:stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>>, ?trackCount:stdgo.GoInt, ?caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?capsize:stdgo.GoInt, ?fcPrefix:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_prefix.Prefix>, ?bmPrefix:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, ?anchors:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc, ?rightToLeft:Bool) {
        if (codes != null) this.codes = codes;
        if (strings != null) this.strings = strings;
        if (sets != null) this.sets = sets;
        if (trackCount != null) this.trackCount = trackCount;
        if (caps != null) this.caps = caps;
        if (capsize != null) this.capsize = capsize;
        if (fcPrefix != null) this.fcPrefix = fcPrefix;
        if (bmPrefix != null) this.bmPrefix = bmPrefix;
        if (anchors != null) this.anchors = anchors;
        if (rightToLeft != null) this.rightToLeft = rightToLeft;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Code(codes, strings, sets, trackCount, caps, capsize, fcPrefix, bmPrefix, anchors, rightToLeft);
    }
}
