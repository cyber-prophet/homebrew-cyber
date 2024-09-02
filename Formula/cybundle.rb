# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-069.tar.gz"
  sha256 "6142ec8bd1e154b6056e15c7bf96313e421bfd5bbdd4f063bdac0958291b2c63"
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