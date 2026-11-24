cask "zenvoice" do
  version "1.5.9"
  sha256 "0fc8ec63e74e04866a60b9fdd54810e76e3290711814f15f9f457dedbe004f54"

  url "https://getzenvoice.com/download/ZenVoice-1.5.9-36.dmg"
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
