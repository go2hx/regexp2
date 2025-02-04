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
function _operatorDescription(_op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp):stdgo.GoString {
        var _desc = (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__codeStr._codeStr[((_op & (63 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        if (((_op & (512 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
            _desc = (_desc + (("-Ci" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (((_op & (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
            _desc = (_desc + (("-Rtl" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (((_op & (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
            _desc = (_desc + (("-Back" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (((_op & (256 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp)) != ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_InstOp.InstOp))) {
            _desc = (_desc + (("-Back2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _desc?.__copy__();
    }
