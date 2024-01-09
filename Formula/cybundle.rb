# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-056.tar.gz"
  sha256 "545624457b9a036895e6fb658a75e4858e77662aae3c6dfd5f24f070b75669d1"
  license "MIT"

  depends_on "nushell"

  def install
    bin.install 'cybundle'
  end

  test do
    system "false"
  end
end
