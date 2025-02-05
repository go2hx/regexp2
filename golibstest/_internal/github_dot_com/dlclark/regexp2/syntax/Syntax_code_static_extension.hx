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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.Code_asInterface) class Code_static_extension {
    @:keep
    @:tdfield
    static public function dump( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code> = _c;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        if ((@:checkr _c ?? throw "null pointer dereference").rightToLeft) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(("Direction:  right-to-left" : stdgo.GoString)));
        } else {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(("Direction:  left-to-right" : stdgo.GoString)));
        };
        if (((@:checkr _c ?? throw "null pointer dereference").fcPrefix == null || ((@:checkr _c ?? throw "null pointer dereference").fcPrefix : Dynamic).__nil__)) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(("Firstchars: n/a" : stdgo.GoString)));
        } else {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Firstchars: %v\n" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr (@:checkr _c ?? throw "null pointer dereference").fcPrefix ?? throw "null pointer dereference").prefixSet.string() : stdgo.GoString)));
        };
        if (((@:checkr _c ?? throw "null pointer dereference").bmPrefix == null || ((@:checkr _c ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__)) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(("Prefix:     n/a" : stdgo.GoString)));
        } else {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Prefix:     %v\n" : stdgo.GoString), stdgo.Go.toInterface(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_escape.escape((@:check2r (@:checkr _c ?? throw "null pointer dereference").bmPrefix.string() : stdgo.GoString)?.__copy__())));
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Anchors:    %v\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _c ?? throw "null pointer dereference").anchors)));
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf));
        if (((@:checkr _c ?? throw "null pointer dereference").bmPrefix != null && (((@:checkr _c ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__ == null || !((@:checkr _c ?? throw "null pointer dereference").bmPrefix : Dynamic).__nil__))) {
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(("BoyerMoore:" : stdgo.GoString)));
            stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(@:check2r (@:checkr _c ?? throw "null pointer dereference").bmPrefix.dump(("    " : stdgo.GoString))));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _c ?? throw "null pointer dereference").codes.length) : Bool)) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(_buf), stdgo.Go.toInterface(@:check2r _c.opcodeDescription(_i)));
                _i = (_i + (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__opcodesize._opcodeSize(((@:checkr _c ?? throw "null pointer dereference").codes[(_i : stdgo.GoInt)] : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) : stdgo.GoInt);
            };
        };
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function opcodeDescription( _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code>, _offset:stdgo.GoInt):stdgo.GoString {
        @:recv var _c:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_code.Code> = _c;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _op = ((@:checkr _c ?? throw "null pointer dereference").codes[(_offset : stdgo.GoInt)] : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%06d " : stdgo.GoString), stdgo.Go.toInterface(_offset));
        if (_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__opcodebacktracks._opcodeBacktracks((_op & (63 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            @:check2r _buf.writeString(("*" : stdgo.GoString));
        } else {
            @:check2r _buf.writeString((" " : stdgo.GoString));
        };
        @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax__operatordescription._operatorDescription(_op)?.__copy__());
        @:check2r _buf.writeString(("(" : stdgo.GoString));
        _op = (_op & ((63 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        {
            final __value__ = _op;
            if (__value__ == ((9 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                @:check2r _buf.writeString(("Ch = " : stdgo.GoString));
                @:check2r _buf.writeString(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_chardescription.charDescription(((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32))?.__copy__());
            } else if (__value__ == ((11 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                @:check2r _buf.writeString(("Set = " : stdgo.GoString));
                @:check2r _buf.writeString(((@:checkr (@:checkr _c ?? throw "null pointer dereference").sets[((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] ?? throw "null pointer dereference").string() : stdgo.GoString)?.__copy__());
            } else if (__value__ == ((12 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("String = %s" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _c ?? throw "null pointer dereference").strings[((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoString)));
            } else if (__value__ == ((13 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((37 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Index = %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)]));
            } else if (__value__ == ((32 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Index = %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                if ((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)] != ((-1 : stdgo.GoInt))) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), (", Unindex = %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)]));
                };
            } else if (__value__ == ((26 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((27 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Value = %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)]));
            } else if (__value__ == ((38 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((23 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((24 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((25 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("Addr = %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (1 : stdgo.GoInt) : stdgo.GoInt)]));
            };
        };
        {
            final __value__ = _op;
            if (__value__ == ((0 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((3 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((2 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                @:check2r _buf.writeString((", Rep = " : stdgo.GoString));
                if ((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)] == ((2147483647 : stdgo.GoInt))) {
                    @:check2r _buf.writeString(("inf" : stdgo.GoString));
                } else {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)]));
                };
            } else if (__value__ == ((28 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((29 : _internal.github_dot_com.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                @:check2r _buf.writeString((", Limit = " : stdgo.GoString));
                if ((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)] == ((2147483647 : stdgo.GoInt))) {
                    @:check2r _buf.writeString(("inf" : stdgo.GoString));
                } else {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").codes[(_offset + (2 : stdgo.GoInt) : stdgo.GoInt)]));
                };
            };
        };
        @:check2r _buf.writeString((")" : stdgo.GoString));
        return (@:check2r _buf.string() : stdgo.GoString)?.__copy__();
    }
}
