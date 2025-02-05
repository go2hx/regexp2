package stdgo._internal.go.ast;
function _sortSpecs(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _specs:stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>):stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec> {
        if (((_specs.length) <= (1 : stdgo.GoInt) : Bool)) {
            return _specs;
        };
        var _pos = (new stdgo.Slice<stdgo._internal.go.ast.Ast_t_posspan.T_posSpan>((_specs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_specs.length : stdgo.GoInt).toBasic() > 0 ? (_specs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.ast.Ast_t_posspan.T_posSpan)]) : stdgo.Slice<stdgo._internal.go.ast.Ast_t_posspan.T_posSpan>);
        for (_i => _s in _specs) {
            _pos[(_i : stdgo.GoInt)] = (new stdgo._internal.go.ast.Ast_t_posspan.T_posSpan(_s.pos(), _s.end()) : stdgo._internal.go.ast.Ast_t_posspan.T_posSpan);
        };
        var _begSpecs = (_pos[(0 : stdgo.GoInt)].start : stdgo._internal.go.token.Token_pos.Pos);
        var _endSpecs = (_pos[((_pos.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end : stdgo._internal.go.token.Token_pos.Pos);
        var _beg = (@:check2r @:check2r _fset.file(_begSpecs).lineStart(stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _begSpecs)) : stdgo._internal.go.token.Token_pos.Pos);
        var _endLine = (stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _endSpecs) : stdgo.GoInt);
        var _endFile = @:check2r _fset.file(_endSpecs);
        var _end:stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
        if (_endLine == (@:check2r _endFile.lineCount())) {
            _end = _endSpecs;
        } else {
            _end = @:check2r _endFile.lineStart((_endLine + (1 : stdgo.GoInt) : stdgo.GoInt));
        };
        var _first = ((@:checkr _f ?? throw "null pointer dereference").comments.length : stdgo.GoInt);
        var _last = (-1 : stdgo.GoInt);
        for (_i => _g in (@:checkr _f ?? throw "null pointer dereference").comments) {
            if ((@:check2r _g.end() >= _end : Bool)) {
                break;
            };
            if ((_beg <= @:check2r _g.pos() : Bool)) {
                if ((_i < _first : Bool)) {
                    _first = _i;
                };
                if ((_i > _last : Bool)) {
                    _last = _i;
                };
            };
        };
        var _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        if ((_last >= (0 : stdgo.GoInt) : Bool)) {
            _comments = ((@:checkr _f ?? throw "null pointer dereference").comments.__slice__(_first, (_last + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        var _importComments = ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>, stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>>);
        var _specIndex = (0 : stdgo.GoInt);
        for (__16 => _g in _comments) {
            while ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && (_pos[(_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt)].start <= @:check2r _g.pos() : Bool) : Bool)) {
                _specIndex++;
            };
            var _left:Bool = false;
            if (((_specIndex == (0 : stdgo.GoInt)) && (_pos[(_specIndex : stdgo.GoInt)].start > @:check2r _g.pos() : Bool) : Bool)) {
                _left = true;
            } else if ((((_specIndex + (1 : stdgo.GoInt) : stdgo.GoInt) < (_specs.length) : Bool) && ((stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _pos[(_specIndex : stdgo.GoInt)].start) + (1 : stdgo.GoInt) : stdgo.GoInt) == stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, @:check2r _g.pos())) : Bool)) {
                _specIndex++;
                _left = true;
            };
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_specs[(_specIndex : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            _importComments[_s] = ((_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>)).__append__(({ _left : _left, _cg : _g } : stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos)));
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_specs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _ipath = (stdgo._internal.go.ast.Ast__importpath._importPath(_specs[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            var _jpath = (stdgo._internal.go.ast.Ast__importpath._importPath(_specs[(_j : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            if (_ipath != (_jpath)) {
                return (_ipath < _jpath : Bool);
            };
            var _iname = (stdgo._internal.go.ast.Ast__importname._importName(_specs[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            var _jname = (stdgo._internal.go.ast.Ast__importname._importName(_specs[(_j : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
            if (_iname != (_jname)) {
                return (_iname < _jname : Bool);
            };
            return (stdgo._internal.go.ast.Ast__importcomment._importComment(_specs[(_i : stdgo.GoInt)]) < stdgo._internal.go.ast.Ast__importcomment._importComment(_specs[(_j : stdgo.GoInt)]) : Bool);
        });
        var _deduped = (_specs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.ast.Ast_spec.Spec>);
        for (_i => _s in _specs) {
            if (((_i == ((_specs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) || !stdgo._internal.go.ast.Ast__collapse._collapse(_s, _specs[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                _deduped = (_deduped.__append__(_s));
            } else {
                var _p = (_s.pos() : stdgo._internal.go.token.Token_pos.Pos);
                @:check2r @:check2r _fset.file(_p).mergeLine(stdgo._internal.go.ast.Ast__lineat._lineAt(_fset, _p));
            };
        };
        _specs = _deduped;
        for (_i => _s in _specs) {
            var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_s) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>);
            if (((@:checkr _s ?? throw "null pointer dereference").name != null && (((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference").name : Dynamic).__nil__))) {
                (@:checkr (@:checkr _s ?? throw "null pointer dereference").name ?? throw "null pointer dereference").namePos = _pos[(_i : stdgo.GoInt)].start;
            };
            (@:checkr (@:checkr _s ?? throw "null pointer dereference").path ?? throw "null pointer dereference").valuePos = _pos[(_i : stdgo.GoInt)].start;
            (@:checkr _s ?? throw "null pointer dereference").endPos = _pos[(_i : stdgo.GoInt)].end;
            for (__17 => _g in (_importComments[_s] ?? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_t_cgpos.T_cgPos>))) {
                for (__18 => _c in (@:checkr _g._cg ?? throw "null pointer dereference").list) {
                    if (_g._left) {
                        (@:checkr _c ?? throw "null pointer dereference").slash = (_pos[(_i : stdgo.GoInt)].start - (1 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
                    } else {
                        (@:checkr _c ?? throw "null pointer dereference").slash = _pos[(_i : stdgo.GoInt)].end;
                    };
                };
            };
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_comments), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (@:check2r _comments[(_i : stdgo.GoInt)].pos() < @:check2r _comments[(_j : stdgo.GoInt)].pos() : Bool);
        });
        return _specs;
    }
