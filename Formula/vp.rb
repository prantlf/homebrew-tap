class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.12.1/vp-macos-x64.zip"
      sha256 "fc4108070bc9b6c98592e5e83bf5191a1c80ded1dc5ea88c397fc4e63a89db07 "
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.12.1/vp-macos-arm64.zip"
      sha256 "60c999393196b97cb4be3030ab0fa728df72af37d88acc4b737c83df4e108ccc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.12.1/vp-linux-x64.zip"
      sha256 "5e9836e9222b282489ffe69df4a026850f97fe075b63df8e48722a4e93cbae12"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.12.1/vp-linux-arm64.zip"
      sha256 "349fc21eeb25d9aa4f67326037510c9437cb60358413c4d1916c4545e80befc8"
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
