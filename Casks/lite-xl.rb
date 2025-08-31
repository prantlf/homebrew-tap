cask "lite-xl" do
  name "Lite XL"
  desc "Lightweight text editor written in Lua"
  homepage "https://github.com/lite-xl/lite-xl"
  version "2.1.8"

  if Hardware::CPU.intel?
    url "https://github.com/lite-xl/lite-xl/releases/download/v#{version}/lite-xl-v#{version}-macos-x86_64.dmg", verified: "github.com/lite-xl/lite-xl/"
    sha256 "b2a4cbc42c633f428d3a7ea2a0d14296f553996cf36fb2af582a94683794c453"
  elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lite-xl/lite-xl/releases/download/v#{version}/lite-xl-v#{version}-macos-arm64.dmg", verified: "github.com/lite-xl/lite-xl/"
    sha256 "1b8ad02ea575d08d6557daff035d4ac59c069254dd85d01f7bdac839cfdd66e3"
  end

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Lite XL.app"

  caveats "The symbolic link `lite` doesn't work any more. Create a shell alias instead.\nYou may just execute the following command, or include it in .hashrc or .zshrc:\n\nalias lite='\"/Applications/Lite XL.app/Contents/MacOS/lite-xl\"'"

  zap trash: ["~/.config/lite-xl"]
end
