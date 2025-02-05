package stdgo._internal.go.doc;
function _exampleOutput(_b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } {
        var _output = ("" : stdgo.GoString), _unordered = false, _ok = false;
        {
            var __tmp__ = stdgo._internal.go.doc.Doc__lastcomment._lastComment(_b, _comments), __0:stdgo.GoInt = __tmp__._0, _last:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __tmp__._1;
            if ((_last != null && ((_last : Dynamic).__nil__ == null || !(_last : Dynamic).__nil__))) {
                var _text = (@:check2r _last.text()?.__copy__() : stdgo.GoString);
                {
                    var _loc = @:check2r stdgo._internal.go.doc.Doc__outputprefix._outputPrefix.findStringSubmatchIndex(_text?.__copy__());
                    if (_loc != null) {
                        if (_loc[(2 : stdgo.GoInt)] != ((-1 : stdgo.GoInt))) {
                            _unordered = true;
                        };
                        _text = (_text.__slice__(_loc[(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
                        _text = stdgo._internal.strings.Strings_trimleft.trimLeft(_text?.__copy__(), (" " : stdgo.GoString))?.__copy__();
                        if ((((_text.length) > (0 : stdgo.GoInt) : Bool) && (_text[(0 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                            _text = (_text.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        return {
                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } = { _0 : _text?.__copy__(), _1 : _unordered, _2 : true };
                            _output = __tmp__._0;
                            _unordered = __tmp__._1;
                            _ok = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false, _2 : false };
            _output = __tmp__._0;
            _unordered = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
