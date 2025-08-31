class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.17.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.17.4/vp-macos-x64.zip"
      sha256 "a8f1c3b2b847faccf1be168d18c6b6a50930abc5049a8f4eee774d293e8a2af9"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.17.4/vp-macos-arm64.zip"
      sha256 "39f5b010b03cc5e07af03f27bf8c95c9ae3ea911c78fb2521e60bd7c41c2912b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.17.4/vp-linux-x64.zip"
      sha256 "40397f190cb8311394556237a719d428f8a9dc0c4a474b28e6b408ff7989f617"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.17.4/vp-linux-arm64.zip"
      sha256 "e790b0d16fe16254d3923b037a9ac00530fd02d02ac51e28e4e5778e5c06133d"
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
