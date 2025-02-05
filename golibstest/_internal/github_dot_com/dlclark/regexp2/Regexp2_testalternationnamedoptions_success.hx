package _internal.github_dot_com.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import _internal.github_dot_com.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.log.Log;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function testAlternationNamedOptions_Success(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1>(9, 9, ...[({ _pattern : ("(?(cat)|dog)" : stdgo.GoString), _input : ("cat" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(cat)|dog)" : stdgo.GoString), _input : ("catdog" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(cat)dog1|dog2)" : stdgo.GoString), _input : ("catdog1" : stdgo.GoString), _expectSuccess : false, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(cat)dog1|dog2)" : stdgo.GoString), _input : ("catdog2" : stdgo.GoString), _expectSuccess : true, _matchVal : ("dog2" : stdgo.GoString) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(cat)dog1|dog2)" : stdgo.GoString), _input : ("catdog1dog2" : stdgo.GoString), _expectSuccess : true, _matchVal : ("dog2" : stdgo.GoString) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(dog2))" : stdgo.GoString), _input : ("dog2" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(cat)|dog)" : stdgo.GoString), _input : ("oof" : stdgo.GoString), _expectSuccess : false, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(a:b))" : stdgo.GoString), _input : ("a" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1), ({ _pattern : ("(?(a:))" : stdgo.GoString), _input : ("a" : stdgo.GoString), _expectSuccess : true, _matchVal : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _pattern : ("" : stdgo.GoString), _input : ("" : stdgo.GoString), _expectSuccess : false, _matchVal : ("" : stdgo.GoString) } : _internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t__struct_1.T__struct_1>);
        for (__0 => _p in _data) {
            var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(_p._pattern?.__copy__(), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
            var __tmp__ = @:check2r _re.findStringMatch(_p._input?.__copy__()), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("Unexpected error during match: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            {
                var __0 = (_p._expectSuccess : Bool), __1 = (_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__) : Bool);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    @:check2r _t.fatalf(("Success mismatch for %v, wanted %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_p._pattern), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
            if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
                {
                    var __0 = (_p._matchVal?.__copy__() : stdgo.GoString), __1 = ((@:check2r _m.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                    if (_want != (_got)) {
                        @:check2r _t.fatalf(("Match val mismatch for %v, wanted %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_p._pattern), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                    };
                };
            };
        };
    }
