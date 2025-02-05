package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.FieldList_asInterface) class FieldList_static_extension {
    @:keep
    @:tdfield
    static public function numFields( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = _f;
        var _n = (0 : stdgo.GoInt);
        if ((_f != null && ((_f : Dynamic).__nil__ == null || !(_f : Dynamic).__nil__))) {
            for (__0 => _g in (@:checkr _f ?? throw "null pointer dereference").list) {
                var _m = ((@:checkr _g ?? throw "null pointer dereference").names.length : stdgo.GoInt);
                if (_m == ((0 : stdgo.GoInt))) {
                    _m = (1 : stdgo.GoInt);
                };
                _n = (_n + (_m) : stdgo.GoInt);
            };
        };
        return _n;
    }
    @:keep
    @:tdfield
    static public function end( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference").closing.isValid()) {
            return ((@:checkr _f ?? throw "null pointer dereference").closing + (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        };
        {
            var _n = ((@:checkr _f ?? throw "null pointer dereference").list.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                return @:check2r (@:checkr _f ?? throw "null pointer dereference").list[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
    @:keep
    @:tdfield
    static public function pos( _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _f:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList> = _f;
        if ((@:checkr _f ?? throw "null pointer dereference").opening.isValid()) {
            return (@:checkr _f ?? throw "null pointer dereference").opening;
        };
        if ((((@:checkr _f ?? throw "null pointer dereference").list.length) > (0 : stdgo.GoInt) : Bool)) {
            return @:check2r (@:checkr _f ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)].pos();
        };
        return (0 : stdgo._internal.go.token.Token_pos.Pos);
    }
}
