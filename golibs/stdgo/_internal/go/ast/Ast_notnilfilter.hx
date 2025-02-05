package stdgo._internal.go.ast;
function notNilFilter(__0:stdgo.GoString, _v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        {
            final __value__ = _v.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                return !_v.isNil();
            };
        };
        return true;
    }
