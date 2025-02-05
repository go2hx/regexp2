package stdgo._internal.go.doc;
function examples(_testFiles:haxe.Rest<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> {
        var _testFiles = new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>>(_testFiles.length, 0, ..._testFiles);
        var _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
        for (__0 => _file in _testFiles) {
            var _hasTests = (false : Bool);
            var _numDecl = (0 : stdgo.GoInt);
            var _flist:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>);
            for (__1 => _decl in (@:checkr _file ?? throw "null pointer dereference").decls) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>), _1 : false };
                    }, _g = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && ((@:checkr _g ?? throw "null pointer dereference").tok != (75 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                        _numDecl++;
                        continue;
                    };
                };
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_decl) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>), _1 : false };
                }, _f = __tmp__._0, _ok = __tmp__._1;
                if ((!_ok || ((@:checkr _f ?? throw "null pointer dereference").recv != null && (((@:checkr _f ?? throw "null pointer dereference").recv : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").recv : Dynamic).__nil__)) : Bool)) {
                    continue;
                };
                _numDecl++;
                var _name = ((@:checkr (@:checkr _f ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString);
                if (((stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Test" : stdgo.GoString)) || stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Benchmark" : stdgo.GoString)) : Bool) || stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Fuzz" : stdgo.GoString)) : Bool)) {
                    _hasTests = true;
                    continue;
                };
                if (!stdgo._internal.go.doc.Doc__istest._isTest(_name?.__copy__(), ("Example" : stdgo.GoString))) {
                    continue;
                };
                {
                    var _params = (@:checkr (@:checkr _f ?? throw "null pointer dereference").type ?? throw "null pointer dereference").params;
                    if (((@:checkr _params ?? throw "null pointer dereference").list.length) != ((0 : stdgo.GoInt))) {
                        continue;
                    };
                };
                if (((@:checkr _f ?? throw "null pointer dereference").body == null || ((@:checkr _f ?? throw "null pointer dereference").body : Dynamic).__nil__)) {
                    continue;
                };
                var _doc:stdgo.GoString = ("" : stdgo.GoString);
                if (((@:checkr _f ?? throw "null pointer dereference").doc != null && (((@:checkr _f ?? throw "null pointer dereference").doc : Dynamic).__nil__ == null || !((@:checkr _f ?? throw "null pointer dereference").doc : Dynamic).__nil__))) {
                    _doc = @:check2r (@:checkr _f ?? throw "null pointer dereference").doc.text()?.__copy__();
                };
                var __tmp__ = stdgo._internal.go.doc.Doc__exampleoutput._exampleOutput((@:checkr _f ?? throw "null pointer dereference").body, (@:checkr _file ?? throw "null pointer dereference").comments), _output:stdgo.GoString = __tmp__._0, _unordered:Bool = __tmp__._1, _hasOutput:Bool = __tmp__._2;
                _flist = (_flist.__append__((stdgo.Go.setRef(({ name : (_name.__slice__(((("Example" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), doc : _doc?.__copy__(), code : stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").body), play : stdgo._internal.go.doc.Doc__playexample._playExample(_file, _f), comments : (@:checkr _file ?? throw "null pointer dereference").comments, output : _output?.__copy__(), unordered : _unordered, emptyOutput : ((_output == (stdgo.Go.str() : stdgo.GoString)) && _hasOutput : Bool), order : (_flist.length) } : stdgo._internal.go.doc.Doc_example.Example)) : stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>)));
            };
            if (((!_hasTests && (_numDecl > (1 : stdgo.GoInt) : Bool) : Bool) && (_flist.length == (1 : stdgo.GoInt)) : Bool)) {
                (@:checkr _flist[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").code = stdgo.Go.asInterface(_file);
                (@:checkr _flist[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").play = stdgo._internal.go.doc.Doc__playexamplefile._playExampleFile(_file);
            };
            _list = (_list.__append__(...(_flist : Array<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>)));
        };
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_list), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").name < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").name : Bool);
        });
        return _list;
    }
