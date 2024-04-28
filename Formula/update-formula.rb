class UpdateFormula < Formula
  desc "Updates version numbers and SHA-256 hashes in Homebrew formula files for GitHub releases."
  homepage "https://github.com/prantlf/update-formula"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.4/update-formula-macos-x64.zip"
      sha256 "ae7c079dd4c1a8812257d32427961044a8b01fff685853809668f191dec669e2"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.4/update-formula-macos-arm64.zip"
      sha256 "2a90463e6e3755d435655cb922501adf679ee59b4d737369d655dbaf2c682464"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.4/update-formula-linux-x64.zip"
      sha256 "08fc5dac0c6fb8fa5c66f69bd8ae84987ff1ba2b822726b37a2985d7e3c25b92"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.4/update-formula-linux-arm64.zip"
      sha256 "77ae805d3886c79fbf94a4fb337a1874bb249a957f2728d1375e836ce053c3bd"
    end
  end

  def install
    bin.install "update-formula"
    man1.install "man/update-formula.1"
  end

  test do
    system "#{bin}/update-formula", "-V"
  end
end
