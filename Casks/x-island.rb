cask "x-island" do
  version "0.10.0"
  sha256 "f4e694cd6f94e3074305af27028a62d65c18fa7020f24f5a11b77b271826727b"

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
