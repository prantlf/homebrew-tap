class Jsonlint2 < Formula
  desc "JSON/JSONC/JSON5 validator and pretty-printer."
  homepage "https://github.com/prantlf/v-jsonlint"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.1/jsonlint-macos-x64.zip"
      sha256 "5a7de9b0c1dc84962e5840c36138bc8768af09ebaa3e4c1bf15d0af512921c71"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.1/jsonlint-macos-arm64.zip"
      sha256 "98b0162837bf274b95589564ca2f30b01c627ac9aa6ad42207d9dd87ececfb63"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.1/jsonlint-linux-x64.zip"
      sha256 "f5998215d18e6f051333778c707589535a4c87ccebf044f5b3c5ba57d0c9f437"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.1/jsonlint-linux-arm64.zip"
      sha256 "e48246e77424b7fd52984d51f063fb308641119ce0f88f7198f3b397e5c9c917"
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
