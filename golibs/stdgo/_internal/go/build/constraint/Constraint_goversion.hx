package stdgo._internal.go.build.constraint;
function goVersion(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.GoString {
        var _v = (stdgo._internal.go.build.constraint.Constraint__minversion._minVersion(_x, (1 : stdgo.GoInt)) : stdgo.GoInt);
        if ((_v < (0 : stdgo.GoInt) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        if (_v == ((0 : stdgo.GoInt))) {
            return ("go1" : stdgo.GoString);
        };
        return (("go1." : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_v)?.__copy__() : stdgo.GoString)?.__copy__();
    }
