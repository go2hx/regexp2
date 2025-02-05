# Regexp2 **[[api]](https://go2hx.github.io/regexp2/api)**

[![hl](https://github.com/go2hx/regexp2/actions/workflows/hl.yml/badge.svg)](https://github.com/go2hx/regexp2/actions/workflows/hl.yml)
[![interp](https://github.com/go2hx/regexp2/actions/workflows/interp.yml/badge.svg)](https://github.com/go2hx/regexp2/actions/workflows/interp.yml)
[![js](https://github.com/go2hx/regexp2/actions/workflows/js.yml/badge.svg)](https://github.com/go2hx/regexp2/actions/workflows/js.yml)


"Regexp2 is a feature-rich RegExp engine for Go. It doesn't have constant time guarantees like the built-in regexp package, but it allows backtracking and is compatible with Perl5 and .NET" - [dlclark](https://github.com/dlclark)

[Regexp2 Go library](https://github.com/dlclark/regexp2) compiled with [go2hx](https://go2hx.github.io/) v0.1.0



# Installation

```sh
haxelib git go2hx_regexp2 https://github.com/go2hx/regexp2
```
Add ``-lib go2hx_regexp2`` to your hxml for openfl/haxeflixel users ``<haxelib name="go2hx_regexp2" />``


# Why use this?

Haxe regexp is [target depedent](https://haxe.org/manual/std-regex.html) certain features will work on one target and not another.

Take this example [try.haxe](https://try.haxe.org/#d67D8Cd1):
```haxe
function main() {
    var pattern = ~/^(abc|xyz)?(?(1)abc|xyz)/g;

    trace(pattern.match("abc"));
    trace(pattern.match("xyz"));
    trace(pattern.match("def"));
}
```

On `js` you get an error: invalid regexp group.

On `hashlink` or `interp` it works fine.


In order to get this and many other regexp patterns to work crossplatform you can use this library.

For example:
```haxe
import github_dot_com.dlclark.regexp2.Regexp2;
function main() {
    final r = Regexp2.mustCompile("^(abc|xyz)?(?(1)abc|xyz)", 0);
    // left because it's a return tuple of (bool,error), right would give the error field
    trace(r.matchString("abc").left);
    trace(r.matchString("xyz").left);
    trace(r.matchString("def").left);
}
```

You can now target `js` with the given regex pattern and it will simply work!

Pretty cool eh?

## RE2 compatibility mode
The default behavior of `regexp2` is to match the .NET regexp engine, however the `RE2` option is provided to change the parsing to increase compatibility with RE2.  Using the `RE2` option when compiling a regexp will not take away any features, but will change the following behaviors:
* add support for named ascii character classes (e.g. `[[:foo:]]`)
* add support for python-style capture groups (e.g. `(P<name>re)`)
* change singleline behavior for `$` to only match end of string (like RE2) (see [#24](https://github.com/dlclark/regexp2/issues/24))
* change the character classes `\d` `\s` and `\w` to match the same characters as RE2. NOTE: if you also use the `ECMAScript` option then this will change the `\s` character class to match ECMAScript instead of RE2.  ECMAScript allows more whitespace characters in `\s` than RE2 (but still fewer than the the default behavior).
* allow character escape sequences to have defaults. For example, by default `\_` isn't a known character escape and will fail to compile, but in RE2 mode it will match the literal character `_`


# Next steps

Run into an issue, feel free to make an [issue](https://github.com/go2hx/regexp2/issues) detailing how to reproduce and the env being used (Haxe version, OS etc)

Interested in [more libs like this](https://github.com/go2hx#working-haxelibs-precompiled)?

Want to get involved in go2hx and/or the Haxe community, [join the discord!](https://discord.com/invite/0uEuWH3spjck73Lo)
