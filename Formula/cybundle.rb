# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-029.tar.gz"
  sha256 "9f71870e95e95e5d70ab0503859c917c9f0696e8e325b8dec2339aad6c45dfd5"
  license "MIT"

  depends_on "nushell" 
  depends_on "cyber" 
  depends_on "pussy" 
  depends_on "curl" 
  depends_on "pueue" 
  depends_on "ipfs"
  # depends_on "atuin"
  depends_on "gum"
  

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
