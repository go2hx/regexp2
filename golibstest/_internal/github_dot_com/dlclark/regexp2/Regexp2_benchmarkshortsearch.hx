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
function benchmarkShortSearch(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        _internal.github_dot_com.dlclark.regexp2.Regexp2_settimeoutcheckperiod.setTimeoutCheckPeriod((100000000i64 : stdgo._internal.time.Time_duration.Duration));
        {};
        for (__0 => _mode in (new stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496>(6, 6, ...[(new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-no-timeout" : stdgo.GoString), false, _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-fixed-timeout" : stdgo.GoString), false, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("serial-increasing-timeout" : stdgo.GoString), false, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-no-timeout" : stdgo.GoString), true, _internal.github_dot_com.dlclark.regexp2.Regexp2_defaultmatchtimeout.defaultMatchTimeout, (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-fixed-timeout" : stdgo.GoString), true, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (0i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496), (new _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496(("parallel-increasing-timeout" : stdgo.GoString), true, (1000000000i64 : stdgo._internal.time.Time_duration.Duration), (1000000000i64 : stdgo._internal.time.Time_duration.Duration)) : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({} : _internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496)])) : stdgo.Slice<_internal.github_dot_com.dlclark.regexp2.Regexp2_t_benchmarkshortsearch___localname___benchmark_9496.T_benchmarkShortSearch___localname___benchmark_9496>)) {
            @:check2r _b.run(_mode._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _t = _internal.github_dot_com.dlclark.regexp2.Regexp2__maketext._makeText((100 : stdgo.GoInt));
                @:check2r _b.setBytes((_t.length : stdgo.GoInt64));
                var _matchOnce = function(_r:stdgo.Ref<_internal.github_dot_com.dlclark.regexp2.Regexp2_regexp.Regexp>):Void {
                    {
                        var __tmp__ = @:check2r _r.matchRunes(_t), _m:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_m) {
                            @:check2r _b.fatal(stdgo.Go.toInterface(("match!" : stdgo.GoString)));
                        } else if (_err != null) {
                            @:check2r _b.fatalf(("Err %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                if (!_mode._parallel) {
                    var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
                    (@:checkr _r ?? throw "null pointer dereference").matchTimeout = _mode._timeout;
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                            _matchOnce(_r);
(@:checkr _r ?? throw "null pointer dereference").matchTimeout = ((@:checkr _r ?? throw "null pointer dereference").matchTimeout + (_mode._increase) : stdgo._internal.time.Time_duration.Duration);
                            _i++;
                        };
                    };
                } else {
                    @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
                        var _r = _internal.github_dot_com.dlclark.regexp2.Regexp2_mustcompile.mustCompile(("ABCDEFGHIJKLMNOPQRSTUVWXYZ$" : stdgo.GoString), (0 : _internal.github_dot_com.dlclark.regexp2.Regexp2_regexoptions.RegexOptions));
                        (@:checkr _r ?? throw "null pointer dereference").matchTimeout = _mode._timeout;
                        while (@:check2r _pb.next()) {
                            _matchOnce(_r);
                            (@:checkr _r ?? throw "null pointer dereference").matchTimeout = ((@:checkr _r ?? throw "null pointer dereference").matchTimeout + (_mode._increase) : stdgo._internal.time.Time_duration.Duration);
                        };
                    });
                };
            });
        };
    }
