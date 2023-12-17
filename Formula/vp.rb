class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.10.0/vp-macos-x64.zip"
      sha256 "e3ae86eb06e52b510c67845e91e6bd737f2cbda15077b7ced24801e94dca8c2d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.10.0/vp-macos-arm64.zip"
      sha256 "efadb71f38be172d9b0e848748c57e8fecd72c02c87ac4e61a77103e9186153c"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.10.0/vp-linux-x64.zip"
      sha256 "ce1adb13a3b5bb0122dc85d9ee07724b4f91a94cc4daf5b48fae8067fac7b258"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.10.0/vp-linux-arm64.zip"
      sha256 "77dbdb2d7bb49e9081c96bc9971d3a398c026a150ad572930503ac75c70812e5"
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
