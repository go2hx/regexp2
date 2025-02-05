package stdgo._internal.go.build;
function importDir(_dir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        return @:check2 stdgo._internal.go.build.Build_default_.default_.importDir(_dir?.__copy__(), _mode);
    }
