cask "fagram" do
  version "2.3.5"
  sha256 "c690f689edfd0f6fcb1ff91b8dc3b6c5d07e1163bf2413665e2639beb4b9822b"

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
