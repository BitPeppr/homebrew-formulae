class Cautom < Formula
  desc "Terminal Game of Life simulator"
  homepage "https://github.com/BitPeppr/Cellular-automaton"
  url "https://github.com/BitPeppr/Cellular-automaton/releases/download/v1.1.0/cautom-1.1.0-macos-arm64.tar.gz"
  sha256 "b6f05b5a3590c5ea3684a478662414f968bd4da7f00539c36ced5e13c2490cc9"
  version "1.0.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"cautom"
  end
end
