package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _replace(_regex:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _data:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>, _evaluator:_internal.github_dot_com.dlclark.regexp2.Regexp2_matchevaluator.MatchEvaluator, _input:stdgo.GoString, _startAt:stdgo.GoInt, _count:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if ((_count < (-1 : stdgo.GoInt) : Bool)) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("Count too small" : stdgo.GoString)) };
        };
        if (_count == ((0 : stdgo.GoInt))) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r _regex.findStringMatchStartingAt(_input?.__copy__(), _startAt), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        if ((_m == null || (_m : Dynamic).__nil__)) {
            return { _0 : _input?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _text = (@:checkr _m ?? throw "null pointer dereference").group.capture._text;
        if (!@:check2r _regex.rightToLeft()) {
            var _prevat = (0 : stdgo.GoInt);
            while ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                if ((@:checkr _m ?? throw "null pointer dereference").group.capture.index != (_prevat)) {
                    @:check2r _buf.writeString(((_text.__slice__(_prevat, (@:checkr _m ?? throw "null pointer dereference").group.capture.index) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__());
                };
                _prevat = ((@:checkr _m ?? throw "null pointer dereference").group.capture.index + (@:checkr _m ?? throw "null pointer dereference").group.capture.length_ : stdgo.GoInt);
                if (_evaluator == null) {
                    _internal.github_dot_com.dlclark.regexp2.Regexp2__replacementimpl._replacementImpl(_data, _buf, _m);
                } else {
                    @:check2r _buf.writeString(_evaluator((_m : _internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match))?.__copy__());
                };
                _count--;
                if (_count == ((0 : stdgo.GoInt))) {
                    break;
                };
                {
                    var __tmp__ = @:check2r _regex.findNextMatch(_m);
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
            if ((_prevat < (_text.length) : Bool)) {
                @:check2r _buf.writeString(((_text.__slice__(_prevat) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__());
            };
        } else {
            var _prevat = (_text.length : stdgo.GoInt);
            var _al:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            while ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                if (((@:checkr _m ?? throw "null pointer dereference").group.capture.index + (@:checkr _m ?? throw "null pointer dereference").group.capture.length_ : stdgo.GoInt) != (_prevat)) {
                    _al = (_al.__append__(((_text.__slice__(((@:checkr _m ?? throw "null pointer dereference").group.capture.index + (@:checkr _m ?? throw "null pointer dereference").group.capture.length_ : stdgo.GoInt), _prevat) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__()));
                };
                _prevat = (@:checkr _m ?? throw "null pointer dereference").group.capture.index;
                if (_evaluator == null) {
                    _internal.github_dot_com.dlclark.regexp2.Regexp2__replacementimplrtl._replacementImplRTL(_data, (stdgo.Go.setRef(_al) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>), _m);
                } else {
                    _al = (_al.__append__(_evaluator((_m : _internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match))?.__copy__()));
                };
                _count--;
                if (_count == ((0 : stdgo.GoInt))) {
                    break;
                };
                {
                    var __tmp__ = @:check2r _regex.findNextMatch(_m);
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                };
            };
            if ((_prevat > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _buf.writeString(((_text.__slice__(0, _prevat) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__());
            };
            {
                var _i = ((_al.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _buf.writeString(_al[(_i : stdgo.GoInt)].__copy__());
                    _i--;
                };
            };
        };
        return { _0 : (@:check2r _buf.string() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
