cask "zenvoice" do
  version "1.5.6"
  sha256 "65c8f87c8e6c4e37ebeb8b45e689e9893bf95a3c8fc6a4f32f2ad5e01b006e9e"

  url "https://getzenvoice.com/download/ZenVoice-1.5.6-32.dmg"
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
