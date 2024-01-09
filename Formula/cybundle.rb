# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-052.tar.gz"
  sha256 "8516f41e63efa2d68badbe50b9b685e05554a72325f303372e38acb9686c2607"
  license "MIT"

  depends_on "nushell"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
