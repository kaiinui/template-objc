template-objc
=============

At first, substitute the project name in `Makefile` into your project name. And then

```sh
make setup
  # => Setup .gitignore, Podfile, .travis.yml, PROJECT.podspec
```

And following tasks are defined

```sh
make test
  # => Do test with coverage file generation
make release v0.1.0
  # => Publish GitHub release
make doc
  # => Generate appledoc
make coveralls
  # => Send coverage files to coveralls (For Travis)
```
