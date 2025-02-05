package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function _makeText(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt32> {
        if (((_internal.github_dot_com.dlclark.regexp2.Regexp2__text._text.length) >= _n : Bool)) {
            return (_internal.github_dot_com.dlclark.regexp2.Regexp2__text._text.__slice__(0, _n) : stdgo.Slice<stdgo.GoInt32>);
        };
        _internal.github_dot_com.dlclark.regexp2.Regexp2__text._text = (new stdgo.Slice<stdgo.GoInt32>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _x = (-1u32 : stdgo.GoUInt32);
        for (_i => _ in _internal.github_dot_com.dlclark.regexp2.Regexp2__text._text) {
            _x = (_x + (_x) : stdgo.GoUInt32);
            _x = (_x ^ ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            if (((_x : stdgo.GoInt32) < (0 : stdgo.GoInt32) : Bool)) {
                _x = (_x ^ ((-2004316433u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            if ((_x % (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                _internal.github_dot_com.dlclark.regexp2.Regexp2__text._text[(_i : stdgo.GoInt)] = (10 : stdgo.GoInt32);
            } else {
                _internal.github_dot_com.dlclark.regexp2.Regexp2__text._text[(_i : stdgo.GoInt)] = (((_x % (95u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (32u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt32);
            };
        };
        return _internal.github_dot_com.dlclark.regexp2.Regexp2__text._text;
    }
