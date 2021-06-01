class P4 < Formula
  desc "Helix Command-Line Client (P4) provides administrators and heavyweight users complete control over the system, custom reports, automation, and facilitates cross-platform consistency."
  homepage "https://www.perforce.com/downloads/helix-command-line-client-p4"
  version "2021.1.2126753"
  bottle :unneeded

  if OS.mac?
    url "https://cdist2.perforce.com/perforce/r21.1/bin.macosx1015x86_64/helix-core-server.tgz"
    sha256 "9a1f528f92568531785b1f125e60a48e84b1a958f9e1d74dfc6e61c060e08721"
  elsif OS.linux? and Hardware::CPU.intel?
    url "https://cdist2.perforce.com/perforce/r21.1/bin.linux26x86_64/helix-core-server.tgz"
    sha256 "b78c37e44f67ebf49b92783a434290f3570edda25386ca55053d2a93456f8c18"
  end

  def install
    bin.install "p4"
  end

  test do
    system "#{bin}/p4", "-V"
  end
end
