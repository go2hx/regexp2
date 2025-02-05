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
function testProgramTooLongForBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _longRegex = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("(one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|nineteen|twenty|twentyone|twentytwo|twentythree|twentyfour|twentyfive|twentysix|twentyseven|twentyeight|twentynine|thirty|thirtyone|thirtytwo|thirtythree|thirtyfour|thirtyfive|thirtysix|thirtyseven|thirtyeight|thirtynine|forty|fortyone|fortytwo|fortythree|fortyfour|fortyfive|fortysix|fortyseven|fortyeight|fortynine|fifty|fiftyone|fiftytwo|fiftythree|fiftyfour|fiftyfive|fiftysix|fiftyseven|fiftyeight|fiftynine|sixty|sixtyone|sixtytwo|sixtythree|sixtyfour|sixtyfive|sixtysix|sixtyseven|sixtyeight|sixtynine|seventy|seventyone|seventytwo|seventythree|seventyfour|seventyfive|seventysix|seventyseven|seventyeight|seventynine|eighty|eightyone|eightytwo|eightythree|eightyfour|eightyfive|eightysix|eightyseven|eightyeight|eightynine|ninety|ninetyone|ninetytwo|ninetythree|ninetyfour|ninetyfive|ninetysix|ninetyseven|ninetyeight|ninetynine|onehundred)" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
        {
            var __tmp__ = @:check2r _longRegex.matchString(("two" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_m) {
                @:check2r _t.errorf(("longRegex.MatchString(\"two\") was false, want true" : stdgo.GoString));
            } else if (_err != null) {
                @:check2r _t.errorf(("Error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = @:check2r _longRegex.matchString(("xxx" : stdgo.GoString)), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_m) {
                @:check2r _t.errorf(("longRegex.MatchString(\"xxx\") was true, want false" : stdgo.GoString));
            } else if (_err != null) {
                @:check2r _t.errorf(("Error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
