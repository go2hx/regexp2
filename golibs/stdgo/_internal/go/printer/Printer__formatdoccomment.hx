package stdgo._internal.go.printer;
function _formatDocComment(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>> {
        var __0:stdgo.GoString = ("" : stdgo.GoString), __1:stdgo.GoString = ("" : stdgo.GoString);
var _text = __1, _kind = __0;
        var _directives:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        if (((_list.length == (1 : stdgo.GoInt)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").text?.__copy__(), ("/*" : stdgo.GoString)) : Bool)) {
            _kind = ("/*" : stdgo.GoString);
            _text = (@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").text?.__copy__();
            if ((!stdgo._internal.strings.Strings_contains.contains(_text?.__copy__(), ("\n" : stdgo.GoString)) || stdgo._internal.go.printer.Printer__allstars._allStars(_text?.__copy__()) : Bool)) {
                return _list;
            };
            _text = (_text.__slice__((2 : stdgo.GoInt), ((_text.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").text?.__copy__(), ("//" : stdgo.GoString))) {
            _kind = ("//" : stdgo.GoString);
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            for (__0 => _c in _list) {
                var __tmp__ = stdgo._internal.strings.Strings_cutprefix.cutPrefix((@:checkr _c ?? throw "null pointer dereference").text?.__copy__(), ("//" : stdgo.GoString)), _after:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (!_found) {
                    return _list;
                };
                if (stdgo._internal.go.printer.Printer__isdirective._isDirective(_after?.__copy__())) {
                    _directives = (_directives.__append__(_c));
                    continue;
                };
                @:check2 _b.writeString(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_after?.__copy__(), (" " : stdgo.GoString))?.__copy__());
                @:check2 _b.writeString(("\n" : stdgo.GoString));
            };
            _text = (@:check2 _b.string() : stdgo.GoString)?.__copy__();
        } else {
            return _list;
        };
        if (_text == ((stdgo.Go.str() : stdgo.GoString))) {
            return _list;
        };
        var _p:stdgo._internal.go.doc.comment.Comment_parser.Parser = ({} : stdgo._internal.go.doc.comment.Comment_parser.Parser);
        var _d = @:check2 _p.parse(_text?.__copy__());
        var _pr:stdgo._internal.go.doc.comment.Comment_printer.Printer = ({} : stdgo._internal.go.doc.comment.Comment_printer.Printer);
        _text = (@:check2 _pr.comment(_d) : stdgo.GoString)?.__copy__();
        var _slash = ((@:checkr _list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").slash : stdgo._internal.go.token.Token_pos.Pos);
        if (_kind == (("/*" : stdgo.GoString))) {
            var _c = (stdgo.Go.setRef(({ slash : _slash, text : ((("/*\n" : stdgo.GoString) + _text?.__copy__() : stdgo.GoString) + ("*/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
            return (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>(1, 1, ...[_c]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        };
        var _out:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>>);
        while (_text != ((stdgo.Go.str() : stdgo.GoString))) {
            var _line:stdgo.GoString = ("" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_text?.__copy__(), ("\n" : stdgo.GoString));
                _line = @:tmpset0 __tmp__._0?.__copy__();
                _text = @:tmpset0 __tmp__._1?.__copy__();
            };
            if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
                _line = ("//" : stdgo.GoString);
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("\t" : stdgo.GoString))) {
                _line = (("//" : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                _line = (("// " : stdgo.GoString) + _line?.__copy__() : stdgo.GoString)?.__copy__();
            };
            _out = (_out.__append__((stdgo.Go.setRef(({ slash : _slash, text : _line?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)));
        };
        if (((_directives.length) > (0 : stdgo.GoInt) : Bool)) {
            _out = (_out.__append__((stdgo.Go.setRef(({ slash : _slash, text : ("//" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)));
            for (__0 => _c in _directives) {
                _out = (_out.__append__((stdgo.Go.setRef(({ slash : _slash, text : (@:checkr _c ?? throw "null pointer dereference").text?.__copy__() } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>)));
            };
        };
        return _out;
    }
