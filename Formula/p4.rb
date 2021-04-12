class P4 < Formula
  desc "Helix Command-Line Client (P4) provides administrators and heavyweight users complete control over the system, custom reports, automation, and facilitates cross-platform consistency."
  homepage "https://www.perforce.com/downloads/helix-command-line-client-p4"
  version "2020.1.2107780"
  bottle :unneeded

  if OS.mac?
    url "https://www.perforce.com/downloads/perforce/r20.1/bin.macosx1010x86_64/helix-core-server.tgz"
    sha256 "e93b556b4824afa3b9c1b7e328a53c605c8953cc9facd6c12d7a3b3451434ea6"
  elsif OS.linux? and Hardware::CPU.intel?
    url "https://www.perforce.com/downloads/perforce/r20.1/bin.linux26x86_64/helix-core-server.tgz"
    sha256 "cbe414da36ef7b0ad9bb913e92d37603594c3c4d4244c8791c81886420cfaf6d"
  end

  def install
    bin.install "p4"
  end

  test do
    system "#{bin}/p4", "-V"
  end
end
