package stdgo._internal.go.doc;
function _sortedFuncs(_m:stdgo._internal.go.doc.Doc_t_methodset.T_methodSet, _allMethods:Bool):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>> {
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>((_m.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
        var _i = (0 : stdgo.GoInt);
        for (__0 => _m in _m) {
            if (((@:checkr _m ?? throw "null pointer dereference").decl == null || ((@:checkr _m ?? throw "null pointer dereference").decl : Dynamic).__nil__)) {} else if (_allMethods || (@:checkr _m ?? throw "null pointer dereference").level == ((0 : stdgo.GoInt)) || !stdgo._internal.go.token.Token_isexported.isExported(stdgo._internal.go.doc.Doc__removestar._removeStar((@:checkr _m ?? throw "null pointer dereference").orig?.__copy__())?.__copy__())) {
                _list[(_i : stdgo.GoInt)] = _m;
                _i++;
            };
        };
        _list = (_list.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
        stdgo._internal.go.doc.Doc__sortby._sortBy(function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").name < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").name : Bool);
        }, function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            {
                final __tmp__0 = _list[(_j : stdgo.GoInt)];
                final __tmp__1 = _list[(_i : stdgo.GoInt)];
                final __tmp__2 = _list;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _list;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = __tmp__0;
                __tmp__4[__tmp__5] = __tmp__1;
            };
        }, (_list.length));
        return _list;
    }
