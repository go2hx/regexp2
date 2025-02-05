package stdgo._internal.go.ast;
function _lineAt(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        return @:check2r _fset.positionFor(_pos, false).line;
    }
