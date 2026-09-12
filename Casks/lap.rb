cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "acd5bd81c890b5ec8bdd838a3a25b7218e1907d1f01d1d12b66a048cfede2fc2",
         intel: "cf26cb880f58668096fc24b5962fe2465e608c51fe00101f01a07800058ed773"

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
