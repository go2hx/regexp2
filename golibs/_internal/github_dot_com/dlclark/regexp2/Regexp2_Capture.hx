package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.Regexp2_Capture_static_extension.Capture_static_extension) class Capture {
    public var _text : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var index : stdgo.GoInt = 0;
    public var length_ : stdgo.GoInt = 0;
    public function new(?_text:stdgo.Slice<stdgo.GoInt32>, ?index:stdgo.GoInt, ?length_:stdgo.GoInt) {
        if (_text != null) this._text = _text;
        if (index != null) this.index = index;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Capture(_text, index, length_);
    }
}
