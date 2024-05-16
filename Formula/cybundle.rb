# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-060.tar.gz"
  sha256 "f66af361aa0b7ebb3bb660c9ede140c4601c0987fb10a6ebd5dad6156ae9904e"
  license "MIT"

  depends_on "nushell"
  depends_on "rustup-init"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
