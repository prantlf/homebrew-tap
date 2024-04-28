class UpdateFormula < Formula
  desc "Updates version numbers and SHA-256 hashes in Homebrew formula files for GitHub releases."
  homepage "https://github.com/prantlf/update-formula"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/update-formula/releases/download/v0.2.0/update-formula-macos-x64.zip"
      sha256 "78f3e1f26a89ed6831db999e2249373e19663797e7a01ba93c34fb95f1e24702"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.2.0/update-formula-macos-arm64.zip"
      sha256 "e6175b2bf1d337046c0050d3dfc88b4a82bebd9445fcd8499be9457df5ffd665"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.2.0/update-formula-linux-x64.zip"
      sha256 "788ae7c1d8eae3c4c6c03f48ac4f9ba3b5138c981079dc1216fc5e640aa8d71d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.2.0/update-formula-linux-arm64.zip"
      sha256 "3a07414897bd36be031c3b2bcf018f592bf6f96dbd3bf57e9b145e1e685ec75b"
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
