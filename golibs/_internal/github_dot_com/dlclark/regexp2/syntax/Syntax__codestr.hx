package _internal.github_dot_com.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
var _codeStr : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(43, 43, ...[
("Onerep" : stdgo.GoString),
("Notonerep" : stdgo.GoString),
("Setrep" : stdgo.GoString),
("Oneloop" : stdgo.GoString),
("Notoneloop" : stdgo.GoString),
("Setloop" : stdgo.GoString),
("Onelazy" : stdgo.GoString),
("Notonelazy" : stdgo.GoString),
("Setlazy" : stdgo.GoString),
("One" : stdgo.GoString),
("Notone" : stdgo.GoString),
("Set" : stdgo.GoString),
("Multi" : stdgo.GoString),
("Ref" : stdgo.GoString),
("Bol" : stdgo.GoString),
("Eol" : stdgo.GoString),
("Boundary" : stdgo.GoString),
("Nonboundary" : stdgo.GoString),
("Beginning" : stdgo.GoString),
("Start" : stdgo.GoString),
("EndZ" : stdgo.GoString),
("End" : stdgo.GoString),
("Nothing" : stdgo.GoString),
("Lazybranch" : stdgo.GoString),
("Branchmark" : stdgo.GoString),
("Lazybranchmark" : stdgo.GoString),
("Nullcount" : stdgo.GoString),
("Setcount" : stdgo.GoString),
("Branchcount" : stdgo.GoString),
("Lazybranchcount" : stdgo.GoString),
("Nullmark" : stdgo.GoString),
("Setmark" : stdgo.GoString),
("Capturemark" : stdgo.GoString),
("Getmark" : stdgo.GoString),
("Setjump" : stdgo.GoString),
("Backjump" : stdgo.GoString),
("Forejump" : stdgo.GoString),
("Testref" : stdgo.GoString),
("Goto" : stdgo.GoString),
("Prune" : stdgo.GoString),
("Stop" : stdgo.GoString),
("ECMABoundary" : stdgo.GoString),
("NonECMABoundary" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
