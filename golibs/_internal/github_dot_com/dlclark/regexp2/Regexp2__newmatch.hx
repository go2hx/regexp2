package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _newMatch(_regex:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _capcount:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoInt32>, _startpos:stdgo.GoInt):stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> {
        var _m = ({ _regex : _regex, _matchcount : (new stdgo.Slice<stdgo.GoInt>((_capcount : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _matches : (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_capcount : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>), _textstart : _startpos, _balancing : false } : _internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match);
        _m.group.name = ("0" : stdgo.GoString);
        _m.group.capture._text = _text;
        _m._matches[(0 : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        return (stdgo.Go.setRef(_m) : stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>);
    }
