# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cyber < Formula
  desc "cyber cli (for managing Bostrom consesnsus computer)"
  homepage "https://github.com/cyber-prophet/go-cyber-brew"
  url "https://github.com/cyber-prophet/go-cyber-brew/archive/refs/tags/v0.3.2.0.tar.gz"
  sha256 "e3699d73089cc83e27ac510d9164b4f6edd3549cdcc424052d72d2a2629ef433"
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
    bin_path = buildpath/"src/github.com/cyber-prophet/cyber"
    bin_path.install Dir["*"]

    cd bin_path do
      if OS.linux?
        system "make", "build-linux", "BUILDDIR=#{bin}/cyber"
      else
        system "make", "build", "BUILDDIR=#{bin}/cyber"
      end
    end
  end

  test do
    # assert_match "exist: true", shell_output("#{bin}/cyber query rank is-exist-any QmRX8qYgeZoYM3M5zzQaWEpVFdpin6FvVXvp6RPQK3oufV QmXFUupJCSfydJZ85HQHD8tU1L7CZFErbRdMTBxkAmBJaD")
  end
end
