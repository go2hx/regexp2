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
function write(_tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>; var _1 : stdgo.Error; } {
        var _w = ({ _intStack : (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _emitted : (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _stringhash : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _sethash : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_writer.T_writer);
        var __tmp__ = @:check2 _w._codeFromTree(_tree), _code:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((((@:checkr _tree ?? throw "null pointer dereference")._options & (128 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) > (0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : Bool) && (_code != null && ((_code : Dynamic).__nil__ == null || !(_code : Dynamic).__nil__)) : Bool)) {
            @:check2r stdgo._internal.os.Os_stdout.stdout.writeString(@:check2r _code.dump()?.__copy__());
            @:check2r stdgo._internal.os.Os_stdout.stdout.writeString(("\n" : stdgo.GoString));
        };
        return { _0 : _code, _1 : _err };
    }
