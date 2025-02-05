package stdgo._internal.go.types;
function _writeSigExpr(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _sig:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:check2r _buf.writeByte((40 : stdgo.GoUInt8));
        stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr (@:checkr _sig ?? throw "null pointer dereference").params ?? throw "null pointer dereference").list, (", " : stdgo.GoString), false);
        @:check2r _buf.writeByte((41 : stdgo.GoUInt8));
        var _res = (@:checkr _sig ?? throw "null pointer dereference").results;
        var _n = (@:check2r _res.numFields() : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            return;
        };
        @:check2r _buf.writeByte((32 : stdgo.GoUInt8));
        if (((_n == (1 : stdgo.GoInt)) && ((@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").names.length == (0 : stdgo.GoInt)) : Bool)) {
            stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type);
            return;
        };
        @:check2r _buf.writeByte((40 : stdgo.GoUInt8));
        stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr _res ?? throw "null pointer dereference").list, (", " : stdgo.GoString), false);
        @:check2r _buf.writeByte((41 : stdgo.GoUInt8));
    }
