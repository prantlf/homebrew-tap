class Newchanges < Formula
  desc "Creates or updates the changelog file from commit messages."
  homepage "https://github.com/prantlf/v-newchanges"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.1/newchanges-macos-x64.zip"
      sha256 "b163e9f6f81278fa4c1c81985beb8f908ac7a8c440a852c21d74a1799cc6f2dd"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.1/newchanges-macos-arm64.zip"
      sha256 "e338f3e8ee3caafca14a15c6edadac802e3da38f3c5a96e5177246b89a90b835"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.1/newchanges-linux-x64.zip"
      sha256 "3bf07bd8a5381014a35943ecf0a6623b57f369268009c53ddcce903112ed28bc"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.1/newchanges-linux-arm64.zip"
      sha256 "d28857c38b08fc9eb59839bdddd34f2d010112e9fb693180f9f5c7596d13ddab"
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
