cask "zenvoice" do
  version "1.5.9"
  sha256 "cb2c962eca9e25bb037d61d08d17f17bee0e78528beb06bde2ab456fe7da5ca9"

  url "https://getzenvoice.com/download/ZenVoice-1.5.9-35.dmg"
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
