package stdgo._internal.go.constant;
var _floatTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(36, 36, ...[
("1_2_3. = 123." : stdgo.GoString),
("0_123. = 123." : stdgo.GoString),
("0_0e0 = 0." : stdgo.GoString),
("1_2_3e0 = 123." : stdgo.GoString),
("0_123e0 = 123." : stdgo.GoString),
("0e-0_0 = 0." : stdgo.GoString),
("1_2_3E+0 = 123." : stdgo.GoString),
("0123E1_2_3 = 123e123" : stdgo.GoString),
("0.e+1 = 0." : stdgo.GoString),
("123.E-1_0 = 123e-10" : stdgo.GoString),
("01_23.e123 = 123e123" : stdgo.GoString),
(".0e-1 = .0" : stdgo.GoString),
(".123E+10 = .123e10" : stdgo.GoString),
(".0123E123 = .0123e123" : stdgo.GoString),
("1_2_3.123 = 123.123" : stdgo.GoString),
("0123.01_23 = 123.0123" : stdgo.GoString),
("1e-1000000000 = 0" : stdgo.GoString),
("1e+1000000000 = ?" : stdgo.GoString),
("6e5518446744 = ?" : stdgo.GoString),
("-6e5518446744 = ?" : stdgo.GoString),
("0x0.p+0 = 0." : stdgo.GoString),
("0Xdeadcafe.p-10 = 0xdeadcafe/1024" : stdgo.GoString),
("0x1234.P84 = 0x1234000000000000000000000" : stdgo.GoString),
("0x.1p-0 = 1/16" : stdgo.GoString),
("0X.deadcafep4 = 0xdeadcafe/0x10000000" : stdgo.GoString),
("0x.1234P+12 = 0x1234/0x10" : stdgo.GoString),
("0x0p0 = 0." : stdgo.GoString),
("0Xdeadcafep+1 = 0x1bd5b95fc" : stdgo.GoString),
("0x1234P-10 = 0x1234/1024" : stdgo.GoString),
("0x0.0p0 = 0." : stdgo.GoString),
("0Xdead.cafep+1 = 0x1bd5b95fc/0x10000" : stdgo.GoString),
("0x12.34P-10 = 0x1234/0x40000" : stdgo.GoString),
("0Xdead_cafep+1 = 0xdeadcafep+1" : stdgo.GoString),
("0x_1234P-10 = 0x1234p-10" : stdgo.GoString),
("0X_dead_cafe.p-10 = 0xdeadcafe.p-10" : stdgo.GoString),
("0x12_34.P1_2_3 = 0x1234.p123" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
