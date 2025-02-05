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
function _doubleIntSlice(_s:stdgo.Ref<stdgo.Slice<stdgo.GoInt>>, _pos:stdgo.Pointer<stdgo.GoInt>):Void {
        var _oldLen = ((_s : stdgo.Slice<stdgo.GoInt>).length : stdgo.GoInt);
        var _newS = (new stdgo.Slice<stdgo.GoInt>((_oldLen * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        (_newS.__slice__(_oldLen) : stdgo.Slice<stdgo.GoInt>).__copyTo__((_s : stdgo.Slice<stdgo.GoInt>));
        _pos.value = (_pos.value + (_oldLen) : stdgo.GoInt);
        (_s : stdgo.Slice<stdgo.GoInt>).__setData__(_newS);
    }
