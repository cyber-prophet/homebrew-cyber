# This bundle is an opinionated set of apps and their configurations that are needed for comfortable functioning of CY. From Cyber-prophet with love.

class Cybundle < Formula
  desc "cy - access Cybergraph🔵 from Nushell. Query and manage the Bostrom Consensus computer. Your decentralized superintelligence."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundle-066.tar.gz"
  sha256 "212f78157c193f05451b63eb52ed0bde12b18609cd9375d5a914d488f4dae765"
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