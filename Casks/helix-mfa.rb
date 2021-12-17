cask "helix-mfa" do
  version "2018.3,1707619"
  sha256 "e57629b2b9147478e48944be8c968cac3ecd10bd4828c3ec75a839ac3eb73e28"

  url "https://cdist2.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1013x86_64/HelixMFA.dmg"
  name "Helix MFA Authenticator"
  desc "Provides the MFA login screen for Helix Core clients and plugins - Perforce, for example"
  homepage "https://www.perforce.com/downloads/helix-mfa-authenticator"

  depends_on macos: ">= :high_sierra"
  container type: :naked

  # app "HelixMFA.app"
  # binary "#{appdir}/HelixMFA.app/Contents/MacOS/HelixMFA", target: "helixmfa"
end
