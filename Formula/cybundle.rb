# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-067.tar.gz"
  sha256 "9e1057b66afebad3013a822bcb634a43b5373ef66bda6ed77301902efadef671"
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