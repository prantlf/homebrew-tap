class Newchanges < Formula
  desc "Creates or updates the changelog file from commit messages."
  homepage "https://github.com/prantlf/v-newchanges"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.0/newchanges-macos-x64.zip"
      sha256 "f2a0a0777b977d98e10114eb6ecdc8510c5663de4f8e10dcf07096254bf312d1"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.0/newchanges-macos-arm64.zip"
      sha256 "bba9f5f4e262937c4e1cdf53ffa6d854ea13458c7729ddbdb720c3c88df97378"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.0/newchanges-linux-x64.zip"
      sha256 "75228e580164721df393385985fc2d1f28972b44f105745d4cd941289b3973c4"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.5.0/newchanges-linux-arm64.zip"
      sha256 "4794028686c5ec3587ed38aaf522531c182515c20f0713de217e33673223fb53"
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
