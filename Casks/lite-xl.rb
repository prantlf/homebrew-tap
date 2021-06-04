cask "lite-xl" do
  version "1.16.11"
  sha256 "b3d13a38c90d83a1af4b8c3ff28d29763f6d34f7018c7b2dd2dd07f5cb4fc7de"

  url "https://github.com/franko/lite-xl/releases/download/v#{version}/lite-xl-macos-x86-64.dmg",
      verified: "github.com/franko/lite-xl/"
  appcast "https://github.com/franko/lite-xl/releases.atom"
  name "Lite XL"
  desc "Lightweight text editor written in Lua"
  homepage "https://lite-xl.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "lite-xl.app"
  binary "#{appdir}/lite-xl.app/Contents/MacOS/lite-xl", target: "lite"

  zap trash: ["~/.config/lite-xl"]
end
