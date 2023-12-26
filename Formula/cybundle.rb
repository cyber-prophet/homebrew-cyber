# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-049.tar.gz"
  sha256 "de4e6317910ae43b93097a844d9ea516a08784f668157382767e1b2d2719d0d4"
  license "MIT"

  depends_on "nushell"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
