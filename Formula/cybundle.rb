# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-061.tar.gz"
  sha256 "f7c6895e0e4b843ed02a02c91ce3d8c5c6034c987fa96dd659dd84fdda9b3d29"
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
