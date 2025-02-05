package stdgo._internal.go.types;
function _defPredeclaredFuncs():Void {
        for (_i => _ in stdgo._internal.go.types.Types__predeclaredfuncs._predeclaredFuncs) {
            var _id = (_i : stdgo._internal.go.types.Types_t_builtinid.T_builtinId);
            if (((_id == (26 : stdgo._internal.go.types.Types_t_builtinid.T_builtinId)) || (_id == (27 : stdgo._internal.go.types.Types_t_builtinid.T_builtinId)) : Bool)) {
                continue;
            };
            stdgo._internal.go.types.Types__def._def(stdgo.Go.asInterface(stdgo._internal.go.types.Types__newbuiltin._newBuiltin(_id)));
        };
    }
