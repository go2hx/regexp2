package stdgo._internal.go.printer;
function _cutoff(_e:stdgo.Ref<stdgo._internal.go.ast.Ast_binaryexpr.BinaryExpr>, _depth:stdgo.GoInt):stdgo.GoInt {
        var __tmp__ = stdgo._internal.go.printer.Printer__walkbinary._walkBinary(_e), _has4:Bool = __tmp__._0, _has5:Bool = __tmp__._1, _maxProblem:stdgo.GoInt = __tmp__._2;
        if ((_maxProblem > (0 : stdgo.GoInt) : Bool)) {
            return (_maxProblem + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_has4 && _has5 : Bool)) {
            if (_depth == ((1 : stdgo.GoInt))) {
                return (5 : stdgo.GoInt);
            };
            return (4 : stdgo.GoInt);
        };
        if (_depth == ((1 : stdgo.GoInt))) {
            return (6 : stdgo.GoInt);
        };
        return (4 : stdgo.GoInt);
    }
