cask "fagram" do
  version "2.3.6"
  sha256 "0da635a472792ad6dbb91c19c4732dae1cd72f8a8d6f39cb20891a0aabce9769"

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
