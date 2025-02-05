package stdgo._internal.go.doc;
function _findImportGroupStarts1(_origImps:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> {
        var _imps = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>((_origImps.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        _imps.__copyTo__(_origImps);
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_imps), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (@:check2r _imps[(_i : stdgo.GoInt)].pos() < @:check2r _imps[(_j : stdgo.GoInt)].pos() : Bool);
        });
        var _groupStarts:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        var _prevEnd = ((-2 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        for (__0 => _imp in _imps) {
            if (((@:check2r _imp.pos() - _prevEnd : stdgo._internal.go.token.Token_pos.Pos) > (2 : stdgo._internal.go.token.Token_pos.Pos) : Bool)) {
                _groupStarts = (_groupStarts.__append__(_imp));
            };
            _prevEnd = @:check2r _imp.end();
            if (((@:checkr _imp ?? throw "null pointer dereference").comment != null && (((@:checkr _imp ?? throw "null pointer dereference").comment : Dynamic).__nil__ == null || !((@:checkr _imp ?? throw "null pointer dereference").comment : Dynamic).__nil__))) {
                _prevEnd = @:check2r (@:checkr _imp ?? throw "null pointer dereference").comment.end();
            };
        };
        return _groupStarts;
    }
