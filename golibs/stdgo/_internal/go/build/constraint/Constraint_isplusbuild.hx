package stdgo._internal.go.build.constraint;
function isPlusBuild(_line:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitplusbuild._splitPlusBuild(_line?.__copy__()), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        return _ok;
    }
