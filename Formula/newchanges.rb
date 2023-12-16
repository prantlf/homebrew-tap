class Newchanges < Formula
  desc "Creates or updates the changelog file from commit messages."
  homepage "https://github.com/prantlf/v-newchanges"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/newchanges/releases/download/v0.4.0/newchanges-macos-x64.zip"
      sha256 "40553f60590ed199d780779ee2682e1feb17c23cc76d47263a2988621e37a584"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.4.0/newchanges-macos-arm64.zip"
      sha256 "d7eb20ad9b0eeff999ee55f7a2a9c8f619ed688fce4d1d4242d56fbce43c5367"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.4.0/newchanges-linux-x64.zip"
      sha256 "5fc22b713543bea4805dd4526539c4c481074c8468093421d082b209c8392b77"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.4.0/newchanges-linux-arm64.zip"
      sha256 "e0fef51f4529aee903d06266fb493f8f29498ec1c8103dbf53d0ef33382408d4"
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
