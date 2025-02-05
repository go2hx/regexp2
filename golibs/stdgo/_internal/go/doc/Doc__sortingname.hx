package stdgo._internal.go.doc;
function _sortingName(_d:stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>):stdgo.GoString {
        if (((@:checkr _d ?? throw "null pointer dereference").specs.length) == ((1 : stdgo.GoInt))) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>), _1 : false };
                }, _s = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return (@:checkr (@:checkr _s ?? throw "null pointer dereference").names[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").name?.__copy__();
                };
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
