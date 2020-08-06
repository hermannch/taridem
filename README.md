# Taridem

`taridem` is wrapper around a few tar implementations to achieve maximum
reproducibility.

The main goal is to create binary reproducible tar archives, given that the
input file sare binary equivalent.
This mainly means to discard various file attributes like permission flags,
ownership and modification times etc.

It's written in valid POSIX shell syntax and linted with [shellcheck](https://github.com/koalaman/shellcheck) and [shfmt](https://github.com/mvdan/sh).


## Supported Tar Implementations

The following list shows versions of tar implementations known to build
reproducible archives with `taridem`:
* gnu tar
** 1.32


## Usage

Make `taridem` available in your PATH.

Call it as you usually would call `tar`.

```
taridem -c --gzip -f someFile.tar.xz file1 file2
```


## Similar Projects

I don't know of any.

## Author

* Christian Hermann <mail@hermannch.dev>

## License

ISC.

See LICENSE for details.
