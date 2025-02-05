package stdgo._internal.go.doc;
function _hasIota(_s:stdgo._internal.go.ast.Ast_spec.Spec):Bool {
        var _has = (false : Bool);
        stdgo._internal.go.ast.Ast_inspect.inspect(_s, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_n) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), _1 : false };
                }, _id = __tmp__._0, _ok = __tmp__._1;
                if (((_ok && (@:checkr _id ?? throw "null pointer dereference").name == (("iota" : stdgo.GoString)) : Bool) && ((@:checkr _id ?? throw "null pointer dereference").obj == null || ((@:checkr _id ?? throw "null pointer dereference").obj : Dynamic).__nil__) : Bool)) {
                    _has = true;
                    return false;
                };
            };
            return true;
        });
        return _has;
    }
