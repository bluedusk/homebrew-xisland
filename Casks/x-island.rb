cask "x-island" do
  version "0.14.0"
  sha256 "f1ae7ff6fa53f1922ef6b68af08c448964a992a6a4853c6e6df9346eb2f71e71"

  url "https://github.com/bluedusk/xisland/releases/download/v#{version}/XIsland.dmg"
  name "xIsland"
  desc "Native macOS companion app for AI coding agents"
  homepage "https://github.com/bluedusk/xisland"

  depends_on macos: ">= :sonoma"

  app "X Island.app"
  binary "#{appdir}/X Island.app/Contents/Helpers/xIslandHooks", target: "xIslandHooks"

  zap trash: [
    "~/Library/Application Support/xIsland",
    "~/Library/Logs/xIsland",
    "~/Library/Preferences/app.xisland.xIsland.plist",
  ]
end
