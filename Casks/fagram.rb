cask "fagram" do
  version "2.6.0"
  sha256 "3b59edd5413f506aec2b8180ee7bce7b8fbacfeab780f4289b6d2a5bce399e4c"

  url "https://github.com/fagramdesktop/fadesktop/releases/download/#{version}/fagram-mac-#{version}.dmg"
  name "FAgram Desktop"
  desc "Unofficial desktop client based on Telegram Desktop"
  homepage "https://github.com/fagramdesktop/fadesktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "FAgram.app"

  uninstall quit: "org.fagram"

  zap trash: [
    "~/Library/Application Support/FAgram Desktop",
    "~/Library/Caches/org.fagram",
    "~/Library/Preferences/org.fagram.plist",
    "~/Library/Saved Application State/org.fagram.savedState",
  ]
end
