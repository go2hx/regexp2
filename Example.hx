import github_dot_com.dlclark.regexp2.Regexp2;
function main() {
    final r = Regexp2.compile("^(abc|xyz)?(?(1)abc|xyz)", 0);
    if (r.right != null) {
        throw r.right;
    }
    trace(r.left.matchString("abc").left);
    trace(r.left.matchString("xyz").left);
    trace(r.left.matchString("def").left);
}