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
@:structInit @:using(_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_t_writer_static_extension.T_writer_static_extension) class T_writer {
    public var _emitted : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _intStack : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _curpos : stdgo.GoInt = 0;
    public var _stringhash : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _stringtable : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
    public var _sethash : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var _settable : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>> = (null : stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>>);
    public var _counting : Bool = false;
    public var _count : stdgo.GoInt = 0;
    public var _trackcount : stdgo.GoInt = 0;
    public var _caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public function new(?_emitted:stdgo.Slice<stdgo.GoInt>, ?_intStack:stdgo.Slice<stdgo.GoInt>, ?_curpos:stdgo.GoInt, ?_stringhash:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_stringtable:stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>, ?_sethash:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?_settable:stdgo.Slice<stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.syntax.Syntax_charset.CharSet>>, ?_counting:Bool, ?_count:stdgo.GoInt, ?_trackcount:stdgo.GoInt, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) {
        if (_emitted != null) this._emitted = _emitted;
        if (_intStack != null) this._intStack = _intStack;
        if (_curpos != null) this._curpos = _curpos;
        if (_stringhash != null) this._stringhash = _stringhash;
        if (_stringtable != null) this._stringtable = _stringtable;
        if (_sethash != null) this._sethash = _sethash;
        if (_settable != null) this._settable = _settable;
        if (_counting != null) this._counting = _counting;
        if (_count != null) this._count = _count;
        if (_trackcount != null) this._trackcount = _trackcount;
        if (_caps != null) this._caps = _caps;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_writer(
_emitted,
_intStack,
_curpos,
_stringhash,
_stringtable,
_sethash,
_settable,
_counting,
_count,
_trackcount,
_caps);
    }
}
