class Yaml2json < Formula
  desc "Converts YAML input to JSON/JSON5 output."
  homepage "https://github.com/prantlf/v-yaml2json"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.1/yaml2json-macos-x64.zip"
      sha256 "d79c27111a516b24b40fc9df90f6a0ba4a5d6fe64a12377a72194e8a49ad17ac"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.1/yaml2json-macos-arm64.zip"
      sha256 "a62e0cee8fba123f5a261ecbc571436a27d0815e689d8924a42e1ec93987a657"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.1/yaml2json-linux-x64.zip"
      sha256 "5606f661f62d99059c5325aa41274ac86ba61bf54eb837a4349e72dffe810d41"
    elsif Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/prantlf/yaml2json/releases/download/v0.3.1/yaml2json-linux-arm64.zip"
      sha256 "6c62c8245b50b74cfbd877e5c0475785a3248bda025d15b60679ccc624187366"
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
