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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.Group_asInterface) class Group_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function runes( __self__:_internal.github_dot_com.dlclark.regexp2.Regexp2_group.Group):stdgo.Slice<stdgo.GoInt32> return @:_5 __self__.runes();
}
