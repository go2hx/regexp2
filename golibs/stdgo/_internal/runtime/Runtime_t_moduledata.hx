package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_moduledata_static_extension.T_moduledata_static_extension) class T_moduledata {
    @:embedded
    public var notInHeap : stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap = ({} : stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap);
    public function new(?notInHeap:stdgo._internal.runtime.internal.sys.Sys_notinheap.NotInHeap) {
        if (notInHeap != null) this.notInHeap = notInHeap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_moduledata(notInHeap);
    }
}
