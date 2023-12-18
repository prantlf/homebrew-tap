class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.11.0/vp-macos-x64.zip"
      sha256 "87a24b56a427a0cc21f3fa756e08e138839cb611739a9bf404292f5e360be416"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.11.0/vp-macos-arm64.zip"
      sha256 "246f0cefc17ce6708fa90d138d52364202e21661f5de21568843fe4b4944cb64"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.11.0/vp-linux-x64.zip"
      sha256 "9b85ca316dc6283350e3499a0c9fed1cb0358cc89c02cd648aa2562be8b8f431"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.11.0/vp-linux-arm64.zip"
      sha256 "bb675a93e053855fdf4ced891ae918d00c8e72655638e84f43eba1d16f96526d"
    end
  end

  def install
    bin.install "vp"
    man1.install "man/vp.1"
  end

  test do
    system "#{bin}/vp", "-V"
  end
end
