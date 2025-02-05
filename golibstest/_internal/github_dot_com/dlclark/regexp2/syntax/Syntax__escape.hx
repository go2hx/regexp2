package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
function _escape(_b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _r:stdgo.GoInt32, _force:Bool):Void {
        if (stdgo._internal.unicode.Unicode_isprint.isPrint(_r)) {
            if (((stdgo._internal.strings.Strings_indexrune.indexRune(("\\.+*?()|[]{}^$# " : stdgo.GoString), _r) >= (0 : stdgo.GoInt) : Bool) || _force : Bool)) {
                @:check2r _b.writeRune((92 : stdgo.GoInt32));
            };
            @:check2r _b.writeRune(_r);
            return;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _r;
                    if (__value__ == ((7 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\a" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\f" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\n" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\r" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\t" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((11 : stdgo.GoInt32))) {
                        @:check2r _b.writeString(("\\v" : stdgo.GoString));
                        break;
                    } else {
                        if ((_r < (256 : stdgo.GoInt32) : Bool)) {
                            @:check2r _b.writeString(("\\x" : stdgo.GoString));
                            var _s = (stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                            if ((_s.length) == ((1 : stdgo.GoInt))) {
                                @:check2r _b.writeRune((48 : stdgo.GoInt32));
                            };
                            @:check2r _b.writeString(_s?.__copy__());
                            break;
                        };
                        @:check2r _b.writeString(("\\u" : stdgo.GoString));
                        @:check2r _b.writeString(stdgo._internal.strconv.Strconv_formatint.formatInt((_r : stdgo.GoInt64), (16 : stdgo.GoInt))?.__copy__());
                    };
                };
                break;
            };
        };
    }
