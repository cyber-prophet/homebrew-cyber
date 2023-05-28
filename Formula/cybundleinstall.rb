# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cybundleinstall < Formula
  desc "Cy - the hacker's browser of Cyber 🔵 superintelligence blockchains. Nushell based."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundleinstall-013.tar.gz"
  sha256 "e1bcf9aaec26d33657281d0a36843848443d43a7a3924d4ee8ab473b3d52f39a"
  license "MIT"

  depends_on "nushell" 
  depends_on "cyber" 
  depends_on "pussy" 
  depends_on "curl" 
  depends_on "pueue" 
  depends_on "ipfs"
  # depends_on "gum"
  

  def install
    bin.install 'cybundleinstall'
  end

  test do
    system "false"
  end
end
