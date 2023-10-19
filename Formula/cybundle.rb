# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-039.tar.gz"
  sha256 "37629787b754f9055d79ca12dacc95ae06eb357f8c771c38fcee0fa462580c23"
  license "MIT"

  depends_on "nushell" 
  depends_on "cyber" 
  depends_on "pussy" 
  depends_on "curl" 
  # depends_on "pueue" 
  depends_on "ipfs"
  depends_on "rich-cli"
  # depends_on "atuin"
  depends_on "gum"
  

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
