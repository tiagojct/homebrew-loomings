cask "loomings" do
  version "1.2.0"
  sha256 "1b02d72a2880b710ad611032fc7fff5ab478804edee7f3ef1155e9e42b8e67ea"

  url "https://github.com/tiagojct/loomings/releases/download/v#{version}/Loomings_#{version}_aarch64.dmg",
      verified: "github.com/tiagojct/loomings/"
  name "Loomings"
  desc "Minimalist markdown writing app"
  homepage "https://loomings.tiagojct.eu/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Loomings.app"

  zap trash: [
    "~/Library/Application Support/app.loomings.mac",
    "~/Library/Caches/app.loomings.mac",
    "~/Library/Preferences/app.loomings.mac.plist",
    "~/Library/Saved Application State/app.loomings.mac.savedState",
    "~/Library/WebKit/app.loomings.mac",
  ]
end
