template-objc
=============

At first, substitute the project name in `Makefile` into your project name. And then

```sh
make setup
  # => Setup .gitignore, Podfile, .travis.yml, PROJECT.podspec, AppledocSettings.plist
```

And following tasks are defined

```sh
make test
  # => Do test with coverage file generation
make release v0.1.0
  # => Publish GitHub release & Bump up version of Podspec & pod trunk push 
make doc
  # => Generate appledoc
make loc
  # => Count Lines of Code
make repo
  # => Open repository URL
make coveralls
  # => Send coverage files to coveralls (For Travis)
```

Subtasks

```sh
make podspec v0.1.0
  # => Bump up version of Podspec
make pod_push
  # => pod trunk push
make github_release v0.1.0
  # => Issue github release
make setup_appledocplist
  # => setup AppledocSettings.plist
```
