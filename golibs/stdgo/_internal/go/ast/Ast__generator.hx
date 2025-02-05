package stdgo._internal.go.ast;
function _generator(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        for (__0 => _group in (@:checkr _file ?? throw "null pointer dereference").comments) {
            for (__1 => _comment in (@:checkr _group ?? throw "null pointer dereference").list) {
                if ((@:check2r _comment.pos() > (@:checkr _file ?? throw "null pointer dereference").package_ : Bool)) {
                    break;
                };
                {};
                if (stdgo._internal.strings.Strings_contains.contains((@:checkr _comment ?? throw "null pointer dereference").text?.__copy__(), ("// Code generated " : stdgo.GoString))) {
                    for (__2 => _line in stdgo._internal.strings.Strings_split.split((@:checkr _comment ?? throw "null pointer dereference").text?.__copy__(), ("\n" : stdgo.GoString))) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cutprefix.cutPrefix(_line?.__copy__(), ("// Code generated " : stdgo.GoString)), _rest:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                {
                                    var __tmp__ = stdgo._internal.strings.Strings_cutsuffix.cutSuffix(_rest?.__copy__(), (" DO NOT EDIT." : stdgo.GoString)), _gen:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        return { _0 : _gen?.__copy__(), _1 : true };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
    }
