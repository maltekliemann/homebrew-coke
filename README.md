# homebrew-coke

Homebrew tap for [coke](https://github.com/maltekliemann/coke) — disable sleep on macOS.

## Install

```sh
brew install maltekliemann/coke/coke
```

## Publishing a New Release

After tagging and releasing a new version in the
[coke](https://github.com/maltekliemann/coke) repo, update this tap:

1. **Get the tarball SHA256.** Replace `VERSION` with the new tag:

   ```sh
   curl -sL https://github.com/maltekliemann/coke/archive/refs/tags/VERSION.tar.gz | shasum -a 256
   ```

2. **Update `coke.rb`.** Change the `url` and `sha256` fields:

   ```ruby
   url "https://github.com/maltekliemann/coke/archive/refs/tags/VERSION.tar.gz"
   sha256 "NEW_SHA256"
   ```

3. **Commit and push:**

   ```sh
   git commit -am "chore: bump version" && git push
   ```

4. **Verify the install:**

   ```sh
   brew update && brew upgrade coke
   ```
