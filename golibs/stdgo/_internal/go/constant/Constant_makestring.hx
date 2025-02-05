package stdgo._internal.go.constant;
function makeString(_s:stdgo.GoString):stdgo._internal.go.constant.Constant_value.Value {
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.constant.Constant__emptystring._emptyString) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _s : _s?.__copy__() } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
    }
