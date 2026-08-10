cask "fagram" do
  version "1.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fagramdesktop/fadesktop/releases/download/#{version}/fagram-mac-#{version}.dmg"
  name "FAgram Desktop"
  desc "Unofficial desktop client based on Telegram Desktop"
  homepage "https://github.com/fagramdesktop/fadesktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FAgram.app"
end
