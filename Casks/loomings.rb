cask "loomings" do
  version "1.0.0"
  sha256 "d9cbd761d0fa99edd40e1d51445315efc73c095a6e3aa026f20aabb961c180c1"

  url "https://github.com/tiagojct/loomings/releases/download/v#{version}/Loomings_#{version}_aarch64.dmg"
  name "Loomings"
  desc "Minimalist markdown writing app"
  homepage "https://tiagojct.eu/loomings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
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
