cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "5b7230413280a372a0d9736c88d19d3d95473fdd9f3254a6d22ba33343c8b372",
         intel: "0fc9dfc0ddc5c800cf8e4599cbe9d84b05d095e46b7592b208eb66a8a95ddf17"

  url "https://github.com/julyx10/lap/releases/download/v#{version}/Lap_#{version}_#{arch}.dmg"
  name "Lap"
  desc "Private local photo manager"
  homepage "https://github.com/julyx10/lap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Lap.app"

  zap trash: [
    "~/Library/Application Support/com.julyx10.lap",
    "~/Library/Caches/com.julyx10.lap",
    "~/Library/Preferences/com.julyx10.lap.plist",
  ]
end
