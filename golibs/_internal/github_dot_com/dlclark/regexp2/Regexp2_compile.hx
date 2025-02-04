package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function compile(_expr:stdgo.GoString, _opt:_internal.github_dot_com.dlclark.regexp2.Regexp2_RegexOptions.RegexOptions):{ var _0 : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_Regexp.Regexp>; var _1 : stdgo.Error; } {
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_parse.parse(_expr?.__copy__(), (_opt : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexOptions.RegexOptions)), _tree:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_RegexTree.RegexTree> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_write.write(_tree), _code:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_Code.Code> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return { _0 : (stdgo.Go.setRef(({ _pattern : _expr?.__copy__(), _options : _opt, _caps : (@:checkr _code ?? throw "null pointer dereference").caps, _capnames : (@:checkr _tree ?? throw "null pointer dereference").capnames, _capslist : (@:checkr _tree ?? throw "null pointer dereference").caplist, _capsize : (@:checkr _code ?? throw "null pointer dereference").capsize, _code : _code, matchTimeout : _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultMatchTimeout.defaultMatchTimeout, _muRun : (stdgo.Go.setRef((new stdgo._internal.sync.Sync_Mutex.Mutex() : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_Regexp.Regexp)) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_Regexp.Regexp>), _1 : (null : stdgo.Error) };
    }
