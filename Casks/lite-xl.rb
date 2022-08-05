cask "lite-xl" do
  version "2.0.5"
  sha256 "08955b1d7fe46dbbc74f57a8d3db12b3c343b7afba02b6baedf762771f6c7a4a"

  url "https://github.com/lite-xl/lite-xl/releases/download/v#{version}/lite-xl-macos-x86-64.dmg",
      verified: "github.com/lite-xl/lite-xl/"
  appcast "https://github.com/lite-xl/lite-xl/releases.atom"
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
