package stdgo._internal.go.format;
function node(_dst:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error {
        var _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _cnode:stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode> = (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>);
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value;
                _file = _n;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>))) {
                var _n:stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>) : __type__.__underlying__().value;
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _n ?? throw "null pointer dereference").node : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : false };
                    }, _f = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _file = _f;
                        _cnode = _n;
                    };
                };
            };
        };
        if (((_file != null && ((_file : Dynamic).__nil__ == null || !(_file : Dynamic).__nil__)) && stdgo._internal.go.format.Format__hasunsortedimports._hasUnsortedImports(_file) : Bool)) {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _err = (@:check2 stdgo._internal.go.format.Format__config._config.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file))) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
            {
                var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(@:check2 _buf.bytes()), (68u32 : stdgo._internal.go.parser.Parser_mode.Mode));
                _file = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("format.Node internal error (%s)" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.go.ast.Ast_sortimports.sortImports(_fset, _file);
            _node = stdgo.Go.toInterface(stdgo.Go.asInterface(_file));
            if ((_cnode != null && ((_cnode : Dynamic).__nil__ == null || !(_cnode : Dynamic).__nil__))) {
                _node = stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ node : stdgo.Go.toInterface(stdgo.Go.asInterface(_file)), comments : (@:checkr _cnode ?? throw "null pointer dereference").comments } : stdgo._internal.go.printer.Printer_commentednode.CommentedNode)) : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>)));
            };
        };
        return @:check2 stdgo._internal.go.format.Format__config._config.fprint(_dst, _fset, _node);
    }
