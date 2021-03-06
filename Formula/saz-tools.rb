# This file was generated by GoReleaser. DO NOT EDIT.
class SazTools < Formula
  desc "Parsing, dumping, viewing and analysing tools for SAZ (Fiddler) files"
  homepage "https://github.com/prantlf/saz-tools"
  version "0.0.16"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/prantlf/saz-tools/releases/download/v0.0.16/saz-tools_0.0.16_darwin_x86_64.tar.gz"
    sha256 "794ddbfa19d2308370b04fce03457ac6a8de3b4738b121ce827fbf4f02da6dd5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/saz-tools/releases/download/v0.0.16/saz-tools_0.0.16_linux_x86_64.tar.gz"
      sha256 "ef7848ded680ee21a4595b2ee8d95fbfc5082ab55d511622b4a6fc9c8d0c922d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/prantlf/saz-tools/releases/download/v0.0.16/saz-tools_0.0.16_linux_arm64.tar.gz"
        sha256 "f801f4d6bb946a6007e480dad7e2de7fa2da184562322fae683ebd8cee39ef9f"
      else
        url "https://github.com/prantlf/saz-tools/releases/download/v0.0.16/saz-tools_0.0.16_linux_armv6.tar.gz"
        sha256 "b79574bcdc52318fa4c0ec8924b6a5dbc885508b3afdb3f5b54f9eca27e4bb13"
      end
    end
  end

  def install
    bin.install "sazdump"
    bin.install "sazserve"
    man1.install "man/sazdump.1"
    man1.install "man/sazserve.1"
  end

  test do
    system "#{bin}/sazdump", "-v"
    system "#{bin}/sazserve", "-v"
  end
end
