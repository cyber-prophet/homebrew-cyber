# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-059.tar.gz"
  sha256 "1aa51e588d07cfc9d90c2ffad165e6a823f0ed4c1edeb619372651c53e4145ca"
  license "MIT"

  depends_on "nushell"
  depends_on "rust-init"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
