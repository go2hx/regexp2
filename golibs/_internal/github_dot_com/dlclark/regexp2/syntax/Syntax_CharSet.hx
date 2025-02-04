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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet_static_extension.CharSet_static_extension) class CharSet {
    public var _ranges : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange> = (null : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>);
    public var _categories : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category> = (null : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>);
    public var _sub : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet> = (null : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>);
    public var _negate : Bool = false;
    public var _anything : Bool = false;
    public function new(?_ranges:stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_singleRange.T_singleRange>, ?_categories:stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_category.T_category>, ?_sub:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_CharSet.CharSet>, ?_negate:Bool, ?_anything:Bool) {
        if (_ranges != null) this._ranges = _ranges;
        if (_categories != null) this._categories = _categories;
        if (_sub != null) this._sub = _sub;
        if (_negate != null) this._negate = _negate;
        if (_anything != null) this._anything = _anything;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CharSet(_ranges, _categories, _sub, _negate, _anything);
    }
}
