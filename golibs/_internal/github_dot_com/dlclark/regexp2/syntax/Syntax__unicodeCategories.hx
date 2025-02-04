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
var _unicodeCategories : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>> = ({
        var a = function():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>> {
            var _retVal = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>>);
            for (_k => _v in stdgo._internal.unicode.Unicode_scripts.scripts) {
                _retVal[_k] = _v;
            };
            for (_k => _v in stdgo._internal.unicode.Unicode_categories.categories) {
                _retVal[_k] = _v;
            };
            for (_k => _v in stdgo._internal.unicode.Unicode_properties.properties) {
                _retVal[_k] = _v;
            };
            return _retVal;
        };
        a();
    });
