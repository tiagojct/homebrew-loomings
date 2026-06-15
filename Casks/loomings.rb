cask "loomings" do
  version "1.0.3"
  sha256 "f1e6e95c37f095d88c469ef096e997a56fc349e8a7a18d810138ae0b86b60398"

  url "https://github.com/tiagojct/loomings/releases/download/v#{version}/Loomings_#{version}_aarch64.dmg",
      verified: "github.com/tiagojct/loomings/"
  name "Loomings"
  desc "Minimalist markdown writing app"
  homepage "https://tiagojct.eu/loomings"

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
