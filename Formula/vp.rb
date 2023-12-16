class Vp < Formula
  desc "Helps with development, installation and maintenance of VPM packages."
  homepage "https://github.com/prantlf/vp"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/vp/releases/download/v0.9.0/vp-macos-x64.zip"
      sha256 "c9383bd19b35c2bb9df8775796666ce2561b7decd1f8612239a4f60f84aaab6c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.9.0/vp-macos-arm64.zip"
      sha256 "a3051812c05ff6011521c8d82bf96e40136d37805c23728cb74e15c11bb3cda4"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.9.0/vp-linux-x64.zip"
      sha256 "1159419922d473e5fbf9d1a86a74c0e171427fcb39ff0a924a6866ca6345276b"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/vp/releases/download/v0.9.0/vp-linux-arm64.zip"
      sha256 "b0d1c3879f1c249ae8882c0eb7e34abafd83b29dd07d4a783888a4097ba03a5f"
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
