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
function _runRegexTrial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _pattern:stdgo.GoString, _options:_internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions, _input:stdgo.GoString, _expected:stdgo.GoString):Void {
        var _result = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = _internal.github_dot_com.dlclark.regexp2.Regexp2_compile.compile(_pattern?.__copy__(), _options), _re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (_expected != (("Error." : stdgo.GoString))) {
                @:check2r _t.errorf(("Compiling pattern \'%v\' with options \'%v\' -- expected \'%v\' got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_options), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_err.error()));
            };
            return;
        };
        var _groupNums = @:check2r _re.getGroupNumbers();
        var __tmp__ = @:check2r _re.findStringMatch(_input?.__copy__()), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _result = stdgo._internal.fmt.Fmt_sprintf.sprintf(("Error. %v" : stdgo.GoString), stdgo.Go.toInterface(_err.error()))?.__copy__();
        } else if ((_m != null && ((_m : Dynamic).__nil__ == null || !(_m : Dynamic).__nil__))) {
            _result = ("Pass." : stdgo.GoString);
            for (_i => _group in @:check2r _m.groups()) {
                var _gid = (_groupNums[(_i : stdgo.GoInt)] : stdgo.GoInt);
                _result = (_result + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((" Group[%v]=" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_gid)))?.__copy__() : stdgo.GoString);
                for (__0 => _cp in _group.captures) {
                    _result = (_result + (stdgo._internal.fmt.Fmt_sprintf.sprintf((("(%v,%v)" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_cp.index), stdgo.Go.toInterface(_cp.length_)))?.__copy__() : stdgo.GoString);
                };
            };
        } else {
            _result = ("Fail." : stdgo.GoString);
        };
        if (_expected != (_result)) {
            @:check2r _t.errorf(("Matching input \'%v\' against pattern \'%v\' with options \'%v\' -- expected \'%v\' got \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(_pattern), stdgo.Go.toInterface(_options), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_result));
        };
    }
