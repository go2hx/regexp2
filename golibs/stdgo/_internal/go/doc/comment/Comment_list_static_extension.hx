package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.List_asInterface) class List_static_extension {
    @:keep
    @:tdfield
    static public function blankBetween( _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = _l;
        if ((@:checkr _l ?? throw "null pointer dereference").forceBlankBetween) {
            return true;
        };
        for (__1 => _item in (@:checkr _l ?? throw "null pointer dereference").items) {
            if (((@:checkr _item ?? throw "null pointer dereference").content.length) != ((1 : stdgo.GoInt))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function blankBefore( _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = _l;
        return ((@:checkr _l ?? throw "null pointer dereference").forceBlankBefore || @:check2r _l.blankBetween() : Bool);
    }
    @:keep
    @:tdfield
    static public function _block( _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = _;
    }
}
