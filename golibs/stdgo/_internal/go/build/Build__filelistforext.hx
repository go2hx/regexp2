package stdgo._internal.go.build;
function _fileListForExt(_p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _ext:stdgo.GoString):stdgo.Ref<stdgo.Slice<stdgo.GoString>> {
        {
            final __value__ = _ext;
            if (__value__ == ((".c" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").cFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".cc" : stdgo.GoString)) || __value__ == ((".cpp" : stdgo.GoString)) || __value__ == ((".cxx" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").cXXFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".m" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").mFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".h" : stdgo.GoString)) || __value__ == ((".hh" : stdgo.GoString)) || __value__ == ((".hpp" : stdgo.GoString)) || __value__ == ((".hxx" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").hFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".f" : stdgo.GoString)) || __value__ == ((".F" : stdgo.GoString)) || __value__ == ((".for" : stdgo.GoString)) || __value__ == ((".f90" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").fFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".s" : stdgo.GoString)) || __value__ == ((".S" : stdgo.GoString)) || __value__ == ((".sx" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").sFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".swig" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").swigFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".swigcxx" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").swigCXXFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".syso" : stdgo.GoString))) {
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").sysoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            };
        };
        return (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
    }
