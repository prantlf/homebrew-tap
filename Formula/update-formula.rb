class UpdateFormula < Formula
  desc "Updates version numbers and SHA-256 hashes in Homebrew formula files for GitHub releases."
  homepage "https://github.com/prantlf/update-formula"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/update-formula/releases/download/v0.3.1/update-formula-macos-x64.zip"
      sha256 "9a3ceb403de28fa4277a409fb90d402f48752240f4a469914fde362bc524dd5a"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.3.1/update-formula-macos-arm64.zip"
      sha256 "10e3dae6d0c2871c2b6db601335095931c6e2f343bf73d3e8bf94602354410ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.3.1/update-formula-linux-x64.zip"
      sha256 "67283c82a971e94aab082ebef70c7026a4910b83b09a7ebb1e3ab6ba17164b90"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.3.1/update-formula-linux-arm64.zip"
      sha256 "9e7571018f8854d8a9eae9652b344cd2a957aab063c655f08235f62fbc6fa328"
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
