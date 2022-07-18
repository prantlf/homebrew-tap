cask "helix-mfa" do
  version "2018.3,1707619"
  sha256 "e57629b2b9147478e48944be8c968cac3ecd10bd4828c3ec75a839ac3eb73e28"

  url "https://cdist2.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1013x86_64/HelixMFA.dmg"
  name "Helix MFA Authenticator"
  desc "Provides the MFA login screen for Helix Core clients and plugins - Perforce, for example"
  homepage "https://www.perforce.com/downloads/helix-mfa-authenticator"

  depends_on macos: ">= :el_capitan"

  livecheck do
    url "https://www.perforce.com/support/software-release-index#tab-panel-6258"
    regex(%r{(?:Patch|Release) for[^<]+?Helix MFA Authenticator[^<]+?v?(\d+(?:\.\d+)+)/(\d+)}im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "HelixMFA.app"

  zap trash: [
    "~/Library/Preferences/com.perforce.Helix",
    "~/Library/Preferences/com.perforce.Helix.plist",
    "~/Library/Saved Application State/com.perforce.HelixMFA.savedState"
  ]
end
