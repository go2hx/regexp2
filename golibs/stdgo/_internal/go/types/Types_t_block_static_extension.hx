package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_block_asInterface) class T_block_static_extension {
    @:keep
    @:tdfield
    static public function _enclosingTarget( _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = _b;
        {
            var _s = _b;
            while ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                {
                    var _t = (@:checkr _s ?? throw "null pointer dereference")._lstmt;
                    if (((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__)) && ((@:checkr (@:checkr _t ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name == _name) : Bool)) {
                        return _t;
                    };
                };
                _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _gotoTarget( _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = _b;
        {
            var _s = _b;
            while ((_s != null && ((_s : Dynamic).__nil__ == null || !(_s : Dynamic).__nil__))) {
                {
                    var _t = ((@:checkr _s ?? throw "null pointer dereference")._labels[_name] ?? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>));
                    if ((_t != null && ((_t : Dynamic).__nil__ == null || !(_t : Dynamic).__nil__))) {
                        return _t;
                    };
                };
                _s = (@:checkr _s ?? throw "null pointer dereference")._parent;
            };
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _insert( _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block>, _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_t_block.T_block> = _b;
        var _name = ((@:checkr (@:checkr _s ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
        if (false) {
            stdgo._internal.go.types.Types__assert._assert((@:check2r _b._gotoTarget(_name?.__copy__()) == null || (@:check2r _b._gotoTarget(_name?.__copy__()) : Dynamic).__nil__));
        };
        var _labels = (@:checkr _b ?? throw "null pointer dereference")._labels;
        if (_labels == null) {
            _labels = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>>);
            (@:checkr _b ?? throw "null pointer dereference")._labels = _labels;
        };
        _labels[_name] = _s;
    }
}
