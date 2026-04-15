cask "x-island" do
  version "0.9.4"
  sha256 "ca768504b540dc255637278b5d016b13c78422600d777bae971ef910e57f15e4"

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
