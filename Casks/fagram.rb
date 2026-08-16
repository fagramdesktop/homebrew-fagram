cask "fagram" do
  version "2.4.0"
  sha256 "0a3236371d1323897daea05116092488f4268c93abf6f31404e4f3169bba36be"

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
