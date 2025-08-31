class Jsonlint2 < Formula
  desc "JSON/JSONC/JSON5 validator and pretty-printer."
  homepage "https://github.com/prantlf/v-jsonlint"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.3/jsonlint-macos-x64.zip"
      sha256 "c1eb71b656e791e75995d207fc648070e995e200395a051a20912242a054d4ea"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.3/jsonlint-macos-arm64.zip"
      sha256 "0fcfb63a5564d6cab5db17995289a048e95f13c1d819fb56a9f3e642360db9de"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.3/jsonlint-linux-x64.zip"
      sha256 "157fc3745b0b17bf738a670e9e734d50e1d48798599787c368df38b32282878c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/jsonlint/releases/download/v0.3.3/jsonlint-linux-arm64.zip"
      sha256 "34d958b4b49ceca7937a201d0ed2855919cf0daea5ae86bf97854c92196ea54b"
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
