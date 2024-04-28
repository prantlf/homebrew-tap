class Newchanges < Formula
  desc "Creates or updates the changelog file from commit messages."
  homepage "https://github.com/prantlf/v-newchanges"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/newchanges/releases/download/v0.6.0/newchanges-macos-x64.zip"
      sha256 "58b074b2b43fe818bba206b55880b2cbff89bfbe0ba7c86d35069818d5e3b239"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.6.0/newchanges-macos-arm64.zip"
      sha256 "160e1526dfd119c062dc7b095848339be5cfec0e1fa87c7d5592903df2a3018a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.6.0/newchanges-linux-x64.zip"
      sha256 "5e63f9f71d22a5dfae3b38a2a012cb6a9cfbf41b0eb22c9c060b3b66b85c585b"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.6.0/newchanges-linux-arm64.zip"
      sha256 "30d1e3035aebb19bd2ec9ce0c7a4354f0496103ac5d815e10edc24413c3a463f"
    end
  end

  def install
    bin.install "newchanges"
    man1.install "man/newchanges.1"
  end

  test do
    system "#{bin}/newchanges", "-V"
  end
end
