# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-063.tar.gz"
  sha256 "794cabcfe383fb335ac4471bda23ca13fa3a034a2cf577ab0b60ba02c1080daf"
  license "MIT"

  depends_on "nushell"
  depends_on "rustup"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end