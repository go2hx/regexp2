package stdgo._internal.go.doc;
function _classifyExamples(_p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _examples:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>):Void {
        if ((_examples.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var _ids = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>>);
        _ids[(stdgo.Go.str() : stdgo.GoString)] = (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
        for (__0 => _f in (@:checkr _p ?? throw "null pointer dereference").funcs) {
            if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _f ?? throw "null pointer dereference").name?.__copy__())) {
                continue;
            };
            _ids[(@:checkr _f ?? throw "null pointer dereference").name] = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
        };
        for (__1 => _t in (@:checkr _p ?? throw "null pointer dereference").types) {
            if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _t ?? throw "null pointer dereference").name?.__copy__())) {
                continue;
            };
            _ids[(@:checkr _t ?? throw "null pointer dereference").name] = (stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            for (__2 => _f in (@:checkr _t ?? throw "null pointer dereference").funcs) {
                if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _f ?? throw "null pointer dereference").name?.__copy__())) {
                    continue;
                };
                _ids[(@:checkr _f ?? throw "null pointer dereference").name] = (stdgo.Go.setRef((@:checkr _f ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            };
            for (__3 => _m in (@:checkr _t ?? throw "null pointer dereference").methods) {
                if (!stdgo._internal.go.token.Token_isexported.isExported((@:checkr _m ?? throw "null pointer dereference").name?.__copy__())) {
                    continue;
                };
                _ids[((stdgo._internal.strings.Strings_trimprefix.trimPrefix(stdgo._internal.go.doc.Doc__namewithoutinst._nameWithoutInst((@:checkr _m ?? throw "null pointer dereference").recv?.__copy__())?.__copy__(), ("*" : stdgo.GoString)) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _m ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)] = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference").examples) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>);
            };
        };
        for (__2 => _ex in _examples) {
            {
                var _i = ((@:checkr _ex ?? throw "null pointer dereference").name.length : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.go.doc.Doc__splitexamplename._splitExampleName((@:checkr _ex ?? throw "null pointer dereference").name.__copy__(), _i), _prefix:stdgo.GoString = __tmp__._0, _suffix:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
if (!_ok) {
                        {
                            _i = stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(((@:checkr _ex ?? throw "null pointer dereference").name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (95 : stdgo.GoUInt8));
                            continue;
                        };
                    };
var __tmp__ = (_ids != null && _ids.exists(_prefix.__copy__()) ? { _0 : _ids[_prefix.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>>), _1 : false }), _exs:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>> = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                        {
                            _i = stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(((@:checkr _ex ?? throw "null pointer dereference").name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (95 : stdgo.GoUInt8));
                            continue;
                        };
                    };
(@:checkr _ex ?? throw "null pointer dereference").suffix = _suffix.__copy__();
(_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>).__setData__(((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>).__append__(_ex)));
break;
                    _i = stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(((@:checkr _ex ?? throw "null pointer dereference").name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), (95 : stdgo.GoUInt8));
                };
            };
        };
        for (__3 => _exs in _ids) {
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return ((@:checkr ((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>))[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").suffix < (@:checkr ((_exs : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_example.Example>>))[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").suffix : Bool);
            });
        };
    }
