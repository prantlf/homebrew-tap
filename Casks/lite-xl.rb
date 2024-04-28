cask "lite-xl" do
  name "Lite XL"
  desc "Lightweight text editor written in Lua"
  homepage "https://github.com/lite-xl/lite-xl"
  version "2.1.4"

  if Hardware::CPU.intel?
    url "https://github.com/lite-xl/lite-xl/releases/download/v2.1.4/lite-xl-v#{version}-macos-x86_64.dmg",
      verified: "github.com/franko/lite-xl/"
    sha256 "95d634e56fac7ceea408c79e5fd82f955360751a094864fe3a783478bef5615c"
  elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lite-xl/lite-xl/releases/download/v2.1.4/lite-xl-v#{version}-macos-arm64.dmg",
      verified: "github.com/franko/lite-xl/"
    sha256 "5e26cfee4d3d02fbad34ec4507733ac749c12191d391669129754260fc1ae547"
  end

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "lite-xl.app"
  binary "#{appdir}/Lite XL.app/Contents/MacOS/lite-xl", target: "lite"

  zap trash: ["~/.config/lite-xl"]
end
