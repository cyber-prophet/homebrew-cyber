# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-050.tar.gz"
  sha256 "cc45304662d67c65a89811eb3a5e0e6c17569d47dae75919b2a3a1e9244086fb"
  license "MIT"

  depends_on "nushell"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
