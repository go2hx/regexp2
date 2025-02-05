function main() {
    final args = Sys.args();
    trace("run command: " + args[0]);
    switch args[0] {
		case "testsetup":
			if (sys.FileSystem.exists("golibstest"))
				Sys.command("rm -r -d golibstest");
			Sys.exit(Sys.command("haxelib run go2hx --rebuild https://github.com/dlclark/regexp2 --test --out golibstest --norun -compiler_nodejs --hxml test.hxml"));
        case "test":
			final excludes = "--exclude TestMarshal --exclude TestUnMarshal --exclude TestPcre_Basics --exclude TestIncorrectTimeoutError --exclude TestStopTimeoutClock";
			//Sys.setCwd("regexp2");
            final target = args[1];
            trace("target", target);
            final out = 'test.$target';
            var buildCmd = buildTarget(target, out, "_internal.github_dot_com.dlclark.regexp2_dot_test.Regexp2_dot_test");
			buildCmd = "haxe test.hxml " + buildCmd;
			if (target == "interp")
				buildCmd += " " + excludes;
			Sys.println(buildCmd);
            final code = Sys.command(buildCmd);
			if (code != 0)
				Sys.exit(code);
            final runCmd = runTarget(target, out, [], "") + " " + excludes;
            if (target != "interp") {
                Sys.exit(Sys.command(runCmd));
			}
        case "example": // TODO proper testing
		final target = args[1];
		final out = 'test.$target';
            var code = Sys.command("haxe example.hxml " + buildTarget(target,out, "Example"));
			if (code != 0)
				Sys.exit(code);
			final runCmd = runTarget(target, out, [], "");
            if (runCmd != "") {
                Sys.exit(Sys.command(runCmd));
			}else{
				Sys.println(runCmd);
			}
		case "actions", "action":
			Sys.exit(Sys.command("haxe scripts/github-actions/build.hxml"));
        case "build":
            Sys.command("rm -r -d golibs");
            // -nodeps
			Sys.command("haxelib run go2hx extraParams");
            Sys.exit(Sys.command("haxelib run go2hx --rebuild --nodeps https://github.com/dlclark/regexp2 -compiler_nodejs"));
        case "version":
            // TODO set version
        case "dev":
            Sys.exit(Sys.command("haxelib dev go2hx_regexp2 ."));
    }
}


function buildTarget(target:String, out:String, main:String):String {
	return switch target {
		case "hl":
			'--hl $out';
		case "js":
			'--$target $out -lib hxnodejs';
		case "jvm", "cpp", "cs", "lua", "python", "php", "neko":
			'--$target $out';
		case "interp":
			'--run $main';
		default:
			throw "unknown target: " + target;
	}
}

function runTarget(target:String, out:String, args:Array<String>, main:String):String {
	final index = main.lastIndexOf(".");
	if (index != -1)
		main = main.substr(index + 1);
	var s = switch target {
		case "interp":
			"";
		case "cpp", "cs":
			"./" + out + "/" + main;
		case "jvm":
			'java -jar $out';
		case "python":
			if (Sys.systemName() == "Mac") {
				'python3 $out';
			} else {
				'python $out';
			}
		case "hl", "neko", "lua", "php":
			'$target $out';
		case "js":
			// --stack-size set because bytes.growSize Maximum call stack size exceeded
			'node --stack-size=65500 $out';
		default:
			throw "unknown target: " + target;
	};
	if (args.length > 0)
		s += " " + args.join(" ");
	return s;
}