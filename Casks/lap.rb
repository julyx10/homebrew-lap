cask "lap" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "4f451efe6b9b0370059b02f58fa61f84362589ba3bbc1d712ae92ed039294ae2",
         intel: "979e8b7d38e2fdea95dba882a94175e6660e3b81f26e70eceefba5cc192e7ac6"

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
