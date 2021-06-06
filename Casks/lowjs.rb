cask "lowjs" do
  version "20210228_3479cc6"
  sha256 "3d8c4aaf45d6d07f6ddec6f5a4a9592a5c3bf476504f52c597b0f54893c88fcb"

  url "https://www.neonious-iot.com/lowjs/downloads/lowjs-darwin-x86_64-#{version}.tar.gz"
  name "low.js"
  desc "Node.js for microcontrollers"
  homepage "https://www.neonious-iot.com/lowjs/"

  livecheck do
    url "https://www.neonious-iot.com/lowjs/downloads.html"
    strategy :page_match do |page|
      page.scan(%r{lowjs-darwin-x86_64-(\d+_\w+)}i).map do |match|
        "#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  binary "lowjs-darwin-x86_64-#{version}/bin/low"
end
