class P4 < Formula
  desc "Perforce Helix Command-Line Client (P4)"
  homepage "https://www.perforce.com/products/helix-core-apps/command-line-client"
  url "https://cdist2.perforce.com/perforce/r21.1/bin.macosx1015x86_64/helix-core-server.tgz"
  version "2021.1,2126753"
  sha256 "9a1f528f92568531785b1f125e60a48e84b1a958f9e1d74dfc6e61c060e08721"

  def install
    bin.install "p4"
  end

  test do
    system "#{bin}/p4", "-V"
  end
end
