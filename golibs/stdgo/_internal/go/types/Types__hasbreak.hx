package stdgo._internal.go.types;
function _hasBreak(_s:stdgo._internal.go.ast.Ast_stmt.Stmt, _label:stdgo.GoString, _implicit:Bool):Bool {
        {
            final __type__ = _s;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>))) {
                var _s:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : cast __type__;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value;
                return stdgo._internal.go.types.Types__hasbreak._hasBreak((@:checkr _s ?? throw "null pointer dereference").stmt, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value;
                if ((@:checkr _s ?? throw "null pointer dereference").tok == ((61 : stdgo._internal.go.token.Token_token.Token))) {
                    if (((@:checkr _s ?? throw "null pointer dereference").label == null || ((@:checkr _s ?? throw "null pointer dereference").label : Dynamic).__nil__)) {
                        return _implicit;
                    };
                    if ((@:checkr (@:checkr _s ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name == (_label)) {
                        return true;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value;
                return stdgo._internal.go.types.Types__hasbreaklist._hasBreakList((@:checkr _s ?? throw "null pointer dereference").list, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value;
                if ((stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), _implicit) || ((@:checkr _s ?? throw "null pointer dereference").else_ != null && stdgo._internal.go.types.Types__hasbreak._hasBreak((@:checkr _s ?? throw "null pointer dereference").else_, _label?.__copy__(), _implicit) : Bool) : Bool)) {
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value;
                return stdgo._internal.go.types.Types__hasbreaklist._hasBreakList((@:checkr _s ?? throw "null pointer dereference").body, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value;
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value;
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value;
                return stdgo._internal.go.types.Types__hasbreaklist._hasBreakList((@:checkr _s ?? throw "null pointer dereference").body, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value;
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value;
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value;
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    return true;
                };
            } else {
                var _s:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : cast __type__;
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        return false;
    }
