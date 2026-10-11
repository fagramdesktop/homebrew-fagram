# FAgram Desktop Tap

This tap exists as a convenient way to install [FAgram Desktop](https://github.com/fagramdesktop/fadesktop) on macOS.

## Usage

```bash
brew tap fagramdesktop/fagram
brew trust fagramdesktop/fagram
brew install --cask fagram
```

If macOS Gatekeeper blocks the application because it is not notarized by Apple, remove the quarantine attribute:

```bash
xattr -cr /Applications/FAgram.app
```
