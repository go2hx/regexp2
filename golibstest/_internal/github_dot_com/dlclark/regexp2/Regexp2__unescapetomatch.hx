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
function _unEscapeToMatch(_line:stdgo.GoString):stdgo.GoString {
        var _idx = (stdgo._internal.strings.Strings_indexrune.indexRune(_line?.__copy__(), (92 : stdgo.GoInt32)) : stdgo.GoInt);
        if (_idx == ((-1 : stdgo.GoInt))) {
            return _line?.__copy__();
        };
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString((_line.__slice__(0, _idx) : stdgo.GoString)?.__copy__());
        var _inEscape = (false : Bool);
        {
            var _i = (_idx : stdgo.GoInt);
            while ((_i < (_line.length) : Bool)) {
                var _i__pointer__ = stdgo.Go.pointer(_i);
var _i__pointer__ = stdgo.Go.pointer(_i);
var _ch = (_line[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (_ch == ((92 : stdgo.GoUInt8))) {
                    if (_inEscape) {
                        @:check2r _buf.writeByte(_ch);
                    };
                    _inEscape = !_inEscape;
                    {
                        _i++;
                        continue;
                    };
                };
if (_inEscape) {
                    {
                        final __value__ = _ch;
                        if (__value__ == ((120 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte(_internal.github_dot_com.dlclark.regexp2.Regexp2__scanhex._scanHex(_line.__copy__(), _i__pointer__));
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((7 : stdgo.GoUInt8));
                        } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((8 : stdgo.GoUInt8));
                        } else if (__value__ == ((101 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((27 : stdgo.GoUInt8));
                        } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((12 : stdgo.GoUInt8));
                        } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((10 : stdgo.GoUInt8));
                        } else if (__value__ == ((114 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((13 : stdgo.GoUInt8));
                        } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((9 : stdgo.GoUInt8));
                        } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                            @:check2r _buf.writeByte((11 : stdgo.GoUInt8));
                        } else {
                            if (((_ch >= (48 : stdgo.GoUInt8) : Bool) && (_ch <= (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                                @:check2r _buf.writeByte(_internal.github_dot_com.dlclark.regexp2.Regexp2__scanoctal._scanOctal(_line.__copy__(), _i__pointer__));
                            } else {
                                @:check2r _buf.writeByte(_ch);
                            };
                        };
                    };
                    _inEscape = false;
                } else {
                    @:check2r _buf.writeByte(_ch);
                };
                _i++;
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
