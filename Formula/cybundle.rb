# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-064.tar.gz"
  sha256 "df2c4ee8cb04094f83bb108cca91486136599f4bc8fcab9686523d1916c82e98"
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