package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.time.Time;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function _replacementImplRTL(_data:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>, _al:stdgo.Ref<stdgo.Slice<stdgo.GoString>>, _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match>):Void {
        var _l = (_al : stdgo.Slice<stdgo.GoString>);
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        for (__0 => _r in (@:checkr _data ?? throw "null pointer dereference").rules) {
            @:check2r _buf.reset();
            if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                _l = (_l.__append__((@:checkr _data ?? throw "null pointer dereference").strings[(_r : stdgo.GoInt)]?.__copy__()));
            } else if ((_r < (-4 : stdgo.GoInt) : Bool)) {
                @:check2r _m._groupValueAppendToBuf(((-5 : stdgo.GoInt) - _r : stdgo.GoInt), _buf);
                _l = (_l.__append__((@:check2r _buf.string() : stdgo.GoString)?.__copy__()));
            } else {
                {
                    final __value__ = ((-5 : stdgo.GoInt) - _r : stdgo.GoInt);
                    if (__value__ == ((-1 : stdgo.GoInt))) {
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < (@:checkr _m ?? throw "null pointer dereference").group.capture.index : Bool)) {
                                @:check2r _buf.writeRune((@:checkr _m ?? throw "null pointer dereference").group.capture._text[(_i : stdgo.GoInt)]);
                                _i++;
                            };
                        };
                    } else if (__value__ == ((-2 : stdgo.GoInt))) {
                        {
                            var _i = ((@:checkr _m ?? throw "null pointer dereference").group.capture.index + (@:checkr _m ?? throw "null pointer dereference").group.capture.length_ : stdgo.GoInt);
                            while ((_i < ((@:checkr _m ?? throw "null pointer dereference").group.capture._text.length) : Bool)) {
                                @:check2r _buf.writeRune((@:checkr _m ?? throw "null pointer dereference").group.capture._text[(_i : stdgo.GoInt)]);
                                _i++;
                            };
                        };
                    } else if (__value__ == ((-3 : stdgo.GoInt))) {
                        @:check2r _m._groupValueAppendToBuf((@:check2r _m.groupCount() - (1 : stdgo.GoInt) : stdgo.GoInt), _buf);
                    } else if (__value__ == ((-4 : stdgo.GoInt))) {
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < ((@:checkr _m ?? throw "null pointer dereference").group.capture._text.length) : Bool)) {
                                @:check2r _buf.writeRune((@:checkr _m ?? throw "null pointer dereference").group.capture._text[(_i : stdgo.GoInt)]);
                                _i++;
                            };
                        };
                    };
                };
                _l = (_l.__append__((@:check2r _buf.string() : stdgo.GoString)?.__copy__()));
            };
        };
        (_al : stdgo.Slice<stdgo.GoString>).__setData__(_l);
    }
