cask "zenvoice" do
  version "1.5.10"
  sha256 "d2beb84e4780087ad15f8e89154b0536fe82ca16052b8474096b992ed9d3a33c"

  url "https://getzenvoice.com/download/ZenVoice-1.5.10-37.dmg"
  name "ZenVoice"
  desc "Offline dictation with local speech models"
  homepage "https://getzenvoice.com"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "ZenVoice.app"

  zap trash: [
    "~/Library/Application Support/ZenVoice",
    "~/Library/Caches/ZenVoice",
    "~/Library/Preferences/com.zenvoice.app.plist",
  ]
end
