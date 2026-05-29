cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "553028608a2f6d93cdaa7efaca9d335f5bb0b39c148e046f8187aeadd8fee2b5",
         intel: "45eb37a0953b24764b81b1b3bc6965ab8ecee5251b853fcd0de225d0e1f9a325"

  url "https://github.com/julyx10/lap/releases/download/v#{version}/Lap_#{version}_#{arch}.dmg"
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
