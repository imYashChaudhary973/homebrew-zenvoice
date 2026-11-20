cask "zenvoice" do
  version "1.5.7"
  sha256 "f4771ba9b386412c08d694678019d842f3b1bb5fd38c151ae52422f5722225c0"

  url "https://getzenvoice.com/download/ZenVoice-1.5.7-33.dmg"
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
