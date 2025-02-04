function main() {
    final args = Sys.args();
    trace("run command: " + args[0]);
    switch args[0] {
        /*case "test":
            final target = args[1];
            trace("target", target);
            final out = 'test.$target';
            final buildCmd = buildTarget(target, out);
            Sys.command("haxe test.hxml " + buildCmd);
            final runCmd = runTarget(target, out, [], "");
            if (runCmd != "")
                Sys.command(runCmd);*/

        case "example", "test": // TODO proper testing
            Sys.command("haxe example.hxml");
        case "build":
            Sys.command("rm -r -d golibs");
            // -nodeps
            Sys.command("haxelib run go2hx https://github.com/dlclark/regexp2 -compiler_nodejs");
        case "version":
            // TODO set version
        case "dev":
            Sys.command("haxelib dev go2hx_regexp2 .");
    }
}


function buildTarget(target:String, out:String):String {
	return switch target {
		case "hl":
			'--hl $out';
		case "jvm", "cpp", "cs", "js", "lua", "python", "php", "neko":
			'--$target $out';
		case "interp":
			"--interp";
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