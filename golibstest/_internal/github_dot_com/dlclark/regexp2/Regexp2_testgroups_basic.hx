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
function testGroups_Basic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _data = (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905>(12, 12, ...[
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("(?<first_name>\\S+)\\s(?<last_name>\\S+)" : stdgo.GoString), ("Ryan Byington" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("0" : stdgo.GoString), ("first_name" : stdgo.GoString), ("last_name" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Ryan Byington" : stdgo.GoString), ("Ryan" : stdgo.GoString), ("Byington" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("((?<One>abc)\\d+)?(?<Two>xyz)(.*)" : stdgo.GoString), ("abc208923xyzanqnakl" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("One" : stdgo.GoString), ("Two" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("abc208923xyzanqnakl" : stdgo.GoString), ("abc208923" : stdgo.GoString), ("anqnakl" : stdgo.GoString), ("abc" : stdgo.GoString), ("xyz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("((?<256>abc)\\d+)?(?<16>xyz)(.*)" : stdgo.GoString), ("0272saasdabc8978xyz][]12_+-" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("16" : stdgo.GoString), ("256" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (16 : stdgo.GoInt), (256 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("abc8978xyz][]12_+-" : stdgo.GoString), ("abc8978" : stdgo.GoString), ("][]12_+-" : stdgo.GoString), ("xyz" : stdgo.GoString), ("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("((?<4>abc)(?<digits>\\d+))?(?<2>xyz)(?<everything_else>.*)" : stdgo.GoString), ("0272saasdabc8978xyz][]12_+-" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("digits" : stdgo.GoString), ("4" : stdgo.GoString), ("everything_else" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("abc8978xyz][]12_+-" : stdgo.GoString), ("abc8978" : stdgo.GoString), ("xyz" : stdgo.GoString), ("8978" : stdgo.GoString), ("abc" : stdgo.GoString), ("][]12_+-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("(?<first_name>\\S+)\\s(?<first_name>\\S+)" : stdgo.GoString), ("Ryan Byington" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("0" : stdgo.GoString), ("first_name" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Ryan Byington" : stdgo.GoString), ("Byington" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("(?<15>\\S+)\\s(?<15>\\S+)" : stdgo.GoString), ("Ryan Byington" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("0" : stdgo.GoString), ("15" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (15 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Ryan Byington" : stdgo.GoString), ("Byington" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("(?\'first_name\'\\S+)\\s(?\'last_name\'\\S+)" : stdgo.GoString), ("Ryan Byington" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("0" : stdgo.GoString), ("first_name" : stdgo.GoString), ("last_name" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("Ryan Byington" : stdgo.GoString), ("Ryan" : stdgo.GoString), ("Byington" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("((?\'One\'abc)\\d+)?(?\'Two\'xyz)(.*)" : stdgo.GoString), ("abc208923xyzanqnakl" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("One" : stdgo.GoString), ("Two" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("abc208923xyzanqnakl" : stdgo.GoString), ("abc208923" : stdgo.GoString), ("anqnakl" : stdgo.GoString), ("abc" : stdgo.GoString), ("xyz" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("((?\'256\'abc)\\d+)?(?\'16\'xyz)(.*)" : stdgo.GoString), ("0272saasdabc8978xyz][]12_+-" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("16" : stdgo.GoString), ("256" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (16 : stdgo.GoInt), (256 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("abc8978xyz][]12_+-" : stdgo.GoString), ("abc8978" : stdgo.GoString), ("][]12_+-" : stdgo.GoString), ("xyz" : stdgo.GoString), ("abc" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("((?\'4\'abc)(?\'digits\'\\d+))?(?\'2\'xyz)(?\'everything_else\'.*)" : stdgo.GoString), ("0272saasdabc8978xyz][]12_+-" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("2" : stdgo.GoString), ("digits" : stdgo.GoString), ("4" : stdgo.GoString), ("everything_else" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(6, 6, ...[("abc8978xyz][]12_+-" : stdgo.GoString), ("abc8978" : stdgo.GoString), ("xyz" : stdgo.GoString), ("8978" : stdgo.GoString), ("abc" : stdgo.GoString), ("][]12_+-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("(?\'first_name\'\\S+)\\s(?\'first_name\'\\S+)" : stdgo.GoString), ("Ryan Byington" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("0" : stdgo.GoString), ("first_name" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Ryan Byington" : stdgo.GoString), ("Byington" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905),
(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905(("(?\'15\'\\S+)\\s(?\'15\'\\S+)" : stdgo.GoString), ("Ryan Byington" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("0" : stdgo.GoString), ("15" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (15 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("Ryan Byington" : stdgo.GoString), ("Byington" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905>);
        var _fatalf = function(_re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _v:_internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
            var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
            _args = (_args.__append__(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)), stdgo.Go.toInterface(@:check2r (@:checkr _re ?? throw "null pointer dereference")._code.dump())));
            @:check2r _t.fatalf((_format + (" using test data: %#v\ndump:%v" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
        var _validateGroupNamesNumbers = function(_re:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>, _v:_internal.github_dot_com.dlclark.regexp2.Regexp2_t_testgroups_basic___localname___d_4905.T_testGroups_Basic___localname___d_4905):Void {
            if ((_v._name.length) != ((_v._num.length))) {
                _fatalf(_re, _v?.__copy__(), ("Invalid data, group name count and number count must match" : stdgo.GoString));
            };
            var _groupNames = @:check2r _re.getGroupNames();
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_groupNames), stdgo.Go.toInterface(_v._name))) {
                _fatalf(_re, _v?.__copy__(), ("group names expected: %v, actual: %v" : stdgo.GoString), stdgo.Go.toInterface(_v._name), stdgo.Go.toInterface(_groupNames));
            };
            var _groupNums = @:check2r _re.getGroupNumbers();
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_groupNums), stdgo.Go.toInterface(_v._num))) {
                _fatalf(_re, _v?.__copy__(), ("group numbers expected: %v, actual: %v" : stdgo.GoString), stdgo.Go.toInterface(_v._num), stdgo.Go.toInterface(_groupNums));
            };
            for (_i => _ in _groupNums) {
                {
                    var __0 = (_groupNums[(_i : stdgo.GoInt)] : stdgo.GoInt), __1 = (@:check2r _re.groupNumberFromName(_groupNames[(_i : stdgo.GoInt)]?.__copy__()) : stdgo.GoInt);
var _got = __1, _want = __0;
                    if (_want != (_got)) {
                        _fatalf(_re, _v?.__copy__(), ("group num from name Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                    };
                };
                {
                    var __0 = (_groupNames[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString), __1 = (@:check2r _re.groupNameFromNumber(_groupNums[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                    if (_want != (_got)) {
                        _fatalf(_re, _v?.__copy__(), ("group name from num Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                    };
                };
            };
        };
        for (__0 => _v in _data) {
            var _re = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(_v._p?.__copy__(), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
            _validateGroupNamesNumbers(_re, _v?.__copy__());
            var __tmp__ = @:check2r _re.findStringMatch(_v._s?.__copy__()), _m:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_match.Match> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _fatalf(_re, _v?.__copy__(), ("Unexpected error in match: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            if ((_m == null || (_m : Dynamic).__nil__)) {
                _fatalf(_re, _v?.__copy__(), ("Match is nil" : stdgo.GoString));
            };
            {
                var __0 = (_v._strs.length : stdgo.GoInt), __1 = (@:check2r _m.groupCount() : stdgo.GoInt);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    _fatalf(_re, _v?.__copy__(), ("GroupCount() Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
            var _g = @:check2r _m.groups();
            {
                var __0 = (_v._strs.length : stdgo.GoInt), __1 = (_g.length : stdgo.GoInt);
var _got = __1, _want = __0;
                if (_want != (_got)) {
                    _fatalf(_re, _v?.__copy__(), ("len(m.Groups()) Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                };
            };
            for (_i => _ in _v._name) {
                var _grp1 = @:check2r _m.groupByName(_v._name[(_i : stdgo.GoInt)]?.__copy__());
                var _grp2 = @:check2r _m.groupByNumber(_v._num[(_i : stdgo.GoInt)]);
                if (_grp1 != (_grp2)) {
                    _fatalf(_re, _v?.__copy__(), ("Expected GroupByName and GroupByNumber to return same result for %v, %v" : stdgo.GoString), stdgo.Go.toInterface(_v._name[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_v._num[(_i : stdgo.GoInt)]));
                };
                {
                    var __0 = (_v._strs[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString), __1 = ((@:check2r _grp1.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _got = __1, _want = __0;
                    if (_want != (_got)) {
                        _fatalf(_re, _v?.__copy__(), ("Value[%v] Wanted \'%v\'\nGot \'%v\'" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                    };
                };
            };
            _validateGroupNamesNumbers(_re, _v?.__copy__());
        };
    }
