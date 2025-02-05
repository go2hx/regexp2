package stdgo._internal.go.parser;
@:structInit @:using(stdgo._internal.go.parser.Parser_t_bailout_static_extension.T_bailout_static_extension) class T_bailout {
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _msg : stdgo.GoString = "";
    public function new(?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_msg:stdgo.GoString) {
        if (_pos != null) this._pos = _pos;
        if (_msg != null) this._msg = _msg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bailout(_pos, _msg);
    }
}
