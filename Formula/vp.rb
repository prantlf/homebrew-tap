class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.14.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.14.9/vp-macos-x64.zip"
      sha256 "b41f17d071ed89535b486d9a4595be2d4a54a53618506da280fc68e8717b7cae"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.14.9/vp-macos-arm64.zip"
      sha256 "652e097c37e7e3d4ec529a435d945963db1d1e3631ec198e3343381e256cf914"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.14.9/vp-linux-x64.zip"
      sha256 "f5563851428219fd9a875ef9d135c4328ee489b5b590dc6865710c6a224c2182"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.14.9/vp-linux-arm64.zip"
      sha256 "0314946ff043d58fd634477b68b158f0a08f8d4f7eac478a49db45253fefa538"
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
