cask "lite-xl" do
  version "1.16.11"
  sha256 "b3d13a38c90d83a1af4b8c3ff28d29763f6d34f7018c7b2dd2dd07f5cb4fc7de"

  url "https://github.com/franko/lite-xl/releases/download/v#{version}/lite-xl-macos-x86-64.dmg",
      verified: "github.com/franko/lite-xl/"
  name "Lite XL"
  desc "Lightweight text editor written in Lua"
  homepage "https://fitztrev.github.io/shuttle/"

  app "lite-xl.app"

  zap trash: ["~/.config/lite-xl"]

  caveats %(If you want to run lite-xl on the command line, either add the directory
"/Applications/lite-xl.app/Contents/MacOS" to PATH, or point a BASH alias to the binary:

alias lite=/Applications/lite-xl.app/Contents/MacOS/lite-xl)
end
