package stdgo._internal.go.types;
function testTermUnion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _test in (new stdgo.Slice<stdgo.GoString>(29, 29, ...[
("∅ ∅ ∅ ∅" : stdgo.GoString),
("∅ 𝓤 𝓤 ∅" : stdgo.GoString),
("∅ int int ∅" : stdgo.GoString),
("∅ ~int ~int ∅" : stdgo.GoString),
("∅ myInt myInt ∅" : stdgo.GoString),
("𝓤 𝓤 𝓤 ∅" : stdgo.GoString),
("𝓤 int 𝓤 ∅" : stdgo.GoString),
("𝓤 ~int 𝓤 ∅" : stdgo.GoString),
("𝓤 myInt 𝓤 ∅" : stdgo.GoString),
("int int int ∅" : stdgo.GoString),
("int ~int ~int ∅" : stdgo.GoString),
("int string int string" : stdgo.GoString),
("int ~string int ~string" : stdgo.GoString),
("int myInt int myInt" : stdgo.GoString),
("~int ~string ~int ~string" : stdgo.GoString),
("~int myInt ~int ∅" : stdgo.GoString),
("𝓤 ∅ 𝓤 ∅" : stdgo.GoString),
("int ∅ int ∅" : stdgo.GoString),
("~int ∅ ~int ∅" : stdgo.GoString),
("myInt ∅ myInt ∅" : stdgo.GoString),
("int 𝓤 𝓤 ∅" : stdgo.GoString),
("~int 𝓤 𝓤 ∅" : stdgo.GoString),
("myInt 𝓤 𝓤 ∅" : stdgo.GoString),
("~int int ~int ∅" : stdgo.GoString),
("string int string int" : stdgo.GoString),
("~string int ~string int" : stdgo.GoString),
("myInt int myInt int" : stdgo.GoString),
("~string ~int ~string ~int" : stdgo.GoString),
("myInt ~int ~int ∅" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _args = stdgo._internal.go.types.Types__split._split(_test?.__copy__(), (4 : stdgo.GoInt));
            var _x = stdgo._internal.go.types.Types__testterm._testTerm(_args[(0 : stdgo.GoInt)]?.__copy__());
            var _y = stdgo._internal.go.types.Types__testterm._testTerm(_args[(1 : stdgo.GoInt)]?.__copy__());
            var _want1 = stdgo._internal.go.types.Types__testterm._testTerm(_args[(2 : stdgo.GoInt)]?.__copy__());
            var _want2 = stdgo._internal.go.types.Types__testterm._testTerm(_args[(3 : stdgo.GoInt)]?.__copy__());
            {
                var __tmp__ = @:check2r _x._union(_y), _got1:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._0, _got2:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> = __tmp__._1;
                if ((!@:check2r _got1._equal(_want1) || !@:check2r _got2._equal(_want2) : Bool)) {
                    @:check2r _t.errorf(("%v.union(%v) = %v, %v; want %v, %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)), stdgo.Go.toInterface(stdgo.Go.asInterface(_y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want2)));
                };
            };
        };
    }
