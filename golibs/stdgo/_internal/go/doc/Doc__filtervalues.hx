package stdgo._internal.go.doc;
function _filterValues(_a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, _f:stdgo._internal.go.doc.Doc_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> {
        var _w = (0 : stdgo.GoInt);
        for (__0 => _vd in _a) {
            if (stdgo._internal.go.doc.Doc__matchdecl._matchDecl((@:checkr _vd ?? throw "null pointer dereference").decl, _f)) {
                _a[(_w : stdgo.GoInt)] = _vd;
                _w++;
            };
        };
        return (_a.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
    }
