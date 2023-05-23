# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pussy < Formula
  desc "pussy cli (for managing space-pussy consesnsus computer)"
  homepage "https://github.com/cyber-prophet/space-pussy-brew"
  url "https://github.com/cyber-prophet/space-pussy-brew/archive/refs/tags/v0.3.1.0.tar.gz"
  sha256 "e3f7b4caa29e15f9a43e4d3e81184cda33cc6753c9ad800ee7c918ac05eeb2f6"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GOMODCACHE"] = pkgetc

    # Had an error on linux. Got the solution here:
    # https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/ethereum.rb
    # https://github.com/Homebrew/brew/issues/14763
    ENV.O0 if OS.linux?
    
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    
    cd bin_path do
      system "make", "build", "BUILDDIR=#{bin}/pussy"
    end
  end

  test do
    # assert_match "exist: true", shell_output("#{bin}/cyber query rank is-exist-any QmRX8qYgeZoYM3M5zzQaWEpVFdpin6FvVXvp6RPQK3oufV QmXFUupJCSfydJZ85HQHD8tU1L7CZFErbRdMTBxkAmBJaD")
  end
end
