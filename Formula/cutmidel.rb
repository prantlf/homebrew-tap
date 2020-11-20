class Cutmidel < Formula
  desc "Trims a text to a maximum length by putting an ellipsis to the middle of the shortened result."
  homepage "https://github.com/prantlf/cutmidel"
  version "1.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/prantlf/cutmidel/releases/download/v1.0.3/cutmidel-1.0.3-darwin-x86_64.tar.gz"
    sha256 "af00f1b4a72df48be2a068171c318c26c2bf78b27402f0799a3825f788b2283b"
  elsif OS.linux? and Hardware::CPU.intel?
    url "https://github.com/prantlf/cutmidel/releases/download/v1.0.3/cutmidel-1.0.3-linux-x86_64.tar.xz"
    sha256 "1185f870a7383cdf6dcc4f093eeff6ab81a08528dfe0dea2c8f7420098050851"
  end

  def install
    bin.install "bin/cutmidel"
    man1.install "share/man/man1/cutmidel.1"
  end

  test do
    system "#{bin}/cutmidel", "-V"
  end
end
