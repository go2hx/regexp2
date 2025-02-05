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
function _optionFromCode(_ch:stdgo.GoInt32):_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions {
        {
            final __value__ = _ch;
            if (__value__ == ((105 : stdgo.GoInt32)) || __value__ == ((73 : stdgo.GoInt32))) {
                return (1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((114 : stdgo.GoInt32)) || __value__ == ((82 : stdgo.GoInt32))) {
                return (64 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((109 : stdgo.GoInt32)) || __value__ == ((77 : stdgo.GoInt32))) {
                return (2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((110 : stdgo.GoInt32)) || __value__ == ((78 : stdgo.GoInt32))) {
                return (4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((83 : stdgo.GoInt32))) {
                return (16 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                return (32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((100 : stdgo.GoInt32)) || __value__ == ((68 : stdgo.GoInt32))) {
                return (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                return (256 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else if (__value__ == ((117 : stdgo.GoInt32)) || __value__ == ((85 : stdgo.GoInt32))) {
                return (1024 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            } else {
                return (0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
            };
        };
    }
