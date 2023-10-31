# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-044.tar.gz"
  sha256 "2331e77845872c3fe007dd3eaef1e2aca05ea53a685d5976a155d6b692b75411"
  license "MIT"

  depends_on "nushell"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
