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
function isWordChar(_r:stdgo.GoInt32):Bool {
        return ((stdgo._internal.unicode.Unicode_in_.in_(_r, (stdgo._internal.unicode.Unicode_categories.categories[("L" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), (stdgo._internal.unicode.Unicode_categories.categories[("Mn" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), (stdgo._internal.unicode.Unicode_categories.categories[("Nd" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), (stdgo._internal.unicode.Unicode_categories.categories[("Pc" : stdgo.GoString)] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>))) || _r == ((8205 : stdgo.GoInt32)) : Bool) || (_r == (8204 : stdgo.GoInt32)) : Bool);
    }
