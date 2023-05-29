# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.


class Cybundle < Formula
  desc "cy - access Cybergraph from Nushell to query and manage the Bostrom Consensus computer. Your superintelligence (in it's infancy)🔵, open-sourced and decentralized."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-016.tar.gz"
  sha256 "54526c60711b934d1569c6b03e5905569e43b6499ca9df72c6f9f52c3a783d19"
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
