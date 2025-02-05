package stdgo._internal.go.types;
function _writeFieldList(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>, _sep:stdgo.GoString, _iface:Bool):Void {
        for (_i => _f in _list) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _buf.writeString(_sep?.__copy__());
            };
            stdgo._internal.go.types.Types__writeidentlist._writeIdentList(_buf, (@:checkr _f ?? throw "null pointer dereference").names);
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : false };
                }, _sig = __tmp__._0, __0 = __tmp__._1;
                if (((_sig != null && ((_sig : Dynamic).__nil__ == null || !(_sig : Dynamic).__nil__)) && _iface : Bool)) {
                    stdgo._internal.go.types.Types__writesigexpr._writeSigExpr(_buf, _sig);
                    continue;
                };
            };
            if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
            };
            stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _f ?? throw "null pointer dereference").type);
        };
    }
