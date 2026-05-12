cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "c5f91626971fe7067f4bbaec68c6d422957380a129576928bc9b6cc0d4d7e82b",
         intel: "d603ac556fec1e67ed2b849dcc8d19181813688ace7620801f8d8db53b0bb882"

  url "https://github.com/julyx10/lap/releases/download/v#{version}/Lap_#{version}_#{arch}.dmg",
      verified: "github.com/julyx10/lap/"
  name "Lap"
  desc "Private local photo manager"
  homepage "https://github.com/julyx10/lap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Lap.app"

  zap trash: [
    "~/Library/Application Support/com.julyx10.lap",
    "~/Library/Caches/com.julyx10.lap",
    "~/Library/Preferences/com.julyx10.lap.plist",
  ]
end
