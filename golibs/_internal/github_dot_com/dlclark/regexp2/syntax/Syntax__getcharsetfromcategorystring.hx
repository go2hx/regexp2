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
function _getCharSetFromCategoryString(_negateSet:Bool, _negateCat:Bool, _cats:haxe.Rest<stdgo.GoString>):() -> stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
        var _cats = new stdgo.Slice<stdgo.GoString>(_cats.length, 0, ..._cats);
        if ((_negateCat && _negateSet : Bool)) {
            throw stdgo.Go.toInterface(("BUG!  You should only negate the set OR the category in a constant setup, but not both" : stdgo.GoString));
        };
        var _c = ({ _negate : _negateSet } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        _c._categories = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_category.T_category>((_cats.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_cats.length : stdgo.GoInt).toBasic() > 0 ? (_cats.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_category.T_category)]) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_category.T_category>);
        for (_i => _cat in _cats) {
            _c._categories[(_i : stdgo.GoInt)] = ({ _cat : _cat?.__copy__(), _negate : _negateCat } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_category.T_category);
        };
        return function():stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
            var _local = (_c?.__copy__() : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet);
            return (stdgo.Go.setRef(_local) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        };
    }
