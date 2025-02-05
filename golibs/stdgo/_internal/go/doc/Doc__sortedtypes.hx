package stdgo._internal.go.doc;
function _sortedTypes(_m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.Doc_t_namedtype.T_namedType>>, _allMethods:Bool):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>> {
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>((_m.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>);
        var _i = (0 : stdgo.GoInt);
        for (__0 => _t in _m) {
            _list[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ doc : (@:checkr _t ?? throw "null pointer dereference")._doc?.__copy__(), name : (@:checkr _t ?? throw "null pointer dereference")._name?.__copy__(), decl : (@:checkr _t ?? throw "null pointer dereference")._decl, consts : stdgo._internal.go.doc.Doc__sortedvalues._sortedValues((@:checkr _t ?? throw "null pointer dereference")._values, (64 : stdgo._internal.go.token.Token_token.Token)), vars : stdgo._internal.go.doc.Doc__sortedvalues._sortedValues((@:checkr _t ?? throw "null pointer dereference")._values, (85 : stdgo._internal.go.token.Token_token.Token)), funcs : stdgo._internal.go.doc.Doc__sortedfuncs._sortedFuncs((@:checkr _t ?? throw "null pointer dereference")._funcs, true), methods : stdgo._internal.go.doc.Doc__sortedfuncs._sortedFuncs((@:checkr _t ?? throw "null pointer dereference")._methods, _allMethods) } : stdgo._internal.go.doc.Doc_type_.Type_)) : stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>);
            _i++;
        };
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
