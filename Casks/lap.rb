cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "1270c83c9dd20882865ace03bce385086aa3cb8af2393d97f19a6a2f87a8b605",
         intel: "39c8880d1cfa3e6fa3cd8dbb38e5faf7ef4b8d449ca1f823c420cfc1a5cbc68a"

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
