# ZenVoice Homebrew tap

Install ZenVoice on an Apple Silicon Mac running macOS 15 or newer.

```sh
brew tap imyashchaudhary973/zenvoice
brew trust --cask imyashchaudhary973/zenvoice/zenvoice
brew install --cask imyashchaudhary973/zenvoice/zenvoice
```

Homebrew versions without the `trust` command can skip that step. The cask verifies the checksum of the notarized installer hosted at https://getzenvoice.com.
