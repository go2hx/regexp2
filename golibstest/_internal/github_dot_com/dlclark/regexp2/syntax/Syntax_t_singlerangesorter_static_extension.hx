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
@:keep @:allow(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax.T_singleRangeSorter_asInterface) class T_singleRangeSorter_static_extension {
    @:keep
    @:tdfield
    static public function swap( _p:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _p:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter = _p;
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_i : stdgo.GoInt)];
            final __tmp__2 = _p;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _p;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _p:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _p:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter = _p;
        return (_p[(_i : stdgo.GoInt)]._first < _p[(_j : stdgo.GoInt)]._first : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _p:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter):stdgo.GoInt {
        @:recv var _p:_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_singlerangesorter.T_singleRangeSorter = _p;
        return (_p.length);
    }
}
