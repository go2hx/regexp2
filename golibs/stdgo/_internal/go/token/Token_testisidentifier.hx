package stdgo._internal.go.token;
function testIsIdentifier(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tests = (new stdgo.Slice<stdgo._internal.go.token.Token_t__struct_2.T__struct_2>(9, 9, ...[({ _name : ("Empty" : stdgo.GoString), _in : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _want : false } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("Space" : stdgo.GoString), _in : (" " : stdgo.GoString), _want : false } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("SpaceSuffix" : stdgo.GoString), _in : ("foo " : stdgo.GoString), _want : false } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("Number" : stdgo.GoString), _in : ("123" : stdgo.GoString), _want : false } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("Keyword" : stdgo.GoString), _in : ("func" : stdgo.GoString), _want : false } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("LettersASCII" : stdgo.GoString), _in : ("foo" : stdgo.GoString), _want : true } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("MixedASCII" : stdgo.GoString), _in : ("_bar123" : stdgo.GoString), _want : true } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("UppercaseKeyword" : stdgo.GoString), _in : ("Func" : stdgo.GoString), _want : true } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2), ({ _name : ("LettersUnicode" : stdgo.GoString), _in : ("fóö" : stdgo.GoString), _want : true } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _in : ("" : stdgo.GoString), _want : false } : stdgo._internal.go.token.Token_t__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.go.token.Token_t__struct_2.T__struct_2>);
        for (__4 => _test in _tests) {
            @:check2r _t.run(_test._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                {
                    var _got = (stdgo._internal.go.token.Token_isidentifier.isIdentifier(_test._in?.__copy__()) : Bool);
                    if (_got != (_test._want)) {
                        @:check2r _t.fatalf(("IsIdentifier(%q) = %t, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                    };
                };
            });
        };
    }
