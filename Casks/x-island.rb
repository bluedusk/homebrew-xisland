cask "x-island" do
  version "0.17.0"
  sha256 "eb21a1687b29fcd32902024c3e4858d7d22703472ea00c45121111bcb146ac3e"

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
