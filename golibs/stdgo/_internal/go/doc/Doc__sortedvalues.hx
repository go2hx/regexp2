package stdgo._internal.go.doc;
function _sortedValues(_m:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> {
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>((_m.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        var _i = (0 : stdgo.GoInt);
        for (__0 => _val in _m) {
            if ((@:checkr (@:checkr _val ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").tok == (_tok)) {
                _list[(_i : stdgo.GoInt)] = _val;
                _i++;
            };
        };
        _list = (_list.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        stdgo._internal.go.doc.Doc__sortby._sortBy(function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            {
                var __0 = (stdgo._internal.go.doc.Doc__sortingname._sortingName((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").decl)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.go.doc.Doc__sortingname._sortingName((@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").decl)?.__copy__() : stdgo.GoString);
var _nj = __1, _ni = __0;
                if (_ni != (_nj)) {
                    return (_ni < _nj : Bool);
                };
            };
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._order < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._order : Bool);
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
