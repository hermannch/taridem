# Taridem

`taridem` is a wrapper around GNU's implementation of `tar` to be able to create
binary equal (a.k.a. reproducible) archives.

It's written in valid POSIX shell syntax and linted with [shellcheck](https://github.com/koalaman/shellcheck) and [shfmt](https://github.com/mvdan/sh).

## Goals

The main goal is to always create binary reproducible tar archives, given
binary equivalent input.
This mainly means to discard various file attributes like permission flags,
ownership and modification times etc. and set all of them to sensible, common
default values.

Further, `taridem` aims to support for as many tar implementations as possible.

## Supported Tar Implementations

*Only GNU tar is supported for now, see code for hints if you want to contribute*

These tar implementations are known to build reproducible archives with
`taridem`:
* [GNU tar](https://www.gnu.org/software/tar/)
    * 1.32

## Usage

Make `taridem` available in your PATH.

Call it as you usually would call `tar`.

```
taridem -c --xz -f someFile.tar.xz file1 file2
```

## Similar Projects

I don't know of any.

## Author

Christian Hermann <mail@hermannch.dev>

## License

ISC.

See [LICENSE](./LICENSE) for details.
