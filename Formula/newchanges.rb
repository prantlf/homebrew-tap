class Newchanges < Formula
  desc "Creates or updates the changelog file from commit messages."
  homepage "https://github.com/prantlf/v-newchanges"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/newchanges/releases/download/v0.8.2/newchanges-macos-x64.zip"
      sha256 "3d5c6cb1ab3f3657f191ac89fbf8bd7bf1af634fe49a14276e8b79eccfbd7224"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.8.2/newchanges-macos-arm64.zip"
      sha256 "fb4da73c2a67164e1552fefd9b84bd29d8e750b8ba93fadf52e80e2b7a19ce03"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.8.2/newchanges-linux-x64.zip"
      sha256 "a326ea44f2f1fd27895331cf0f4c1fecc715ab5cd3ff3fd608ee4235afad29ff"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/newchanges/releases/download/v0.8.2/newchanges-linux-arm64.zip"
      sha256 "9402d462d664cf2a2e455e6d906ac23ac057f3d63a8955486c5af0152771d603"
    end
  end

  def install
    bin.install "newchanges"
    man1.install "man/newchanges.1"
  end

  test do
    system "#{bin}/newchanges", "-V"
  end
end
