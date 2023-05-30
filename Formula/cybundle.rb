# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-021.tar.gz"
  sha256 "57632da50f6629424fcd21b0811d20f34b11195963b6db962c6f79d386d49897"
  license "MIT"

  depends_on "nushell" 
  depends_on "cyber" 
  depends_on "pussy" 
  depends_on "curl" 
  depends_on "pueue" 
  depends_on "ipfs"
  depends_on "atuin"
  # depends_on "gum"
  

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
