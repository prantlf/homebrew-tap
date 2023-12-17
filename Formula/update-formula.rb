class UpdateFormula < Formula
  desc "Updates version numbers and SHA-256 hashes in Homebrew formula files for GitHub releases."
  homepage "https://github.com/prantlf/update-formula"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.3/update-formula-macos-x64.zip"
      sha256 "588ba66e197c23ba8a57d7daa295d84a2c22380a6499a4bd576bb6971353782c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.3/update-formula-macos-arm64.zip"
      sha256 "7e2eff55b29b6dbffb6ab7cde2e5a1a28b02368b33640f934816f5add15eafee"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.3/update-formula-linux-x64.zip"
      sha256 "1e5497df2ac057ad6e89d5eeec213cf6f61feaafccb7550e6d338de682527734"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/update-formula/releases/download/v0.1.3/update-formula-linux-arm64.zip"
      sha256 "23bc940e0a4e5e69d56ea767c48ed5e7c691abccfcd8f5ed790cd80ff5e780fe"
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
