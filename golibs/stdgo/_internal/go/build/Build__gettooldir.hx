package stdgo._internal.go.build;
function _getToolDir():stdgo.GoString {
        return stdgo._internal.path.filepath.Filepath_join.join(stdgo._internal.runtime.Runtime_goroot.gOROOT()?.__copy__(), ("pkg/tool/js_wasm" : stdgo.GoString))?.__copy__();
    }
