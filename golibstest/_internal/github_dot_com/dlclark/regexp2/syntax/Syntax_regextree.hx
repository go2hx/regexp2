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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree_static_extension.RegexTree_static_extension) class RegexTree {
    public var _root : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _capnumlist : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _captop : stdgo.GoInt = 0;
    public var capnames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var caplist : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _options : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
    public function new(?_root:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_capnumlist:stdgo.Slice<stdgo.GoInt>, ?_captop:stdgo.GoInt, ?capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?caplist:stdgo.Slice<stdgo.GoString>, ?_options:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) {
        if (_root != null) this._root = _root;
        if (_caps != null) this._caps = _caps;
        if (_capnumlist != null) this._capnumlist = _capnumlist;
        if (_captop != null) this._captop = _captop;
        if (capnames != null) this.capnames = capnames;
        if (caplist != null) this.caplist = caplist;
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RegexTree(_root, _caps, _capnumlist, _captop, capnames, caplist, _options);
    }
}
