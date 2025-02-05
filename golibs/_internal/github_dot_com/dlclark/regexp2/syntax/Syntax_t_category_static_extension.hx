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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_category_asInterface) class T_category_static_extension {
    @:keep
    @:tdfield
    static public function string( _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_category.T_category):stdgo.GoString {
        @:recv var _c:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_category.T_category = _c?.__copy__();
        {
            final __value__ = _c._cat;
            if (__value__ == ((" " : stdgo.GoString))) {
                if (_c._negate) {
                    return ("\\S" : stdgo.GoString);
                };
                return ("\\s" : stdgo.GoString);
            } else if (__value__ == (("W" : stdgo.GoString))) {
                if (_c._negate) {
                    return ("\\W" : stdgo.GoString);
                };
                return ("\\w" : stdgo.GoString);
            };
        };
        {
            var __tmp__ = (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories != null && _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories.exists(_c._cat?.__copy__()) ? { _0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax__unicodecategories._unicodeCategories[_c._cat?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>), _1 : false }), __0:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (_c._negate) {
                    return ((("\\P{" : stdgo.GoString) + _c._cat?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                };
                return ((("\\p{" : stdgo.GoString) + _c._cat?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        return (("Unknown category: " : stdgo.GoString) + _c._cat?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
