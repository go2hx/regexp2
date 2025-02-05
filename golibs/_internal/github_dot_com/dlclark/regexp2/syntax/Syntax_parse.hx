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
function parse(_re:stdgo.GoString, _op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>; var _1 : stdgo.Error; } {
        var _p = ({ _options : _op, _caps : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_parser.T_parser);
        @:check2 _p._setPattern(_re?.__copy__());
        {
            var _err = (@:check2 _p._countCaptures() : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        @:check2 _p._reset(_op);
        var __tmp__ = @:check2 _p._scanRegex(), _root:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var _tree = (stdgo.Go.setRef(({ _root : _root, _caps : _p._caps, _capnumlist : _p._capnumlist, _captop : _p._captop, capnames : _p._capnames, caplist : _p._capnamelist, _options : _op } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>);
        if ((((@:checkr _tree ?? throw "null pointer dereference")._options & (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) > (0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : Bool)) {
            @:check2r stdgo._internal.os.Os_stdout.stdout.writeString(@:check2r _tree.dump()?.__copy__());
        };
        return { _0 : _tree, _1 : (null : stdgo.Error) };
    }
