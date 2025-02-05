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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfcd_static_extension.T_regexFcd_static_extension) class T_regexFcd {
    public var _intStack : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _intDepth : stdgo.GoInt = 0;
    public var _fcStack : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> = (null : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
    public var _fcDepth : stdgo.GoInt = 0;
    public var _skipAllChildren : Bool = false;
    public var _skipchild : Bool = false;
    public var _failed : Bool = false;
    public function new(?_intStack:stdgo.Slice<stdgo.GoInt>, ?_intDepth:stdgo.GoInt, ?_fcStack:stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>, ?_fcDepth:stdgo.GoInt, ?_skipAllChildren:Bool, ?_skipchild:Bool, ?_failed:Bool) {
        if (_intStack != null) this._intStack = _intStack;
        if (_intDepth != null) this._intDepth = _intDepth;
        if (_fcStack != null) this._fcStack = _fcStack;
        if (_fcDepth != null) this._fcDepth = _fcDepth;
        if (_skipAllChildren != null) this._skipAllChildren = _skipAllChildren;
        if (_skipchild != null) this._skipchild = _skipchild;
        if (_failed != null) this._failed = _failed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_regexFcd(_intStack, _intDepth, _fcStack, _fcDepth, _skipAllChildren, _skipchild, _failed);
    }
}
