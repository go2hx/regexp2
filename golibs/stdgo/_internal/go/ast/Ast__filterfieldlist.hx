package stdgo._internal.go.ast;
function _filterFieldList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _removedFields = false;
        if ((_fields == null || (_fields : Dynamic).__nil__)) {
            return _removedFields = false;
        };
        var _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        var _j = (0 : stdgo.GoInt);
        for (__0 => _f in _list) {
            var _keepField = (false : Bool);
            if (((@:checkr _f ?? throw "null pointer dereference").names.length) == ((0 : stdgo.GoInt))) {
                var _name = stdgo._internal.go.ast.Ast__fieldname._fieldName((@:checkr _f ?? throw "null pointer dereference").type);
                _keepField = ((_name != null && ((_name : Dynamic).__nil__ == null || !(_name : Dynamic).__nil__)) && _filter((@:checkr _name ?? throw "null pointer dereference").name?.__copy__()) : Bool);
            } else {
                var _n = ((@:checkr _f ?? throw "null pointer dereference").names.length : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference").names = stdgo._internal.go.ast.Ast__filteridentlist._filterIdentList((@:checkr _f ?? throw "null pointer dereference").names, _filter);
                if ((((@:checkr _f ?? throw "null pointer dereference").names.length) < _n : Bool)) {
                    _removedFields = true;
                };
                _keepField = (((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool);
            };
            if (_keepField) {
                if (_export) {
                    stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _f ?? throw "null pointer dereference").type, _filter, _export);
                };
                _list[(_j : stdgo.GoInt)] = _f;
                _j++;
            };
        };
        if ((_j < (_list.length) : Bool)) {
            _removedFields = true;
        };
        (@:checkr _fields ?? throw "null pointer dereference").list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        return _removedFields;
    }
