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
function newReplacerData(_rep:stdgo.GoString, _caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _capsize:stdgo.GoInt, _capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _op:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ReplacerData.ReplacerData>; var _1 : stdgo.Error; } {
        var _p = ({ _options : _op, _caps : _caps, _capsize : _capsize, _capnames : _capnames } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_parser.T_parser);
        @:check2 _p._setPattern(_rep?.__copy__());
        var __tmp__ = @:check2 _p._scanReplacement(), _concat:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_regexNode.T_regexNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if ((@:checkr _concat ?? throw "null pointer dereference")._t != ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
            throw stdgo.Go.toInterface(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errReplacementError.errReplacementError);
        };
        var _sb = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_Buffer.Buffer() : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var __0:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), __1:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
var _rules = __1, _strings = __0;
        for (__0 => _child in (@:checkr _concat ?? throw "null pointer dereference")._children) {
            {
                final __value__ = (@:checkr _child ?? throw "null pointer dereference")._t;
                if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    @:check2r _child._writeStrToBuf(_sb);
                } else if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    @:check2r _sb.writeRune((@:checkr _child ?? throw "null pointer dereference")._ch);
                } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_T_nodeType.T_nodeType))) {
                    if ((@:check2r _sb.len() > (0 : stdgo.GoInt) : Bool)) {
                        _rules = (_rules.__append__(_strings.length));
                        _strings = (_strings.__append__((@:check2r _sb.string() : stdgo.GoString)?.__copy__()));
                        @:check2r _sb.reset();
                    };
                    var _slot = ((@:checkr _child ?? throw "null pointer dereference")._m : stdgo.GoInt);
                    if ((((_caps.length) > (0 : stdgo.GoInt) : Bool) && (_slot >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _slot = (_caps[_slot] ?? (0 : stdgo.GoInt));
                    };
                    _rules = (_rules.__append__(((-5 : stdgo.GoInt) - _slot : stdgo.GoInt)));
                } else {
                    throw stdgo.Go.toInterface(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_errReplacementError.errReplacementError);
                };
            };
        };
        if ((@:check2r _sb.len() > (0 : stdgo.GoInt) : Bool)) {
            _rules = (_rules.__append__(_strings.length));
            _strings = (_strings.__append__((@:check2r _sb.string() : stdgo.GoString)?.__copy__()));
        };
        return { _0 : (stdgo.Go.setRef(({ rep : _rep?.__copy__(), strings : _strings, rules : _rules } : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ReplacerData.ReplacerData)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_ReplacerData.ReplacerData>), _1 : (null : stdgo.Error) };
    }
