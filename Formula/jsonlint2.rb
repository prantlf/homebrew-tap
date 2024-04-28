class Jsonlint2 < Formula
  desc "JSON/JSONC/JSON5 validator and pretty-printer."
  homepage "https://github.com/prantlf/v-jsonlint"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.2/jsonlint-macos-x64.zip"
      sha256 "56941b60b75b28df8527e718f4b044e4b6d1e54026fc1773f06a3204c6b0562d"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.2/jsonlint-macos-arm64.zip"
      sha256 "b03cccba30b93d9dd8e81cd87b40e272008c2ba83a1a89aa1c5fa979d802007d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.2/jsonlint-linux-x64.zip"
      sha256 "c94782e5585c2dfdecc056cc9bde3ca253869fd7a6f11249252697d0df37ea9e"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.2/jsonlint-linux-arm64.zip"
      sha256 "333fd9f61430e775afe13b542be55350004ae693d4aad6e8884a2869194b5138"
    end
  end

  def install
    bin.install "jsonlint"
    man1.install "man/jsonlint.1"
  end

  test do
    system "#{bin}/jsonlint", "-V"
  end
end
