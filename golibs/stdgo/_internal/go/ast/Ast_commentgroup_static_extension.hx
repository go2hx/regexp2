package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.CommentGroup_asInterface) class CommentGroup_static_extension {
    @:keep
    @:tdfield
    static public function text( _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = _g;
        if ((_g == null || (_g : Dynamic).__nil__)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _comments = (new stdgo.Slice<stdgo.GoString>(((@:checkr _g ?? throw "null pointer dereference").list.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _c in (@:checkr _g ?? throw "null pointer dereference").list) {
            _comments[(_i : stdgo.GoInt)] = (@:checkr _c ?? throw "null pointer dereference").text?.__copy__();
        };
        var _lines = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__0 => _c in _comments) {
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c[(1 : stdgo.GoInt)];
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _c = (_c.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            if ((_c.length) == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            if (_c[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                                _c = (_c.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                            };
                            if (stdgo._internal.go.ast.Ast__isdirective._isDirective(_c?.__copy__())) {
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            break;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _c = (_c.__slice__((2 : stdgo.GoInt), ((_c.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            var _cl = stdgo._internal.strings.Strings_split.split(_c?.__copy__(), ("\n" : stdgo.GoString));
            for (__1 => _l in _cl) {
                _lines = (_lines.__append__(stdgo._internal.go.ast.Ast__striptrailingwhitespace._stripTrailingWhitespace(_l?.__copy__())?.__copy__()));
            };
        };
        var _n = (0 : stdgo.GoInt);
        for (__1 => _line in _lines) {
            if (((_line != (stdgo.Go.str() : stdgo.GoString)) || ((_n > (0 : stdgo.GoInt) : Bool) && _lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) : Bool)) {
                _lines[(_n : stdgo.GoInt)] = _line?.__copy__();
                _n++;
            };
        };
        _lines = (_lines.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoString>);
        if (((_n > (0 : stdgo.GoInt) : Bool) && (_lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _lines = (_lines.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()));
        };
        return stdgo._internal.strings.Strings_join.join(_lines, ("\n" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function end( _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = _g;
        return @:check2r (@:checkr _g ?? throw "null pointer dereference").list[(((@:checkr _g ?? throw "null pointer dereference").list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = _g;
        return @:check2r (@:checkr _g ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)].pos();
    }
}
