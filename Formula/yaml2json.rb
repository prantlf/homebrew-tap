class Yaml2json < Formula
  desc "Converts YAML input to JSON/JSON5 output."
  homepage "https://github.com/prantlf/v-yaml2json"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.2/yaml2json-macos-x64.zip"
      sha256 "bd97bb0aca0793e66417272e05a0874161efecd74321fbbfd84ed579e1bc441c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.2/yaml2json-macos-arm64.zip"
      sha256 "f6e0d391fca00feaef52c0a75b9b0de66a3fda936610736157f51eb426bb26fd"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.2/yaml2json-linux-x64.zip"
      sha256 "f128ed284efc09f05278a030542d0e083e088f156c7e4af413ada06d323d9716"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.2/yaml2json-linux-arm64.zip"
      sha256 "5f4030824ea4e0ec4df4d5f7d8842e3ec1976210b53196895bb19e776eb64546"
    end
  end

  def install
    bin.install "yaml2json"
    man1.install "man/yaml2json.1"
  end

  test do
    system "#{bin}/yaml2json", "-V"
  end
end
