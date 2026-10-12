cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "27f1d745821f084b285df164cc0bbf8c9af9cc6159a0f598675f3633861f47f3",
         intel: "8b0bb4569a77dae523043ed0e42c630a068070b4482b29f4b682503a39245847"

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
