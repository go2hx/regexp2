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
function _opcodeBacktracks(_op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp):Bool {
        _op = (_op & ((63 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        {
            final __value__ = _op;
            if (__value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((31 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((33 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((34 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((35 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((36 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                return true;
            } else {
                return false;
            };
        };
    }
