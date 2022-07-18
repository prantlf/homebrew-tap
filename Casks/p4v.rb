cask "p4v" do
  version "2022.2,2304646"
  sha256 "d72c017e516d37508e0433dcf94fa96e208781a24a161bb545eee3100cfb963b"

  url "https://www.perforce.com/downloads/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015x86_64/P4V.dmg"
  name "Helix Visual Client (P4V)"
  desc "Provides access to versioned files in Helix Core (Perforce) through a graphical interface. It includes tools for merging and visualizing code evolution."
  homepage "https://www.perforce.com/downloads/helix-visual-client-p4v"

  depends_on macos: ">= :catalina"
end
