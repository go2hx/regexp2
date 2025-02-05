package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.Regexp2.Capture_asInterface) class Capture_static_extension {
    @:keep
    @:tdfield
    static public function runes( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture> = _c;
        return ((@:checkr _c ?? throw "null pointer dereference")._text.__slice__((@:checkr _c ?? throw "null pointer dereference").index, ((@:checkr _c ?? throw "null pointer dereference").index + (@:checkr _c ?? throw "null pointer dereference").length_ : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_capture.Capture> = _c;
        return (((@:checkr _c ?? throw "null pointer dereference")._text.__slice__((@:checkr _c ?? throw "null pointer dereference").index, ((@:checkr _c ?? throw "null pointer dereference").index + (@:checkr _c ?? throw "null pointer dereference").length_ : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__();
    }
}
