class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.13.0/vp-macos-x64.zip"
      sha256 "40ab170f45c8f6d1fc1ae5790d2bb6b077afcb017edba3dcdf6d831d65b0607e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.13.0/vp-macos-arm64.zip"
      sha256 "3047c17d7bb765156b814b1b4801ce41db7c6c8e9bd4fab138f1a1b2fafa23d7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.13.0/vp-linux-x64.zip"
      sha256 "26b435e502a85a9da1eab20735690538fa62f7edc7d98b2225738dcac157ea76"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.13.0/vp-linux-arm64.zip"
      sha256 "09f8d5c454b26dd2f6c60a390fdf4c8b937f08df0ae453216a1a266faff8e600"
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
