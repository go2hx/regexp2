package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.Package_asInterface) class Package_static_extension {
    @:keep
    @:tdfield
    static public function isCommand( _p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package> = _p;
        return (@:checkr _p ?? throw "null pointer dereference").name == (("main" : stdgo.GoString));
    }
}
