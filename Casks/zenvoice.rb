cask "zenvoice" do
  version "1.5.8"
  sha256 "89d6641cfb6287207505c3429f6cb039e996eef0618d5fc4dd44b4f80ce9b104"

  url "https://getzenvoice.com/download/ZenVoice-1.5.8-34.dmg"
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
