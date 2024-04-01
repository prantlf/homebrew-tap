class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.14.1/vp-macos-x64.zip"
      sha256 "a85b38f81f5a6cba2d945fb6d07a946059834ae88a6f2c2abb8e4e63abe66f76"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.14.1/vp-macos-arm64.zip"
      sha256 "5a58f13a7b80bd3c032e202cc385c99f5a3d4c9e6f5ad80952f5b96be7c691ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.14.1/vp-linux-x64.zip"
      sha256 "024ae9683deb4c74257f0083c9e2964479415787e68f9a18d558fb524ed4ed3f"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.14.1/vp-linux-arm64.zip"
      sha256 "96709c0ee1006d03b96bd3bcc7f637ea8903c215a667c828d9d10ddf8120658f"
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
