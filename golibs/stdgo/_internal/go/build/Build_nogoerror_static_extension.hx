package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.NoGoError_asInterface) class NoGoError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.go.build.Build_nogoerror.NoGoError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.go.build.Build_nogoerror.NoGoError> = _e;
        return (("no buildable Go source files in " : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").dir?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
