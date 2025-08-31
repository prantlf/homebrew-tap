class Yaml2json < Formula
  desc "Converts YAML input to JSON/JSON5 output."
  homepage "https://github.com/prantlf/v-yaml2json"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.4.0/yaml2json-macos-x64.zip"
      sha256 "8ff5f66078815acb62443ec0a92443b47f1eba5fb1337763cf6444975c77bc6c"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.4.0/yaml2json-macos-arm64.zip"
      sha256 "f0942546979f077c946b3b2039f055f6df58fcff787d76707035d84d93fd4831"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.4.0/yaml2json-linux-x64.zip"
      sha256 "a1218a5d8d8d1ebe3f4590b7103c2ada534416fd2635b6a75170cc18c243ab2f"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.4.0/yaml2json-linux-arm64.zip"
      sha256 "f29235b239d33b5d82784b82ec89b59f332926b83e6bc6fb1409734a381f2659"
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
