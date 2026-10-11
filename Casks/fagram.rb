cask "fagram" do
  version "2.5.7"
  sha256 "a7ae3cfca9dd8bf8c7e841ffb76292e489980f65921011a210c880c8aedb5984"

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
