package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _newMatchSparse(_regex:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _capcount:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoInt32>, _startpos:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> {
        var _m = _internal.github_dot_com.dlclark.regexp2.Regexp2__newmatch._newMatch(_regex, _capcount, _text, _startpos);
        (@:checkr _m ?? throw "null pointer dereference")._sparseCaps = _caps;
        return _m;
    }
