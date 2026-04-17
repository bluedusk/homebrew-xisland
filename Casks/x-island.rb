cask "x-island" do
  version "0.11.0"
  sha256 "9a42e2ba4fba5666f095b2dba67c1b28ce19e83dcad711a9f51bc69dc4b1a3c0"

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
