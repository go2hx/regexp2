package stdgo._internal.go.types;
function _writeFuncName(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):Void {
        if ((@:checkr _f ?? throw "null pointer dereference")._object._typ != null) {
            var _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
            {
                var _recv = @:check2r _sig.recv();
                if ((_recv != null && ((_recv : Dynamic).__nil__ == null || !(_recv : Dynamic).__nil__))) {
                    @:check2r _buf.writeByte((40 : stdgo.GoUInt8));
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _recv.type()) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            @:check2r _buf.writeString(("interface" : stdgo.GoString));
                        } else {
                            stdgo._internal.go.types.Types_writetype.writeType(_buf, @:check2r _recv.type(), _qf);
                        };
                    };
                    @:check2r _buf.writeByte((41 : stdgo.GoUInt8));
                    @:check2r _buf.writeByte((46 : stdgo.GoUInt8));
                } else if (((@:checkr _f ?? throw "null pointer dereference")._object._pkg != null && (((@:checkr _f ?? throw "null pointer dereference")._object._pkg : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference")._object._pkg : Dynamic).__nil__))) {
                    @:check2r _buf.writeString(stdgo._internal.go.types.Types__packageprefix._packagePrefix((@:checkr _f ?? throw "null pointer dereference")._object._pkg, _qf)?.__copy__());
                };
            };
        };
        @:check2r _buf.writeString((@:checkr _f ?? throw "null pointer dereference")._object._name?.__copy__());
    }
