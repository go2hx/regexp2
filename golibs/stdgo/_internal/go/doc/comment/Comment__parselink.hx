package stdgo._internal.go.doc.comment;
function _parseLink(_line:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>; var _1 : Bool; } {
        if (((_line == (stdgo.Go.str() : stdgo.GoString)) || (_line[(0 : stdgo.GoInt)] != (91 : stdgo.GoUInt8)) : Bool)) {
            return { _0 : null, _1 : false };
        };
        var _i = (stdgo._internal.strings.Strings_index.index(_line?.__copy__(), ("]:" : stdgo.GoString)) : stdgo.GoInt);
        if ((((_i < (0 : stdgo.GoInt) : Bool) || ((_i + (3 : stdgo.GoInt) : stdgo.GoInt) >= (_line.length) : Bool) : Bool) || (((_line[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_line[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] != (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            return { _0 : null, _1 : false };
        };
        var _text = ((_line.__slice__((1 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _url = (stdgo._internal.strings.Strings_trimspace.trimSpace((_line.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        var _j = (stdgo._internal.strings.Strings_index.index(_url?.__copy__(), ("://" : stdgo.GoString)) : stdgo.GoInt);
        if (((_j < (0 : stdgo.GoInt) : Bool) || !stdgo._internal.go.doc.comment.Comment__isscheme._isScheme((_url.__slice__(0, _j) : stdgo.GoString)?.__copy__()) : Bool)) {
            return { _0 : null, _1 : false };
        };
        return { _0 : (stdgo.Go.setRef(({ text : _text?.__copy__(), uRL : _url?.__copy__() } : stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>), _1 : true };
    }
