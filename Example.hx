import github_dot_com.dlclark.regexp2.Regexp2;
function main() {
    final r = Regexp2.mustCompile("^(abc|xyz)?(?(1)abc|xyz)");
    // left because it's a return tuple of (bool,error), right would give the error field
    trace(r.matchString("abc").left);
    trace(r.matchString("xyz").left);
    trace(r.matchString("def").left);
}