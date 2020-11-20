class Shortpwd < Formula
  desc "Trims the current working directory to a maximum length by putting an ellipsis to the middle of the shortened result."
  homepage "https://github.com/prantlf/shortpwd"
  version "1.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/prantlf/shortpwd/releases/download/v1.0.3/shortpwd-1.0.3-darwin-x86_64.tar.gz"
    sha256 "d3d53f7f43b936dc001dd463e753ca42e252f28e265bfa4009eceb9f32a98e5e"
  elsif OS.linux? and Hardware::CPU.intel?
    url "https://github.com/prantlf/shortpwd/releases/download/v1.0.3/shortpwd-1.0.3-linux-x86_64.tar.xz"
    sha256 "ce0f98a72cc42455fe3c4edca6b23ab9c3a1edf7f389bcc2cecfffcd9a7cf4ec"
  end

  def install
    bin.install "bin/shortpwd"
    man1.install "share/man/man1/shortpwd.1"
  end

  test do
    system "#{bin}/shortpwd", "-V"
  end
end
