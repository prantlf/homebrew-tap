cask "lite-xl" do
  version "2.1.1"
  sha256 "b0b636d922114b4cda1671f803276032abd945cdf3acd0db7910becca2f79093"

  url "https://github.com/lite-xl/lite-xl/releases/download/v#{version}/lite-xl-v#{version}-macos-x86_64.dm",
      verified: "github.com/franko/lite-xl/"
  appcast "https://github.com/franko/lite-xl/releases.atom"
  name "Lite XL"
  desc "Lightweight text editor written in Lua"
  homepage "https://lite-xl.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "lite-xl.app"
  binary "#{appdir}/Lite XL.app/Contents/MacOS/lite-xl", target: "lite"

  zap trash: ["~/.config/lite-xl"]
end
