class UpdateFormula < Formula
  desc "Updates version numbers and SHA-256 hashes in Homebrew formula files for GitHub releases."
  homepage "https://github.com/prantlf/update-formula"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.2/update-formula-macos-x64.zip"
      sha256 "222ecac93f733ecc93c9b526d2fc64314517e3c65bbb50125ef6feb55f16bc80"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.2/update-formula-macos-arm64.zip"
      sha256 "b3ceee56d11ca4f356313f8e5b5bbb5e4cda8b1c1c886043d8baf2d38ab7ecab"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.2/update-formula-linux-x64.zip"
      sha256 "d50aef1724fd4bbf1ff82c14dcba77c99301ee1cf4fbaa2844434ce113f2604d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.2/update-formula-linux-arm64.zip"
      sha256 "57d6bcae1f67e2b3f83b5b013197bd5d7644ed3fb11e359aefb021ed5224b6ef"
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
